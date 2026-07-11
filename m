Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571AE1A683E
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783811914; cv=none; b=Wvf2PUychIbzSEaY4N1kkJsWQ317rRwCmSzdOaZg6ZJp6vygy6bI6feJswC98YCXKQyIIrFaRcbSQpzqHM8S8JBv4f8Ey4r7suMMEXrcr/o0UE99dB3YzRh0M+oViPuL3hpEY93kBfY9oMaHThZ/uniaj5+glxeoF+oR42ALBbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783811914; c=relaxed/simple;
	bh=fj5UPYftbqkh0poySPMrjykiAcby8uhOknf3eM06Mmg=;
	h=To:Subject:From:Message-Id:Date; b=JNFgY9+Z/OWT+WqAttB7LjN4kEQljPtaxuD3mZnHlI4mynZthQpznNckpPhVvjfK+jwHRvFqP0w4YlB/nHXVlPFzrMsDo9+J/vfjUOyiUfdQZjoNMp0f7bi+ZLGdvxP7lm2NFd9IWt4ZTM7tVR+BWF3322Wrz6CtNZjYuHGBpYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpEXi2/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpEXi2/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4480C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783811913;
	bh=fj5UPYftbqkh0poySPMrjykiAcby8uhOknf3eM06Mmg=;
	h=To:Subject:From:Date:From;
	b=YpEXi2/npDINEJZrDU+6IF7kf78S6zNaP9XGhke0Dv40xd0YgJZiv4pz2PdDnBA/D
	 IBTH+7498gRV5+2b1mL5xI7Rd1U3sveuIK0Yc4RjUjkL9cVjslj1XH5QBz/4grdPbf
	 grFFE0ckGXj5fiWyMi/Sx73hpKiHc8AScXFUSldQvddrBwMfrxny/Icvc6sScfpb5e
	 uO9zIEkWHKNUlqH90DJ8YT6q20mALmj6gWAq2r07UEvmxvT8aAb3/PatUTNDgWo43m
	 OTZdU1NYhs7qPyUyq6VRyXJDoS9Ty5OVOCu6ovaBku/hw+k7VyBSjtulpnKXF/Dgzq
	 4WU1YF+zCKT8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC737C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381191367.27422.1984981924196530216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06e786e783877bbf420634c4524654f2207e00f67a3e0458f34fbc4998a9bca
Date: Sat, 11 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783811913
