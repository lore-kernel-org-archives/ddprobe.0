Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2421018732A
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734033954; cv=none; b=mRbSV11gxDAGjJwA5ZmzSf2qpEjPhYT5bWnURV4CtZfs7WbtfPZ8s7A/oUehPGdlS8RbZDGTUTtDBqbEgFkeVjkNgOXuUyeGfWtC/GAT2SOrb+fK877fAJSgpcRtM7OAakYwYeOvjuzgMEhYdRw66lkd04bfNDOQ/38jryoe8aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734033954; c=relaxed/simple;
	bh=0D7wHhA6DC/UY2SkU68mqw1wF4SVfVN+enoqWtOzr6I=;
	h=To:Subject:From:Message-Id:Date; b=aJi2X9/tu5FtPdLDzuLqIZy0Mfr2fASXStAHs4m4qZ3sg1Ri5cfMW+pWseXeg5jBlSI1vdVj4VquU1aDOleZoCqJL3Pt81OFH0E9VNnPbJz2k5Iam8gpa680mjE9GdbmNmqk3+Kg3wejzEqEjwPtlcK2Pt1ZY4P0aoP+4uGBLiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAlbMe5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAlbMe5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD42FC4CED0
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734033953;
	bh=0D7wHhA6DC/UY2SkU68mqw1wF4SVfVN+enoqWtOzr6I=;
	h=To:Subject:From:Date:From;
	b=DAlbMe5S4TB54mrzza42IXp6JAm1CJoaxhV+Gbx3SPWnayvMdQKNKhScW8jI8K3A2
	 kykbyXOsBGCf4LCk0273De14zz9+v2qMlRPO/gy1zbUUTuZhDdntF0l/0Ut29GLuhm
	 abFR2T+Q9+Dg20ssmDNBnVLMAvQUMh84SQ1c4igjsbseDZ6UHfvKfrd13QYpqLzo84
	 Q53jnfRSwn8ILMEClCeFeWee31eGeVcdyZHO1+eA1m6Zz3D2IPgl9PpI28PtGs+Iid
	 B0FEP5/80gaMtKiV5wkF6iHQ5UUdWvuQUZCJ9O4+kclHFCJH9IDeEq+G2vZ5vZFR/6
	 BkYK3D8zsLvBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960E7E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173403395360.8391.8919417867363336060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2abe15f2bc32936f9bbce9d532511b68622f877ac1253046ad33b95da99a1ec1
Date: Thu, 12 Dec 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734033953
