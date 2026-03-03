Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB6737C900
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772565294; cv=none; b=KWbLipCg1RJhcg4/96tJ6/PRWZIgNnVXu9tuaAi61nfrpRZlwfvWf1woqWRb9Ya8F6Fhu+RuKWRtlYZdGO3d38enkMktaZXTyNp6bvCdcaAwkaLr9SBaBofCaRMZv0HiQ54bVre9seWMIvfIUVweJ2A76UNi+MAITMFRYgWzJfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772565294; c=relaxed/simple;
	bh=bQRQVzjqpakMsfqmg/+lO+xZ+jjSCuFyQF3YBiMSqyk=;
	h=To:Subject:From:Message-Id:Date; b=hGbR7f31WzBh0OT9XJdKf247rhNDJ3+pCdle3chT96plnym7umSy+r+SOkhJvAbSD/mkyxDlz4epDZThojZcKAErV8Mo65212DaDhqQMupGWnaaZrlUBvqk4Gb9ty222yF5vyZz31QNeGqZf+tIz7CflC4HLLklIpgVsDgjjJXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZq/kPhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZq/kPhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F1EC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772565293;
	bh=bQRQVzjqpakMsfqmg/+lO+xZ+jjSCuFyQF3YBiMSqyk=;
	h=To:Subject:From:Date:From;
	b=YZq/kPhDk85i44uk+Zv07hNtrM4s7KI1HXvXnrLofl5VCdc6zXMLI1jTmMnEJwuSB
	 2UwIBbN3htQGDQij5r5Lv2UZS2v9WMiiMimmCd3ICzvoRitYOUXbHnCgOkGomWXaAh
	 phrElL8oX8ladp6TRpbvCnNMn3C0sqzoEplFLjhIIrIPKPaKt/+a0txNKkDab/owvn
	 LANnzwOdbfje/zrAudj/589o5xG/nHjxEP/l4g+bKewnHFPld9IYZLM1wOYFfn1+WJ
	 NEjm35Z+0rJpueqQ8I17PikJzudbH4i3B8cCUWS3KyyJA4YrYfWQrEGnbACHYJ8/UZ
	 l8K0CcImx/SxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BB9EDEBE6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177256529359.19404.12955800260817102079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e28be0207bc1f00584fcf4567e692ec9a4b5397b979d8194918e566eccd6d79
Date: Tue, 03 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772565293
