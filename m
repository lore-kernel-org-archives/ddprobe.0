Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600202F851
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784492914; cv=none; b=dnUPYbQN6/2VF0KvFRB92rdspM9ioe3uflqhOYptB0w0YyuhbT1iLhYtr6OKs5rdFLdjfTCr/oikywhEzdGdhJrHLtZ/QmEFgbo9qRVdAoiQHwyc8vrF7VSCftlYh9nVPGTzdVLyf/xphWtFG7ODfvJkiZ1ZIa1s7wZvf2Gfn0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784492914; c=relaxed/simple;
	bh=nWO42jfiKe6ULOYoieSULIvo8+t+QV72a9llAls26zI=;
	h=To:Subject:From:Message-Id:Date; b=lTm+OvsimdRYbJExwHRuNfKhXnMFV5zapiEU2oD7MlfQ/QSawNwAAg9J3ZrzzBgX03+4ex9TNXKK3g3wUZgh4iHGQU5+o1CNyeF96TCah01xqGxFln01UoB+Km/YWLUgFDnYla0ODfIOPBKASUQwCWkdQ4/TLeG+9pTpaUAkl98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/D1WrPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/D1WrPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBC2C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784492913;
	bh=nWO42jfiKe6ULOYoieSULIvo8+t+QV72a9llAls26zI=;
	h=To:Subject:From:Date:From;
	b=W/D1WrPuCBwUeLrk2Qv1fZRPzqLBXoyI9rPGOzrAG4CvMYAVaanlZL9dTwMh+d8C7
	 Z6gliJCqVjEAaQapF2XNXBDHo47JHl/VQv/ifX0FOmKiw+I/0UcCzH5L6s4KKFnNWC
	 w0/8xp2eUM/ypCPAzqOLdDXWay6GrwiRdRXetsD/SkV0c34cmM6FyNBSXJ5gCWBd5D
	 C6v5+KbEYxAgKSaon3fXWTTir+oRG4Kfapkv5nANgVI7hUJhdhIscHmiO1ukGfYUfH
	 tO398ypay+g4mve1/R+69DRuroDJEyU/8i9jg6l0Omcccjnn/2Gbdf6UnFvBUjsjKa
	 fWtGv7ahfwE8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B588CC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178449291371.25136.7538769765926201882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd4b99ed06f877d32ff4d2236af8f45cd7b577770d3df181661a267a0a1092d
Date: Sun, 19 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784492913
