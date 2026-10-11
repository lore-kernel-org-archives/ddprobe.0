Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559B2390998
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791740434; cv=none; b=jahnCEOg0wY9NlssKkyXl8lwdQXcp3FXe30KzG8cCIXyRgjw3DO7GKRYhmXjuckr06aOjtq6L7Aa1R8k7gZHNjbOk26YwqAVnJxEfgadGsdwdexG7sYXM4Ft79SisCeSxb/dBTxkrO7WCEeuRtqA6J4QoGOLIdfQToBg8Szr5JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791740434; c=relaxed/simple;
	bh=J68Vnl8Q7ObLzOCCxNBnkma4poTAVtnr2Uby+X7NWxo=;
	h=To:Subject:From:Message-Id:Date; b=rdW2uu1uyvQvlXzLhjX7/H+qqR57vXLyxjpyIW5R75oksK7ljJwX3kRiNvlkk6gCrt9vC3T5JRCxtB55I4pFWnU9DkYtstNT485nx/gRr5VBSfHYG1f3aQ7fEhBooQu6dlN/yZ4Hbd/jOGb5vrrv5VDko10dNixWMVNGffJhGUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IloTA9CX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IloTA9CX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA58C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791740433;
	bh=J68Vnl8Q7ObLzOCCxNBnkma4poTAVtnr2Uby+X7NWxo=;
	h=To:Subject:From:Date:From;
	b=IloTA9CXBoNPWq+7B4ykrCMjR0M9k40dyZc4wzFO9gWxMSBcjI33ADAZhJ+FyYeu9
	 QdQIPVlT/FgHSFu/rOxpi1EBNkDLFdobxj73A0HSsjOHCWQwv3a/rHRX3zA561F9UR
	 fXa2Wju4ez/c4VLP+b6JnLf2BRef7BUp1JYdJiOH6PPYVVK1zytHgz4QpiTdc2uaGI
	 tYFBszoR5wYzc3jdMOThTOPSKT5ffkgEjaer0X90nuiAhL9tKEJUmKVEED/T0THnjK
	 5sW7noomhjUW2g7y/C6lEfTaF+UysFgtsiWLMh4yY5tQsC1xbXloxMErXDJOHMMg0V
	 xBKGPqox7ENmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACECECA9ED1
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179174043369.9166.17230615182214167322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1b8620be5caf5b3bc1c7663d2558c285e9a63a20d6c825f5e5ffa27753a592
Date: Sun, 11 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791740433
