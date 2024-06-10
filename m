Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F62622EEF
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718044103; cv=none; b=EivPhPl994ChpCmTCtcSttp7omstkhpkTagBPW04vxBxs1s8jrie6S8HqiEOuZgzwFfkOX630tDCmzuJuNL9ZQtJMO0N2SoZX5AHPdSHmyp0URpNjz9ESpnrf9q487iKdsDXelBN6cNGB7r3KPAz7vHMzZC7+3Elt5sfEoXqtcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718044103; c=relaxed/simple;
	bh=KxUv5lgv4BAlLmc+7XfJkZVYR6tS+hQf/+lFmhufHhI=;
	h=To:Subject:From:Message-Id:Date; b=MSfTQ2OXJsCbc9kFybqwzoAMIqZDLDUkT6tMLTTfTrc5IbljPu2YRhe+xkD5La09TKs0t5QkhGzS6DUCKKhdBAJS6Z2v91NQd2YaVzAQMAJEGIeIv6qKlqw0KSZ75In6+3gZRiSE1oUzOn1oDlR1Om3NKxQt3I4XIA14XlWKq+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYUcxM0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYUcxM0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1846C4AF1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718044102;
	bh=KxUv5lgv4BAlLmc+7XfJkZVYR6tS+hQf/+lFmhufHhI=;
	h=To:Subject:From:Date:From;
	b=NYUcxM0wvtgIv2fKK2k4jKYTYqX0ifu8tjklschwccXCtFmzFSd62C8atJqlW5axy
	 MKuxp58Sq0OPC9gIQlLUOSWQT6K6hWN2BYxwlYVf7PD9Xm1fwdz4haVOsTziiFQhrw
	 WQrrrT5c8uiKFMhnHcu1NP6Xt2B+JziR0tXRxFQYTa6Hj0zCUS7XkEkt8JTHzsl1Tw
	 cNi2b//DmpYAvZLEDAUEMmRTj3qdzApZNJHTKEgrDzNhNoPhl1fJRCp+nIMusgUge8
	 rbTytj5C14FBjqrt1Zk/rBXpNu7JhdSl0RgFFuoR5gjppi1yrt+hoGEgeKTLZ9iCdf
	 dBHrHpoBcxffg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCFCC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171804410275.7477.10944527315742045164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1082ebcf55c90a9b0ab16453217a4176cab77f5595d0319d9b8caf19d19b43
Date: Mon, 10 Jun 2024 18:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718044102
