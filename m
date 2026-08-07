Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCE31CD2C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786143634; cv=none; b=nysOOiPO2MmIZAeIE84XECmd85Dse37Foh3lZQrFUN80OEjv0RAbY0VqHkRoBjQi8UBnKqkN/7LrkvbdSrnCQ7bc7GUopv7Amrz+Y5mzj/TS2fDunvKM8jwEAlSkUosXslZ04yAJg8bdUSAwfHjEHyCg+WqFWcDG/DBb/6/Lkp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786143634; c=relaxed/simple;
	bh=emDuBe1/UjZHLbS55oH4wbWkhBvQUMTRiIC6aLKJP0I=;
	h=To:Subject:From:Message-Id:Date; b=DZf+x+F1iUxSS5ZPOZO+phiwElYFB4HQ0F7+6k3x6IGz9pCTEuUBBfVIE4jd4gZ++zJWPEfHQKXjIA4Yjz6hh2hchHH0wHamQcvwIWO2QEYlUe1pKJaCquLIOYry8Yn4KsL1h0iwKLEiSgcFpILtcMpLkeZu7My2uHnRLkUFx+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAjCX8TU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAjCX8TU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE73C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786143633;
	bh=emDuBe1/UjZHLbS55oH4wbWkhBvQUMTRiIC6aLKJP0I=;
	h=To:Subject:From:Date:From;
	b=mAjCX8TUR2PkxHQaR2vxMhczXpbrgCtX9MC0GDTQg9XqvWshdL5HGc7QpO6VK0IyN
	 GkIY2Lwg5zNIT34RUrxYrcpgdUCGOxvpMf5sauUjEoo+ovKr/t0FXH2sikt8ILhAA/
	 qCRnk6KIiGtcdSSXJg7ywobjTkaj90JVhkd8kJ+m2x7c8141q48hiS1swH0JA8Mk63
	 QzAeFn1GK5zbFXE8SRhcAKfbpKgqPWjmXWOnBxv7ySYmPq1FSnPfqhLLWY+FxrsZPC
	 b2uCUCOJtb5EihfTOwYf9D+osyeprm7L9ucJ2D1qYZtSIjJP+w1f2QRk+Cn1cj/YqS
	 Y65+G2GyczU5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E28C5AD05
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614363372.26159.11971109492488715786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee20b8160c5909fb0e1d8762f9ae17e4833c75113f46d8dd06d212ce19bf839d
Date: Fri, 07 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786143633
