Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593821FE471
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786165234; cv=none; b=pW+lmtKwqeSrZ6oh4CYfe3b+afr2Z0EoalIzVjJvQTeYNN7ijRPWxQ73Xuw+Ihxfrj9+sIKM4O+K0ti3i0qzJ+EoDMjX3JLNdksl9nLWAzDWMQDZgEyGz4z7Cz4DxMvg1eFOZno2J4f0W3bN7hRBY34v/bF5zV5hLkegqNynurI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786165234; c=relaxed/simple;
	bh=NC3IEiF5srNVTbKa/y0DwvT00Nnh6sFOEaQgkQoQcgU=;
	h=To:Subject:From:Message-Id:Date; b=eZ7WTphb+Q2xBS2k/wIxL1ZE39AilY7L5LpOKSfnHdS3/zDMuBi5sPIj776gciQeMRSTZEy7fJ29rKymyuPV9EJKo6VkrDCirlKlepHsBRYbIuj+khCiSsK0R4Nj27/S/itLZxx+WWqtNOuaWaABnm/QG0yzVM9pgW/qOyT6o6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwnpa93h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwnpa93h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB25C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786165233;
	bh=NC3IEiF5srNVTbKa/y0DwvT00Nnh6sFOEaQgkQoQcgU=;
	h=To:Subject:From:Date:From;
	b=cwnpa93haD1ficxoJtuU6dyFtwiuHGaWxVAR5McLhhsU0IeEtTRD8nlFVP1M2LPgZ
	 MnoRjJfTqkFUTqGuMtgtHdYPJY0cG8Tp2Y0OLXSGB+McAI+QV7G1KoOVx8O0kvCBnD
	 VApyaQR4bhg/LIpgnchWX9cOc+/AnDK5Xv28cn5gfCptcO4gXb6Lm4nDxQM/WxM93E
	 +Nzt3g2aS2FNv4SR1iL4RzaWWLIE+0RIv9MUeWwoyjAJdISCydPBrg5VMT+Z0zONGw
	 2wxLsUeiO1xmS8dCW5kLELGNU+7ak9ySzS3d1+EXisazh/D162e9kjfJje8XYUjzdp
	 ArxgkqObb50AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B700CC5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178616523370.3815.6198768938545840152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c4f6a618502a16591218d22d3fcb04ed236c7fdf0f28940010ebe43f89ab81
Date: Sat, 08 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786165233
