Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB643F20F4
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774623294; cv=none; b=jHcnqoyBx80i4i3jMP4gshpRrY8FQlp4zAd4+jnCTWD7HDN97DTfYAtd7w0iGCwAtPZhD08zoLyR5/uYDw+5bmbypp5sxhdonN4VG8nHJp9547EUamKh1ra+nqk3Au+Zy0b/H8fAidMdIyalxDyHDnung/abIVOZD6P2SYK19eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774623294; c=relaxed/simple;
	bh=EBgxq2SZD0m65J5jXQS/UlHjU02382XOLFnpJ/yWccY=;
	h=To:Subject:From:Message-Id:Date; b=WABteRlJGbUw5NF/niNM7NZbZoYTJ+5cFLUKdlZoBz7mlNDss8Muf5hwOlfbNndleqR5zNoZvolH9eNycjrXZGKuNtAQLYZGqWgzjKPBOEcJamWU0esVSqS4da0c1lDYAhIdkf/YqMEZ4+LGoHaVUhZN4ym1D51s8Ncc6/2z6/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJPxU6Y7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJPxU6Y7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E6CC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774623293;
	bh=EBgxq2SZD0m65J5jXQS/UlHjU02382XOLFnpJ/yWccY=;
	h=To:Subject:From:Date:From;
	b=BJPxU6Y7em5G+rS7uAP5b7mAHhT28xRTIXljZ4HhA7WQ156UPNgNPrCqMmAlZxyRY
	 NtOsATe87tpJhBv/toy2awLBvbZtmGnb2rlD8lKabtHGtRPoFXjQnRR5aRsfOBXUEJ
	 Y0SPCo18XrO629YqKpMwSKcyytUVSkLfdlhDsDJJS6S2c0D+f3PYxSEbNplhjCqPAc
	 AeMa3AAWvLDMbvnQE8//uQ0Qyebxl2BlstHL/SgGszRYmQ/QkyfFi7Cya+akfJcwRo
	 kD0klisoHMDs46Nw2H6qD+AKnHgAgmkHWqWa/f/+5hfZVs0C5Latv/Yyt34N9kXS2E
	 37Ulc8HkhfSGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9441310AB830
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462329358.19570.11329601901489603358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12cd2a37597186410b08f19a31da5e4279d1e5abbd8c0c174766de2590a686e9
Date: Fri, 27 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774623293
