Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAD91BD9D0
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756060794; cv=none; b=bvsnEsZJFpfIsl9dUjJc4KJEm0lkc4GbypcTRnjWHz4Cu29VMPTmr9zTqZhseBQCl4X6TDHVqMykqgjVCOwKYaTgfieyqFzNVCJ5o0tC+lF/t3P7LxmK9oHaIN6eKQshNMiSvhKsK1PmPf3JAVPUPyhn/TGf8TL/HXLQsNIHsWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756060794; c=relaxed/simple;
	bh=s5bTdCdFbSE1ea5w8ljilVEstJ0HFZwLJHS+zA6CXmY=;
	h=To:Subject:From:Message-Id:Date; b=u/yRQKXZCmTY9iQBPDW2o9Vc7YlYmLUrVWCNvkXLNDGymfF3gNWpDzZJS3orqooxDxUclzdn236LFSAokTGJjowlvATLX5el2GMzPxaXmpIsC1VIaDERVzJi8emiqH4Fr10AD7P2pPSSpnOt02C27AU926PwbJmuNparuPPMw6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMhgnubJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMhgnubJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD8AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756060793;
	bh=s5bTdCdFbSE1ea5w8ljilVEstJ0HFZwLJHS+zA6CXmY=;
	h=To:Subject:From:Date:From;
	b=OMhgnubJ24DUPGv+5uk/4pqCE93skkgqrq9e8j3fF5+f+kpcs6nBFUrqxg4IO/kVd
	 ngAgtxj/9ECfDlAyqldz8FWqIgKK45r45ZRkXqsdlIVzS72D4BmsUeGvQ3TydMAomx
	 jHhjNE4m6QTL5kv/022wCqVIJy40Oyx0ubsyeaMyrzYDUupD+n3hCcWuLl1oWMLWaU
	 QbjCvSFwJKNXljTFdx5VbVr1dO3xQFc4dep2hDukCxkvFNWzO50NVh6/Ur3XFnov/s
	 KUzn0Mfwt0pl1aBIlkPbmGh6MJ0YJOHrqWzgJ4j19LH6HD3/CuSDryNIKellPCMZKI
	 MCLSRkyNF2EgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E24CCA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606079357.3713.2501206865931605440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c0eee7c32b48b3e07fd160e90a41d0c73cd432484dc34975b12fc7b4835700
Date: Sun, 24 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756060793
