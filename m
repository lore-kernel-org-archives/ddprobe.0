Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622F282497
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 05:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714107743; cv=none; b=J1Wzl5nph/rSdMO4WqMgBraM/HS7NGpE83BaRwxtqOmp8P+V9C7HwTXYcZNLKI81k6Ir78Dkzc47smzPB0MLUOc36hEmkq6E8g12OXvC2+1DfPDP0wElyTKLcygS0FcFPGmLVrP+jhEhZ86rR4NMIVr5NPMnytTju33984e0r7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714107743; c=relaxed/simple;
	bh=iYRdBcQEYceBdRm0KsSXDEddZld7kjVx7mHRS0X1Joo=;
	h=To:Subject:From:Message-Id:Date; b=eyYpP61WQzH0WbIXIr+242IbBhMJZbGtYfb/WVRX0cRGWoVAVtqb4X7ZfAn1eXL2yniyKcG5H5wlu4Fd9jKcSpgZhtrve8WZGvS+ewRaq9Ky9S645Uyks59FSXYo1giHv5bZ/LM0PO/v1GHSuF9sIIwxpAv3W42r1LjpPVN9EHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmDbpLAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmDbpLAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF65AC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 05:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714107742;
	bh=iYRdBcQEYceBdRm0KsSXDEddZld7kjVx7mHRS0X1Joo=;
	h=To:Subject:From:Date:From;
	b=FmDbpLAUHxklOXwP0VFZW/JR73wBU7qvuqAlKviLSDHCY9FFpoQxmkFshVnNtdhnX
	 zftB5KKYA/vFqJb7Sqjld6fJRZtd1fHKAmNxEwAzU7c3EW+zFK4K0SrjBoXf1ZNpCp
	 TJvKu2Jc9j2CdRji3oq75Ie6VrbwPx8B1ILlQCpUb4XuC7sSPkVkFm1p7+bMhtKCXV
	 m1JyFsAN+zpbsegPOa7pe6rwMAc0Uws78JLUQ0rVUQ9M0yUcq87dxCeDulm7gMSJ0x
	 cPV/Gx0fMB0uuPFErXeCQHiPznOY0Jn/743J2GVxiXGEtSykklU8Lcs3kUJTg3PD1e
	 9XH4ngJichmwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCFBCC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 05:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171410774279.7732.17033583363007340807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b321f22ed9a98c3de600bbb9956882703f018a18b32f5704a3035e4369594b9f
Date: Fri, 26 Apr 2024 05:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714107742
