Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9AE28E0F
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757047194; cv=none; b=jlXPOQ5TMamfcAWndlJbDv0xoYw3TWhCHlqxIXf13R0oiYBIO4BHY5cFB+KKfVLIi2N2hspgWfN9Y5thPKMK1b12yIG354n9vSK+OnMeezLYtzwyzmX3jicJB6o3Y24FuBs9yCy2gzXsmxChGYpPs98KpBL8O/pcf5j7h3Bz0Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757047194; c=relaxed/simple;
	bh=FthaMFIWl+0ZBZqlWzHdDZYJ1h74n7lgPkPORRMNDq4=;
	h=To:Subject:From:Message-Id:Date; b=TdsaxDfEhNYbbM9x3WvARyWNF6M3K9YMeUYXQIAgRhgT9P3/FW8LYJ0Mxj7v794cHZ+OikhP1vZCl9stZVXT6EjSV0yKUN74JF23c30haTzLUM0nZyEJMszC0pNxKfiYdTFflPITQIhj09msz9BaMIX2gweeAGR8V+kP5CU6nLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqbd0xAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqbd0xAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D6CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757047193;
	bh=FthaMFIWl+0ZBZqlWzHdDZYJ1h74n7lgPkPORRMNDq4=;
	h=To:Subject:From:Date:From;
	b=cqbd0xAi4VIwSudsJrCu6FcfyEq7xnOMksboyuPgbE9/Te3zSUd8rYXEpBNbIsfS2
	 WaxTKK9HvYUIpaCjXoQrPEQ0myoNnIzWPOsFYv43CDo3kdpLWkv4CKGLdneRVU5ip3
	 OSZJhK/C722HEoS20ceNncDpwtPVHivO3mbOnrPvQzBC1RnzKUBTslimjoDAFlBJfY
	 KGytrAxPljx178cEd83WHRSp3FZxXXSPdEYBB+U6sRZBOH/7SAtlk/AaYW5zqIFLPb
	 +7+dMMYXJwny2nya8A45T5n/CXt3DwWIAGQDSXHFeHDuTnCZkYZMFUakYJeXjd+NtZ
	 maE5Ae0lsiUbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944B8CA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175704719358.14554.12688882939224723203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 327e4c25e3924ec31a0172fdc4d04ce2c81383b3b53cfa4801937246fbe94958
Date: Fri, 05 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757047193
