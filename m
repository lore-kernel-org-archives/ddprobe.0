Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352FC1F461A
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748326195; cv=none; b=iob0D+PRDv3PcDtbTgqOITqXb1sO0BIfmIm0GQCr/A1r7l9iOjOx41A4Gcez2kkostnNBaZg7C3i77U9xThuSCGVhbyRDFKxwY2+sVVXYBbB7M8QWbX6lTb2K80+Z/rnksYZYoV8vR1Alk3cNQbikf9IXBwZqgET/URUHyR7iXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748326195; c=relaxed/simple;
	bh=nMsBxHWVEJv716EbbSzrftflT/Pxzl6DufhXtcNrxC4=;
	h=To:Subject:From:Message-Id:Date; b=sOSRF3a1UTe5PTd9xorc92bPnuk2daFsxRDckCpGbQznZ5AAd/EuXRdn2AV37Sl1456C5CUwVZYahOMFqWn0XBupNx2na+78FWrlfjV+GrDthJyzm7ttzYdcoDehHiCyXHAG/YirHgbIJS9z+gkXm8utu1tuN3nujcEnj3W9tE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCVWChNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCVWChNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16BDC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748326193;
	bh=nMsBxHWVEJv716EbbSzrftflT/Pxzl6DufhXtcNrxC4=;
	h=To:Subject:From:Date:From;
	b=aCVWChNm/1XJB6d6mXOWramTDzZjmrdOs2JrrQdE+OHyP0pVDfslgeNDdzeVIVqla
	 Zjgugeiw2K5y6t/WQvri5fe3SnI64tOZ+0Kd/b9D7Aqbapu+i+B5cOFA9fObDyJFQW
	 fEXQU6u+znFywjJe3eJBTs/526aRZXjBtdqqK2d3p7NHeXq7JaaBJhivOCJywCGi6t
	 kX+i7c61OMV5veKtJgXOKlPkbqrz2MWYw2hTcTXkrr4Y5ncDS0OkEby4iMOHuZON8T
	 iiz8n0pN+wKegX+9+99aIzll6FFElWwlgKsemwWc1Gp3mk4viybFb9XaSnke3uaVJ5
	 zmbG1fmKQ1vbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90970C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832619358.9896.9251264861435750622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b636ab65d1a17ca7556eaed4821b57473a1aaa160011e307b48fded28055ea5
Date: Tue, 27 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748326193
