Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285DD273D8F
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760185194; cv=none; b=IxhwVPQt7479fbn2EnbB2nM8ar/Pzk37WTdBpvEeHqMH/C9l3S/xX2QCyccDpiIZH9gzJ05YmMgG+8pZ3O9H4gNOgJoyasWOxXo7T2JV6k0DAJ7F/WXZlItQCxUYrrxDp03jDK927DOD63zJjKDtfPiorz0UxvcOXrDxGbXsuB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760185194; c=relaxed/simple;
	bh=QrnLoFG8T2dLhaE2NZtIbKt8HH7bFVmm+3es62R/iJI=;
	h=To:Subject:From:Message-Id:Date; b=sfgl+r219g9V+d8qceSNZIulpkgwsACK2+qbf1q+Rx36boVhREI9PYZws3HGFKN2W/Ik9j6M78nIvZe26CPm+fwv8m25GXQNu6NNfirA6xBKT2X7G2qIeaWa6Z3Rft9TQdHganW9qz4nTs9x1/pQ0+E1Q/VmypWMaqjorHaFt6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnNzMK9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnNzMK9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69A2C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760185193;
	bh=QrnLoFG8T2dLhaE2NZtIbKt8HH7bFVmm+3es62R/iJI=;
	h=To:Subject:From:Date:From;
	b=tnNzMK9cx0L0znCV44z3UKGGQ4NS/KT4PQuQDQZ9dOEk3H/7H/mPQ9SdfuU77muNo
	 KeR3E1rDpew+2fJ4Ons+UShKJjEPVR3RExiVM2KRyuMmed2gyr/fyJBRxgaV3mdtZg
	 iypx2joU3erpVgS9cbyQHEOA0Tge0H8kDmyGTThTsxab/sGLjHM60Tm5d0RwRizTNG
	 dGO1eSQM8v9u6hE1q/4paH55+l+evpoS0fMtk4NSkeYm6EenFzqAgoanLwmon0r4IA
	 MpfsXAYMdl/GXad9s8KrvKqGZEhfJce+JCuz4cYd0hA55w4zqmGO6R/bcR2w04zZig
	 r6X05hnU1syaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C01CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018519357.19500.10400397129511811515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e679f47e245d049fdad1fdd23a99c5915238c3b6cf9038bf7533db74e92d80
Date: Sat, 11 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760185193
