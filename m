Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9C0EAE7
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764039774; cv=none; b=BFPScnj22z6pTUm3w0Y0tQT/tIvpsRMTZbxEVl2TfnIQYv8xRxGf5msMrE89Ph6x5CHTp91ArgzIHKyu/XV5dAqvs1zurvIzeBr2c4TpkS4eDSedbDTOHckMpANtFPpSliFmt8hpHauCSLua1wiBqoeHuLKOgmjcC8u8KUUF3Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764039774; c=relaxed/simple;
	bh=1v1mnGC/3UvhAQV5jWro3nWkqGTMPBngZNDpFP1Ud08=;
	h=To:Subject:From:Message-Id:Date; b=sIWOehZTDW+uFOyYGE+uMHI2FWFSVQOGgeVE6LH9vlocdUDQbA3qe7QZi4R5P5FBvo2xvc5uy2xgRt6/QZ23MvC0QXI9MxV08upmu9tl9M1U3YpWDOmXXqNBlkoX134OGXEnV9tQdUCwcWG+BNYxfAhSk3fYboFvVf6/dUgaOjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPpU8274; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPpU8274"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40D4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764039773;
	bh=1v1mnGC/3UvhAQV5jWro3nWkqGTMPBngZNDpFP1Ud08=;
	h=To:Subject:From:Date:From;
	b=sPpU82740j6QFHDq34VI95lucTtDdrGUaLENytLbONL9o2HOBkI9Pqogo2i4/mm8r
	 s3duT6xKFNpEkdgc9oqNPRDuNQ7JoPZ4ywC5RvE6lE9JI8yA0HMl8SUeSRtQq+nqNU
	 Xt0pO3EpEmMLDZNgZW2F4vUsf5YXIuN+e3bzUyBz8Jf2jj4IE7CzD9l6/HDjBuSWmd
	 dNZ1m0HFCxxRZ82IQJj7E21M8ntbv6lB3cX7/5tcLKiYXwZk0q8n51vz3TTDscsZCF
	 tW4t3ZFB7vRsAWIDSDAYsc8Pz2cTH4EYrSvBJawwR1NUvUgdpGEwohmMyBE/jsx3pc
	 LEWY1HQJiFR1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9133ACFD374
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403977358.20864.12640738687261635453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2223fdcce75e2990e682881f1a3f8a95be2e626cb32558183b3f89620ad211
Date: Tue, 25 Nov 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764039773
