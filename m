Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204E4A41
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766910834; cv=none; b=UU/a6M4ytgK6erP4Ldd1rKjULjgdZprZUcy9j79I/aeEbH4XBwK8qxmEqAveE+Hv3LitJRqnjjNDy5IrEle9Zcrw9+z10g5dz8aUC7cWS/oFs+oODMZDvzcT7yDcVJgU8pGPy/YVk4TTTgHo5aYO9UuRaq8+I3wRJAGBw7YALKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766910834; c=relaxed/simple;
	bh=3nb1JYath7/FgVVSoNG7GBrcg5e3lU3CRLCTKOz4PXg=;
	h=To:Subject:From:Message-Id:Date; b=PsRkHGx4pOWw/jmRmak3JXztNwo8FM8T/dWLLG8uaWVy0CYY9ni+Ek+ZaUbHJUVDy5fLUMHigruHv8eguALTcK7Ft5jZUQ7Wcb2REEoq7gmmklRUZB9HSoZg+FebWRUAmRTY1THboZrVmpMbJ7aqXJyWk1hX2AMr/Wkb9SCFDo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuX2OpN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuX2OpN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF92C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766910833;
	bh=3nb1JYath7/FgVVSoNG7GBrcg5e3lU3CRLCTKOz4PXg=;
	h=To:Subject:From:Date:From;
	b=XuX2OpN5d+uxo1pto1/3v33HjmSVakkGv7LM98PJCURhef4o3weUNrYi56ssXsXYC
	 VXpfVeyQcQ2Et9AOrqVrEOauMRTj1U+SSm5Dt8kI3fVZI1cnActqyuluJqD7ZL1tgg
	 QgCLsd9BzyarFWlhVrttBBz21GHGeKZcb6oad1i6IkwOIM1emrvicUERhQOIUM5X2P
	 eqTi1j9/hjIMhgWobjhZ0f1uBvsAwBR+wpSawuY5udeTvfmD+/jkcyXgz6g+Elneia
	 gLE18C9o0NExZJvSbVTQ8h24RrMBqv63kpzQdidlmx3yj0EEGo8HvY5O2WFsJhei5o
	 fjKzuSIlGtyig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994C5E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691083359.17259.5026701709058159321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1472360c4961ae05b25d78293c7a371d909ff8cb2be1cbd393871e056ad1e09
Date: Sun, 28 Dec 2025 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766910833
