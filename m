Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D659348896
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779007234; cv=none; b=tTUE8nigC35tPZU5GN7Otk2I5zSyajIvi3aq++zVIncDXnbnv/oNxQzKedejh2CEXPn23WrsqwEokbvj/OR7Lx4bffCxRLi/S0pZDqOOTMIfQzwhycxkaLlgpbUtjvCFbbXX9nlU0vV4U9tXp12Fn/kFR/2pCvwChoSrwSsp5Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779007234; c=relaxed/simple;
	bh=h6jBjbuCxuBD9RVMgGD+GDgtWLahOZiU4+sNfswMsXM=;
	h=To:Subject:From:Message-Id:Date; b=U6I9SRsgLO3vO2FFwkgaw+qlOURRLR1sF6ljZjBPftL9Q6TMXIb7GGbXoNU+TmQ36Tz79D0CRw4m19R2fdE79yaYQcey+cO8ci4edl/HbQXqCExwF/gLixFtVwcfbgMrCOXZQhyVCaoS0dh9AKmBf9N4aJwxx4S+MGIvRiKRt5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6tSL8AG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6tSL8AG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C539AC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779007233;
	bh=h6jBjbuCxuBD9RVMgGD+GDgtWLahOZiU4+sNfswMsXM=;
	h=To:Subject:From:Date:From;
	b=r6tSL8AGo7XyNVYdHaK4dLaG+hE8SMzoeTF2IeIpNbypNkp6P/wKkJfXj/cXCLkGE
	 s0iQrYNez5hvK8fc3swfMJYCeyi+QOhtemVIGvFRTzUTuCjprQnH2I/TprLVWzwmN6
	 C4cqMD8/X2H4su3i3vKsHQwo5r1kePuJu2vcoswsLX/9N0wiap3p3Oc+ehN9282lRq
	 3CtJpx4OY/Sawa5DWJAGhsh+pkYSTcExiXscFrWQU9v4j8L4qGUu9OK+FA3w2u2IMu
	 66ubGKXTyxQbYJFIGjAm/lvvpJnep7npKm1n27w+XtITftAqa3g6/6HnxVW/Nx8QZt
	 JapnIBvBb2HLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BA5CD4F25
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900723368.4479.11374201155555484522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 731506b55b179e056f8ef06be856a490a5afc102a21ba63c685c3f4942fd264e
Date: Sun, 17 May 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779007233
