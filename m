Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4629D450415
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791725434; cv=none; b=YTashG3K6v+bR7Ofm798k/QChJUYtxEMHuIeLZkJ589fEN+Y1SIpHC9wahXuBzJqxcFXo3vlImcc/EUvI8VTGSbKT18bd/1P6Ybzdd3WQ8NjbXKHD2X1Ci9lWMPmTWP8q7xiNNtQOct4VwIccfgFzJjCGPl3AEhspwNd3uW0AXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791725434; c=relaxed/simple;
	bh=iCsBo+idBfbaqL4I5D8HX+GnXB3LXuE03Cg5Qo9ljoM=;
	h=To:Subject:From:Message-Id:Date; b=J8daroPG4S3ODF3Bn70eN0ojqG7t1xBVGSbVnrnqP0RVCq8+kUrwPSoESwmATogr0pgQftskiBgOmlFVbIhbY2LNrzKNEXHvHf0RwYDA3hMhIZUZ/uRdcLTiNW5phUSZNwxQbFh/dp1evtpYh9i74lSm4vcZMNA3KBpjTpXYJng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtktRWET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtktRWET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D369BC2BCFB
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791725433;
	bh=iCsBo+idBfbaqL4I5D8HX+GnXB3LXuE03Cg5Qo9ljoM=;
	h=To:Subject:From:Date:From;
	b=TtktRWETlp9lcWLLztahN05uN9hN41pzyVWY0QLAHJO3UJRDcXScPOIQcw4F/TKT3
	 0TGW4Kq387nssc1r5HkZ0vu1mGbqHmALa9jwaZDtp3EKmfEH4FRu/5DcwV+jEJxSLx
	 1dabPeVdTuNf3fmT1p5lNTVnDPWmdYCQ94kACSCiiBY2PgybfU+obiFgtzI7BUP7dg
	 3YLoaqzWS0cajHNBFr7N3X8G7tVKGRdXPJ4cfm0ot6SE7ERK/YQWQB14bEQVwDhYe8
	 NVPgAepPy7TWeNtA3KMnnHIDO2V5X7Vs5qZo5m5+oJSv0TK62+1fI/6Wn+gmCkCCa1
	 Rle/L82KLNJsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1743CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172543369.23918.13931411140287018201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d17d1acde07b5501e39898bbdf394b1bb71fe4c3622796aa7a481da96f1419
Date: Sun, 11 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791725433
