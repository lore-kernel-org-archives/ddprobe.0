Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386A0286890
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766704434; cv=none; b=k0/RgbMe0mhO6x6aJlEO5zUxVQX1UJpHP9NRltjwAPGZBEi84x5D57E9UBO3oJirosubPmIM3xfVKs1AKhaw4q2C3qwS3ueKOgRmtDpUfopaVK99NVTn1zAVqKRnmcVseHSg91b9xsO9uTIh2wM7UJ7rvJtwyKUtZjIhhFQMsLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766704434; c=relaxed/simple;
	bh=AUuxIOjZRVQg746Dn7Cc13T65zqgPa5LoUvrbpxUHek=;
	h=To:Subject:From:Message-Id:Date; b=Mtqj8dKClq5IEX08AM8cuc2V8US2x3g3sIpoxov8TIxxkqZdy0V37Wsz0odHqMmLkT3lFZlIq7zMGJ7roxjIOxbK3WcQjXE0Ml1bHriYQ4H9r5Y9+plN8KvUtwGtrvrxy96rY111x0YcSYCN0GR+1/mwC0hpBOqnxIgUnsEb49Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4nx2pFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4nx2pFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB51AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766704433;
	bh=AUuxIOjZRVQg746Dn7Cc13T65zqgPa5LoUvrbpxUHek=;
	h=To:Subject:From:Date:From;
	b=d4nx2pFr5PtdYf1Xxoyg14ICFMUiwleIoeHTZxaXU4UpvaKLyXCg3nD80Q0ABUuSk
	 3ALch1Dtu/ksfie5Mux+N6o3G42hbei6EmR47ABP73qRaDgqGKSkJb1eI6eSePZIH9
	 IgA57p50zvTQX5VFF4/xmExuYwoTcg+qB6CT1hs3N+R9BmXJfCi3gAnZQqD4o1ukPC
	 EtOH/cc4qb5c7ThA4AZgfhfC5mdANcMHPVU84mrDk1NqeBe33BfPH7C/rmTFAJzIiR
	 zjbP1pGEjp/vOv0FhENDlvjJ6eI9r5qqQGktxLE3lsyYHRr0TXk59KPxP/W/zIocMB
	 P92bn+j4R/aLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95950E7AD74
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670443359.8824.6263973884004461945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23fe11f630c063084e42fe7b39a277fee73ef5749b0db5b5934d1fa4a54aeb81
Date: Thu, 25 Dec 2025 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766704433
