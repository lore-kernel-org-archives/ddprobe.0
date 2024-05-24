Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C04047F45
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 19:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716577403; cv=none; b=pf446iMK3bm3d5NVOtfj5WoPo8osJDL8AY8PQJrsR5aGY8xjBHaDb96RRm9CiNHuj+XhGudW3MksCZ8czFi7gECGrM2nCvDCTR8QCJ9MVagXNvYW9Lv7lAF2AX7ya33SNdcYBOcOdgs3j4Ag6DNrMDXJU9LRss5kLKyMAA+U5nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716577403; c=relaxed/simple;
	bh=8Cr04hsFNhOdv+UFIeoZ5mKwqLd4RAFM/ZzVt3pMB9U=;
	h=To:Subject:From:Message-Id:Date; b=Wd0o9MD91T0Z3b83JF8pnr2M3q/5zxO+YNi7PvRy8amUr3SIiX3YEZtflO0YGp4BpdoCserD6mP2/YNPFiufxkVmY1a1U+CEQqw4EcaUW6uFwtEhE5GFOZVrAM2SfD6EWivf1+7P8TlN5CKFKBwvHBvZKYILSz4IybZq9d0NIOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuqUmdcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuqUmdcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA75C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 19:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716577402;
	bh=8Cr04hsFNhOdv+UFIeoZ5mKwqLd4RAFM/ZzVt3pMB9U=;
	h=To:Subject:From:Date:From;
	b=PuqUmdcxkUxMbrwZXM4GvVRuZIXzM+R17MjhuJWJ96V3gE8ibGDmUm3+eTpzRYpoP
	 PnhgH27czQ1eix1UFF+1N/CSZx8E3IBt9uBMWYejyBKjgydyGvUPwD7NZj1AJPonm8
	 WBYB0V2WO+uIo9EIs/sVTMCU0A39j+fSW1SrKnqZNwh5qsVFesSGnAA6kNOZ+LRnCT
	 w7/C5VXtZmwBwqDVJjZQ1jDlHcww6CBovXw2FB6RPr/VSvV+QRUDCCUYpFcQQcpbji
	 f03YN50UEke5m4G7tEmJaCqquYv1qI1ADruvkKQzqs1V+eQoCJitAK88lSFBfjliFZ
	 FThtNBwzbPnRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A36C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 19:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171657740280.15669.12605686010077507064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e2b36b3e2ff680b850cfa2b04a7fe9bc4c6403d78363e6db774bb6fc0cc9e17
Date: Fri, 24 May 2024 19:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716577402
