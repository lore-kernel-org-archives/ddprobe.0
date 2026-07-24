Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF3A331A65
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784860834; cv=none; b=WuuUrjPPdVP/iLXoCaHAgizBzPhdySyTytxBbAz02IAqR94PMZPA2g2rOyPDRDpUwcavO194tVrvl+YfDlbHjNIQEUeFut8lfOmiEGEYbamAd0EmmMQofUDNSrmnzisrhYRKKrvbF7wXLwHc3L2SHfsLIKb6JwED9n7YawwJmZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784860834; c=relaxed/simple;
	bh=oKa3VkBCdP237PmCcTqkjHPJzs9EtbE4hy41F/C2xYc=;
	h=To:Subject:From:Message-Id:Date; b=Z60QRVImr9ytTYyPTGeiOBHr4ma/Uppb2/x5IemziX9lIVAuY0gc0w6qpv0fpOufin/gKvLs2VvEvmqfgJAbqsZss804dU86EQn0/HQz26bwmneR0FxUoJBWfqtNrncu5lfE78RVqO1o6mC5M2O+Y7+bL5qP7HTiIvbHYOMy7YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKL2K6hV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKL2K6hV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF5AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784860833;
	bh=oKa3VkBCdP237PmCcTqkjHPJzs9EtbE4hy41F/C2xYc=;
	h=To:Subject:From:Date:From;
	b=SKL2K6hVHNwNvgyGBbSaLypfbc/keJ38AgmH+lwgT2o7EtdiSyoYHMoDvDhhqMXtC
	 1YGGrVJaxTfDCYF44y9eW7BNYlHnUb99SyVRbs8dMrvB2AqCF3lelerC+/21Tntger
	 j7AWzKiUdxb0NEx6nCmralQqD2CV6KF0mt+kCT2Bf5N3Jp5BV4KHTdIi5rJKLti9pu
	 +RPAIdcYd7Co0cfUC4gMGQzgcpYM+vRQ3KbhhwHX+/bUM8JkqqoJzkCByq3iely+Nh
	 mGp2GH7geJgwZAn77+lFQVsia+zpLyI9JyTGHyF8v0q70VnNlXWNH+kWF0kHo9mAtb
	 A6XD7YYTjTNvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA272C531D0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486083368.10745.860676365638302094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f4205959282be73471b33075c6f2ff41787234c059d092bd6bbb71c9efdb717
Date: Fri, 24 Jul 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784860833
