Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC7D25572
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705526897; cv=none; b=C93Fn9vkgtICzsRJyoqr4TMQmzByGXequWPA5fTgI1OQzdxlTP317Ee0w4g29Mx3fLyJaRTcK/x5jD8oGoMWYyQ7/c3SSiLsj7sFUOcpb0sgmygebJjNVETII1RtlMC3aHQPN3LtZy/MdPiST92kVylp72YYcKYKLCty0I0Tixo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705526897; c=relaxed/simple;
	bh=yqXDKqKOwwBcWvkDm+lGFs888Zv9EZT/es4To4tbyWQ=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=GORwpnz5hRzfaQ2ThtEMDFua+Ojzjn+wsMrRITZFmGGQT7D9yNBRe9m+Cm183VziE1zGyN01G0NiRHx2S54dOjDTLfszcy0o/yeqJzqagIkXsBxrQZoFf03X9CzVa1RT0w7enC7xgqJEPjgvuWGE/Rb/2lqNwcoGct2A7HCym/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZKULRTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZKULRTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B77DC433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705526896;
	bh=yqXDKqKOwwBcWvkDm+lGFs888Zv9EZT/es4To4tbyWQ=;
	h=To:Subject:From:Date:From;
	b=jZKULRTicw49iDuQ0nLHnqYWP7PZ6mxDJTCwTKU0EVbKXKaPn2gr2urPpFu9rWDER
	 Lf6hkI8ere0rhiQjH7As0zRIDSPt40n9VRArLWfqPeLGwtABnMUNxl+7XSoFYXuogA
	 YfZphZ6Pzojtb6PD/HvOZIKcA8+vmcCkYwCsEtiY0KeGF+nqT/yqtgYtHhmibL4YhS
	 4woTnvwnJGIrbNfzCvVt3aLVzerGM5p0nbZB3kfk5hAgjb7aM4X6hDkezYxdAuptN6
	 FeKL7qHqgWaK1TfY2Ms0l5mpbTamTyHRqw+TJbSwTub0IB89mjHJs731nZ87ZJP3dh
	 PuOWW7Dj5wfQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6162AC47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170552689637.14734.7088633555359060235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27f18aea19078da84dad44800d8dee80110cd0a4522d925909de50cf25e9669c
Date: Wed, 17 Jan 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705526896
