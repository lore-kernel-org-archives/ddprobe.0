Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED06386446
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776184054; cv=none; b=PQGvMSfE/fY7HM5ISfgeqKIv22sigaCW+3wqfUtHJtCPg+u1ChrBXu2UA/S9noLyIxPX7X9e9hMYGkPEAok+rnGU+0MTL04Ahg8PgQ/wqZxLdsR/cFCZoHNo3e0/Ppcy6wm7eWhkHWjoBMwBpdTrO3ZIYHSxQZBe+fP/MAePz/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776184054; c=relaxed/simple;
	bh=DIf9lYXfDzmju2/bptfCyWAG0SFdx8ONMgusgjykVrc=;
	h=To:Subject:From:Message-Id:Date; b=Xz3pBAOiBgL88tPTiJrmh9yCC47NKwL5044zEtc3aVi/a2ADdJB9HgMQV4jNTiyY29yTij9tBLKJtxR1BUcSZS61sL5+A5LVnOaVTlTZeuo2tFL66TW4QUpvYWjIvPBMm7Iok6blvEr8ag073h7fZSI9+m27D/6BDazQLrMLAxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+/+8JQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+/+8JQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E34C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776184053;
	bh=DIf9lYXfDzmju2/bptfCyWAG0SFdx8ONMgusgjykVrc=;
	h=To:Subject:From:Date:From;
	b=u+/+8JQdu6KfL4Wv+8u4c0tkoWeIOQmfjkDub4b9bwUhk7EEp/TrNHeLqtVi9SjgM
	 AbMlGfSNGKeLUTdc1CUcWw+RC/pwjdpHBhffnhVippLPY5VeTGEH58DRVfZneAeOlj
	 rAwazWTziybwArRKaytqGOSPYnS+gGFOzFDmeV5PvRIRDOKZ7fIDNh1N44q2gCCf/C
	 B9SFGrpjrMahiEKrRSAQW5KWUME8rPQWaIL8D4jy4gQizRxJcUBvfZPKa3iNuHcgEb
	 8uFRSP9ajFB0NIiSaMDl3s3uGt1PO60GIJZsSMqQTE7HTCfueoBLzNtJxBCRSK6map
	 jy07ZNPkglRxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB652F9D0E7
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177618405369.20551.10771432543491405934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87a83488377716f503ecee156c42a279311c59276c930b89a0f6545093cebb28
Date: Tue, 14 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776184053
