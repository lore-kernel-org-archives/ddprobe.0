Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D4D2BE621
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782956314; cv=none; b=ngGmF+Tcq/UBWT4vjnNs4HjF/YC0wanDaBaplDmT4xyKkwtxR9FhikHpaoUAlzal10ioK/5WxZeO2+g77DNbHullOizB7/Ay/FEcW1TLcK0BosX/PZQBdIx4h0fDlWTiifOj6ru1GunHewHtZNu4vAMWveITqOzNLuS0f/BVT0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782956314; c=relaxed/simple;
	bh=dKXWc/HjH18Ao/ACaHFc1ksdgfZeNIokYUvpWGgtDEw=;
	h=To:Subject:From:Message-Id:Date; b=aRTdl3OxIcDI67D7e560kU6SplxApJ/+lRe+OHw/CXOebZBCoEG/SgMn+7/DfqOl0ny66CanYMFNphP7LWnCLh/PLzS3P1dhv8JAQP9Y3ofJtSeKXMnS5MzSIOHAlMdXjgvcu9tFa9UfHzQyuknrFeBeTCpYFD+BGuif2trJ23g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktA7rJCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktA7rJCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D282DC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782956313;
	bh=dKXWc/HjH18Ao/ACaHFc1ksdgfZeNIokYUvpWGgtDEw=;
	h=To:Subject:From:Date:From;
	b=ktA7rJCMH0F1DsKMWmiElkk473rdVXz20iPPuoEy526xz7ajemV4U0N18q96+IvTB
	 Rss5SFNZL8q0B4JrSl8Aho3zrFl5eDpdBDKoIdqXnRUAUYMI4q+bJ9Mv+Ac08MOuJK
	 X8jnQbtH7bVqWrO7opaq2fLL5860ip/HUKvq+FG0BJ086vG//Fy0vq5FxxB2Q8lpZ4
	 EdYm/8jhvBF9PWMyupV9J6SHvgyA3tRaH0/Pm8BG6vt09nLFRCYE3Kl5xLn4+HOiBO
	 O8Mv9ZBJMKldl6qC6mXNa2QCB+nfeU07LfD3PKVauDkbQn4aF0GMoNLXu8FRq/iLDl
	 ACCtWihwdTUcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD796C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295631369.17033.8801226644723560130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b1547f182d5ebff4f441926293dd39f39aa93d0a1d9d0674b0772a5843dfef
Date: Thu, 02 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782956313
