Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2182F52F74
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722676554; cv=none; b=i6Y8VXrzX68hHUBRBY0OWyBSWm4HC5qznWNusYi1YdlHTzuEUgLbM4CgD2ASuNAFVzxKO99i8mREiWM0GUoDRs3FC6yinXNiD/zysKQRBaYYdJY7CVNVYt8sjXVPNgBPdeGOkQLn2FmdUC+p+gcmr4LWcyr0eYriZ0/UcnC1VSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722676554; c=relaxed/simple;
	bh=JMFFMO65E7SYFkm1uO5jIGFJ9xMy/pz45l0+O0/EGHw=;
	h=To:Subject:From:Message-Id:Date; b=Oegu154Hg7SrYHds7JEbeDI9q0K7xLSfuBcVuXSU1uUXzh7loErtZaQ9mieUnq0NEHMJgyTeeWctGHD+lbGuK6h0VVWKethvthOtH43zy52LbaKQveEmyFwf/180K9zqMm3JQHVP2cky6mIQb6TV5EGlgJmP8mIQ5JwALHFoPqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReaSlRi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReaSlRi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC814C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722676553;
	bh=JMFFMO65E7SYFkm1uO5jIGFJ9xMy/pz45l0+O0/EGHw=;
	h=To:Subject:From:Date:From;
	b=ReaSlRi0peV73DbiYVnoU4jw79jT8TMzBVM7sRoB4FHW9l03EdmCQVBHLUNn9rhLy
	 uglTFaiSit36VRnSfHUbNqQpLMl56GZXLWPNMyjJzGav7rEXhKf9+oezUJAdWr9evZ
	 +YLN60YxlbdjW/vUo0barzbPqvA95uiPJde5Wp9euy215LAADegF4ElZSqgU/kZcPA
	 l+f7TmA59zvpA/wqcOxl9Z5jcODJuO2T2q0+HK4J5hmflU6AHPGCH/LneEKYMdBnjj
	 DUycS6lXz9IXVS3g/ZqgT5xkDSIuX6U5X1NtpFWtgg/rZ/oRyrdTxMNJducUU91go0
	 iUtSCl2FSFadA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E71C52D6D
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172267655358.30593.15646486876889728011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0575f14f9df47ba9d7d0a875ea617710152458d7400f74a24cf66ebed7524097
Date: Sat, 03 Aug 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722676553
