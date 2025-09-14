Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375E42DC776
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757821794; cv=none; b=JcQVD4cIkIra/b5AjH5O2jczSjRadaF30HyXxxR20Hrh7OTzfmdw8eKU45ZIQHaicYXKMJkAMTrGGoxZU70AHsuJB2YT5L5iNGCvBlliQwBLZMMny0NWZ3XnzZfKjCRErEspWdP3QKSf2Uzzdt6ra8IdMB85n9qSACZmSfS91jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757821794; c=relaxed/simple;
	bh=nG2jAiuMdVC1OnWabjIargzZpCN7ZGs9CLOnlnJw29k=;
	h=To:Subject:From:Message-Id:Date; b=itGa/Eixis2o7CRvtazcLIAYaGeXj3oEdv4EogK8X6yJdgkpuKOjUL7ItLWRIefHCrS0Jnu83yB8FEoawCvJAk+I2rX/JQPSthpkV3z/V74abi0Puf8P9s5TWJ45CHlWkboPxux5/Dg26fYk800jPBTtbSivSYTgTuH1+K3dq0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaBqL1Af; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaBqL1Af"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74D0C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757821793;
	bh=nG2jAiuMdVC1OnWabjIargzZpCN7ZGs9CLOnlnJw29k=;
	h=To:Subject:From:Date:From;
	b=VaBqL1Afsk5uKFecIGI8X/acrMdYw6ofOZ8FIerz86eEl5f+x3xm6rS0BZshHsJNd
	 efUIk9vnDhg6GCWHML6LljjIhSzb6UzokW+DuqxI4phkh6mC2R3DryGIuaj9aGA7G9
	 AZq4m8duip+rzbnIghd7R9anPExYBolHcE/7PlaoulJDy5dJ4rfr9o9xm+OGIlX0kR
	 jA3nGDfzN47wv4yJeOkC2iPUvB7RyTvT9J3AoJso4ZyIFJt9Vqeqk5WPE/A+Ll3OsZ
	 k77Yc215RJQ4+Y7lT2tFlN0jY3DRuF8P6wT1HwSwO5TWed2Or6ECUkzFDE6w9cSigA
	 QXNGw3hVEhQyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CA0CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175782179357.4179.3128172554234700432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abe5228658f2ac362e521324c95a743ae83c0b1a307444beb1a266ed3ee8ada
Date: Sun, 14 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757821793
