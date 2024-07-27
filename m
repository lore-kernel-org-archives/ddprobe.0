Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375065579F
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722098154; cv=none; b=d44SwRTpiCqC0vE75Om5bDk5qmymhHZc5J+wwZ3D+POUvBTyypxIB7pZiczCm6fV0s/mEAThb4tU0ew2vf8T8MMCUTKT2B+RYvPA5SAlxStlYEPssCtTZsCf9YTsaQcPSInjkUFYCAVx2A21CFkqe/oz6m9dAkC/jKRe7YdY0A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722098154; c=relaxed/simple;
	bh=ONBobGkZ/NJy5hEGpPZkDR9TVynUYHNHhqBx2ceGCsw=;
	h=To:Subject:From:Message-Id:Date; b=mThYsen7Rmx7eU1KG6M1TN2KJ5CdPs4SaT9iBRjp+stX3NrAvtKyI6ZS1yBEFiRHerHMNz3yjraRsZ9ZnFcoDR5iI/4sus2lKcqUG5ljYAwjY5I/uXWHThN2P8BZVrFv652G1lQ/Zbksi4IGVFhBf3YQQUReWZM6rQzUbxlnL/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBJcGdxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBJcGdxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4E0C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722098153;
	bh=ONBobGkZ/NJy5hEGpPZkDR9TVynUYHNHhqBx2ceGCsw=;
	h=To:Subject:From:Date:From;
	b=LBJcGdxkD18kPai0yTnlXcsfkfS6DVUEWTYMKP5cldEtY/eLty39gxnhWk91dRzwR
	 yl5ig9dEQG6HFbtZVjgCw7V2/FD4KGUtS6euIUUyWGowEPfdKqiS2SfAowxEhXDOSl
	 03inrelDJAT+5H0JGVSPJnUeHRjbzAEhd6H9D8IcxYx72xxHatBNdMZ3VsUnhLN+Vz
	 jLfygxPn0MOtyED1HsNs8amsLBUV/y9LAzG8FHe9DGD1CpaJikquHrWBNhJSbaOI/+
	 Z6OJ5MofasdPhspAfPHrz/dwDlSakOhSmTS6M4cg4ue6dracKg2knC9TUGG5XVPV/h
	 wQIPFZ29pQLXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DDAC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172209815359.20482.10770883500734938417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362cec683f8276b1184f6a63a194d6388f77b0b532e5616ef8d9343765ffaf88
Date: Sat, 27 Jul 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722098153
