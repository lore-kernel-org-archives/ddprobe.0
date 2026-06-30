Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360803148D8
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811114; cv=none; b=U+h3ZEOSjjl0+PT7u1zc+ww/wajOXx3pTeeQCaMDyoKWNoMRbuF/W64wV0Fp1tGiklFvrEItXnC7ICFwJopI1jJ04pJjRBGaO2ezQ52hVD5JTvZ/nV+/Wssr4ctPaW6YwKIL10JN4cH6DMilNauN+4oety85Ae90U0Vd47/iAws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811114; c=relaxed/simple;
	bh=MdFfbgcJ1KYCLGiRDtFwH3sZLdSHkf/Ii9G6zLXCaHg=;
	h=To:Subject:From:Message-Id:Date; b=sH6MdQiDDnBMUYZoFb9QT+mUN/2xFsEh96slXtw18bsHx5Ew2P3pNTKaYHYqKWBbX35evTwFFm9q5r16Rr6TG/jxA5zlW0EqEj43Wed8PPw6dGrU/Q7EDzgZ03yezOwywW0OR1fW6n19rZGo+Y4yDmgajAraDvolCJR1gik811k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R31dRIIJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R31dRIIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D3DC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782811113;
	bh=MdFfbgcJ1KYCLGiRDtFwH3sZLdSHkf/Ii9G6zLXCaHg=;
	h=To:Subject:From:Date:From;
	b=R31dRIIJiNE7/aMX+as5GivBlUObzTdcLvAyeAM41jfDjmEzDx8IgMMSYRi31yqHc
	 73C3iyIbmM7lgxgGVbn6fSZHgSKF5R2R7VP2RwFow/6ug1Lrht8E36x0lxSPlKDjI1
	 pp7/7z9u5f77aZa3Ge8Cx21qxvsGyAtAfGRbU6yE7ZxphIIfswn5ootjNo7iaf7xDy
	 wtllPr+R29jYB2PmrUTDec3LWTTVeJtS4XVPz87nNPG6Ivt+diawLKRPa7CreL60WP
	 cEMVZ6zOy3oru3IRJKKxiNWwgNhZrVIOfmkgV5ynUmgushH0GgoLO5tr/Gd588hNJH
	 7vMIpOKqB0v9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE88C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178281111369.19228.13502692494270757736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24580bff6b68e7a6d0b82aab97a4f28ee2ded8769b2a2cd0db3084950b4a3c73
Date: Tue, 30 Jun 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782811113
