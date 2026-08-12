Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F6D409121
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786531834; cv=none; b=D4F4ftDN6IJhghesDtUwGvWuFIB2rbucU8nc9g135tLDcU4YpvH7tazl+BF2XWty8jP2ievfGZRfuaKuSfUu81+DedJTL8WKLKV6/85ePFgnmBrL13JAdm3tYFpgkKnHqcsDQg99VthUZkABHqashiIEHOqNE9wo3aavq0+KOEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786531834; c=relaxed/simple;
	bh=rMaIpy7InyiPmvDrd9MqiZ97aFWfFqu0Vdj/cWwSo78=;
	h=To:Subject:From:Message-Id:Date; b=HcAKpQLjwvSzhy8W0JFfyMpf7lT67lAXa1mGXwlrCDXJwB62yZgOAeZhKZViAW4CDIJPfCj71whmt0UsEeYAjtltFjpc90YNADZ/3IbAffC03LsyIfolbb/ekMfMOkVxLXgNIz6BQd/uUT0ukvo9nE5aV3KhmRC5Gc5A3uZ3sXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpBL2tsL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpBL2tsL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9595C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786531833;
	bh=rMaIpy7InyiPmvDrd9MqiZ97aFWfFqu0Vdj/cWwSo78=;
	h=To:Subject:From:Date:From;
	b=XpBL2tsLetSZS9o+lIWMx/OiFmRRL+ede9kq9ptfGbPXwl3KGWDd95YG5LNZEPxbr
	 3cWkRt29a3+KzGCZMKEsBpuxmYHCH0DIZKxqoD0lL8AMC84A/xHZRibYLtWgkZnEHl
	 87kwag/RQlQ7n7ia2r7GPPs73i0UmeQOBkITQ/gX6s4QpHVW7Fu0T35fXoSm73TpuY
	 VAD0RzeGQCCkznCNcX7mZyKcCzODs9s3dYlNrvQ8qJu68DOfIe18e234W7JjNPHvO8
	 U075AbCsHaJT7AI7RnQ072KvNkhF+R16gScx8mEPc1xh+zAtXJWrJRUGdNiGLUQ5ax
	 OLIVaCk556nRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A952EC5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653183368.9431.15981381950264996588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073f184f43b5cf4a0c862d0b057168b5c2d0e48ab6cfe4a0f89fb8f72278392d
Date: Wed, 12 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786531833
