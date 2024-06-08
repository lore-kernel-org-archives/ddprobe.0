Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB622E84A
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 23:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717891043; cv=none; b=UlC6+C+5mK2T/AJ9uH5YLRBua2P4jApXFDb2KVM/uAQMfy2Q0qsjezclArgMzGDLBl6lo/jg9NfBxSC9ZqYNIYLA2PGTvjNDvH82QjnxKfzK1sgxBJVtFKaiZ4m8yy2Ph4niPJQmGsrgVudt/UmXCIKTTx16SuOpMQgr7pyzLx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717891043; c=relaxed/simple;
	bh=Y+sWPL+Gcwh3fmpEK3PwxlDQvaDE9A/O8NTvQnJ73v8=;
	h=To:Subject:From:Message-Id:Date; b=YgXVXHQPHAxUixqsASJVDmJpjWSyeCCRMTI7lxFclHS+26vvj5bl+DZ+uahXoKcHoDKliNlos/qTjAO92pFPN7Qw5mxq7gov8K2FGm+hIvLa7WXifhaAwn+j8C54Scu9+hHPY9md3X1my6zDt9a1ocJ35JKdDvD4Omw74BVG/C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWjfquIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWjfquIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00A0C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 23:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717891042;
	bh=Y+sWPL+Gcwh3fmpEK3PwxlDQvaDE9A/O8NTvQnJ73v8=;
	h=To:Subject:From:Date:From;
	b=CWjfquIn/ZMmbPNqYS8u0Rkk/6DfHzqDVpEQwolXlMOKEIMSbI4lsVT/OIBkzxW4F
	 FdvDtWWOifPYXEKZWQ2kUNVES5hAlRB0pvhLcrnjDkvaeDsHpgdyzLjc/xrofiv7vM
	 q4wxnsLhHrotwQoOZUm+a2Mju1pyN7P3T3YU/XT91sk6Zuby2EfJxLh0KuYAQKcAM7
	 QLaOuR7Q4RGgGbmpMj7ZehmmBflC+FvUmfI0l0h2dUmeaIltFy+ItFafGaGC5Qougx
	 yXfcl/V770ngeaJqYWCbPCrJv0gSto6Gzr++Z0Ku19VFcZ+7PLPmYBQ0FsEwXxsOfU
	 sCRGa+PbGgkBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA361C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 23:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171789104275.22737.17310673740731865138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bde28287e0915693dd0113fb322afa3986215112c1874097020d66867cd2876
Date: Sat, 08 Jun 2024 23:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717891042
