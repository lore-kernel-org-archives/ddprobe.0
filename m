Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D693207
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751803794; cv=none; b=WOnu5ttDGZK4921XJ/m2tP6xUVbWyRzQkpp4VOMByLkTb3PB9O7QhbbyyTeXidbSI5yvEK25utqHEDaZyeW3oMdz6lNjlqONiZu7y/a8YPy2haiztN4yeSpqnFk5XkVv/QPl/v7toUSXbvGULcNyElf5HLdPhlZQ1vFhcWbLxG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751803794; c=relaxed/simple;
	bh=w9eyDPVWruv9Mz5HKbC03lKEndnaA4t0VsVg421qlY0=;
	h=To:Subject:From:Message-Id:Date; b=JULIyQo0dBDCI3bFJVWkASsq/H5v3Ha7+SizpVLH1tbf2UI93m9KGCNw/4BAq4Ydblui8dvqRn+pXlJ61cePF7sdyy8AH/nteyqm62YaNBt0VjtQNd+yTsvoJz9nUvGTsqfen5/VWvtkD2k3h+kwsa6CPfNtNoZShRtHZ5XiTgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeoJPvb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeoJPvb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0039C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751803793;
	bh=w9eyDPVWruv9Mz5HKbC03lKEndnaA4t0VsVg421qlY0=;
	h=To:Subject:From:Date:From;
	b=IeoJPvb6hFMLQYaip8Vofuef6eFiWF1FuKxuo38c/lQRvLR02oHggbQmUVmmY8Sm2
	 h/xvSHk2eGgi9iCMolr9hA+tETgY9eehv5qk9WtIJei+niS2wECiow2uxCmp/rFd2T
	 2djDU7fRQTH6UPcctgxwSK968ktO+OvDvlkFGiBVf/Fo+xZspmb/aWP8aBQKFiUhtA
	 bOmsLeoYyUMIAcCE7+OIHlAXZGpEVhu7AykfEyTCtWbFa3Ylu7b03NftuxWfVZytXP
	 GQQM7ZsLjAO+gZF3wd7jNpgSVckNEGPSUQDtLdnBkqOcTPlb5QSeIZW/lA/JYmjjk5
	 ++GBfaMRa00lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A43C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180379357.19359.15696545707972894616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f524501dc983ca82343e193c580761984b189b9c3e4ee1b5b2f5bfd5c59c18
Date: Sun, 06 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751803793
