Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D8117ADF8
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747934394; cv=none; b=nrbcHi8tGcmHKBHdixSWV4s55eDgpfyhQYsY4viyKte8OT+3qJpPqcTfZq1iicaciW6obSQlBE1lwMK8ItJ+KAkhgH8bO00DjE23gsgHuBQpi/fb8H9UBVrJobDQSq24CBsKephlKgrm20LsQWSkQ3hovOWlIGRyrnfZiGX1CiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747934394; c=relaxed/simple;
	bh=EjYzU4yxmVOwfyceyTuUuBO0AlT+fZXpGJy2VmPr8iM=;
	h=To:Subject:From:Message-Id:Date; b=tuaq3lqZFQcINTuROgHXu7ptsy0vYf9wlXpbS8EvCoAtgEmbu0ORrl3CbygZp4DzwKI5czRAc0GutjkhVOubfAOjw/wsxBAmXNxG48vTVBPqCdx0bGYX+LBUA55ojjZWkh4kmJVzK/OxztQ8ckiqenRjHP3F/nl7rsY0bMTPjxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMzyIl+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMzyIl+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F24C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747934393;
	bh=EjYzU4yxmVOwfyceyTuUuBO0AlT+fZXpGJy2VmPr8iM=;
	h=To:Subject:From:Date:From;
	b=AMzyIl+TfeIXRC2G1ABArzPcXXIs/NAk2LHDuhSQ1Lhqne/FPtcw2UlsDcQr1n/qb
	 0XMjJRFqEgGPrBtj/k7FvqHsniN/wXqqzuy/iuRstqLgodaXW7hJhAZx97vE/5ss9M
	 o/dTjltFT5J1kpt5N526KPKDvMifFQ+s385pqAdr4GGuX0sZAfl9aug/BYItgRSMG8
	 ACPi3U+HQNpucDaHCKmzywKRQBpOtuXBd/cGN4en6ecDbabfIBVPaTsA02luYH1MxN
	 Dub8cMUVoGIHyM8X5RZ/6DbL/jou7artGUxfu6fdHDgjELtlf6Y6tXGm+HSzSBOD1u
	 GUTZiRmxi21Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA6C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793439357.20205.6760900461608044191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968f8af9129af404462e3b996e4ca22f2184cd0205e79a8ce531908395af8adb
Date: Thu, 22 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747934393
