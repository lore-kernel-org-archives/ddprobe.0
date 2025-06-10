Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F90B2BD5B0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749565794; cv=none; b=hfZGFkvHeggVl2QecJ0Kg6yMw+fbLNCxm4SlU4s0byVdNNn/Q/Xfkmzj1459VguHJS/3vaMGhxjZy31LjWoaQ9oLVp5f+EHZHqo09sWjbQpqV9cmg2vIYOdfGk9WTG2b0GVvjn7LU5beX50VWyhi7NZN6trhh2iCxdMgQJqDVRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749565794; c=relaxed/simple;
	bh=6sMxFuE6AexpoHWYgSPbZ/OCsPGdHUatm44G3Ak70hw=;
	h=To:Subject:From:Message-Id:Date; b=dsRlAiVblGb3YyqDvjbiC0PN6niKT/lGpbXyfkKd6vGS6xOc2S8ZyPcqYbUbAE/UtHklcSqtu95i0jWK/a4lOgiM9EcsTU4ajcbPSnTW8R7k3/z9PJZDFv1mEEdRD6WyjogjPulQCVIeT1fYv6dICdBff44wbpwynqhqgkFFqN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efQbQEZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efQbQEZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9655C4CEF2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749565793;
	bh=6sMxFuE6AexpoHWYgSPbZ/OCsPGdHUatm44G3Ak70hw=;
	h=To:Subject:From:Date:From;
	b=efQbQEZrfo0Gv0IuSc6KP7i6a79M0TBZ6/X4olcLsjVABsebiXdN0wxK51yC/4bjz
	 CAN5yYU3cyZ1qxq2/5IYpbijofqJGNfRiiy5Be7JHTxDz6Z5igPodNUInaAf1/SGU8
	 LWwvU0ERmctHrK0EfIy26GG8/w5Obyb8GBDGUStltyMpPJv0fKLdXBGDp+Rr4GT3tc
	 CtMhkMlhuSzMzrKw3606moF6nJS/WCGHMAy5xilykpdqdhg/NC/7Jt9fLAuEr12jF5
	 4lga6IhSf+uiLccsEG09Fz8XXgk5bRKTC99VCBH1VpFAYRX2OEHSMYVm+jHwxWsKPt
	 G6V4jxQpg3BtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D3DC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956579357.21876.3403250729514560773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49c0e3ac70ed943edceae83788e340fa5d68c9222b469a24427c82fe4fcb2dd
Date: Tue, 10 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749565793
