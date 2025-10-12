Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BF375809
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760276394; cv=none; b=lzk4qCLDd2sVD09YpTIzy9WVQUVAIrxbykCCDh3x+mhl9LIUHqniQdzuNgAjR+lA7VAOwcnnt2NmbrKpn/+ZxntJmq8C2VGPjCgh55R1m3AX90E1PjRA4ttJyvL+E1MPGMEQ3zUT4yZcYqRsZFZukEej4ksMD3Rjzyrb8i5vE7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760276394; c=relaxed/simple;
	bh=LhNKsV5UKqeNhdFq7qqgDmkbT1HFZFhQwd1O/LstC8I=;
	h=To:Subject:From:Message-Id:Date; b=s09SUEzUL/A+ioMoz7IpGSF25JvE6JIWQlSZbyr2FIMKJqorFoTeLKeAf1gBPZIdMBhvvQV407QIu4xUyqZUjie+cnO0dQhkdzfaRvxZg6D2zUIkrGjQQzx+d0N5vsSCsv/cBN5BST1GWujRwQZKYLh/3lqP355q/ouwoatj6wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQCA+G1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQCA+G1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FBAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760276393;
	bh=LhNKsV5UKqeNhdFq7qqgDmkbT1HFZFhQwd1O/LstC8I=;
	h=To:Subject:From:Date:From;
	b=vQCA+G1mOCoUtcBTEtWBJ+9ciEYvuN/wDH5v2QUQqtR1AYrgUdBpPejwRwaosnzfb
	 fCJSp/STt27bG7z6b8E/wcTPoh0QCYr8AXZKoKWj6kVdLOn0gADy3azHjs2Wykwras
	 nyXfDWyZ/niyl/qGyHArtved/XeQvO/rZyQBLAxwsnSkYhopvrKM0umKHetYhBrUEO
	 6ei9nSlEdwd08dzO/4UbuTSn3bH8Ac2zhH/9gqJyi3x8OpAFY9ORCLJ7P9zT/qorOV
	 okGVOIy15aNEIMk4cxI7+A9o83n37MVEpDCXZUMBnELSK0G6p23BNYbnR/DHadLQ84
	 g/7YbLekbbUmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF5CCD18D
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027639358.6441.311178415719244607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a67f13477a18add09e4daa15dcb1643cb3732849f25c316df1033d0ec72a261
Date: Sun, 12 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760276393
