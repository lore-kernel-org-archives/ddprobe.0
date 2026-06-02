Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475D9311C32
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780428274; cv=none; b=L6KoIjpTSOERIFLBmykbdRUFltddQJQd/4inr76T52vVFOqP838Zr/xyW0UbfmM06axSTB+GmwvZv5kNNS1XfCeukPyIZod+knpIev/MAQ8LQrtH/uegqsWXUMr2y2sNsNcuz0r5TSf8B4iMx2fInfyFIhFEdFYPejbhGnoKK3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780428274; c=relaxed/simple;
	bh=GsYbI9hfBNvViwHMAjBHL2eIAj9DoTU4C0zzM/O+vUs=;
	h=To:Subject:From:Message-Id:Date; b=X34ie6iuFuKOyXjn1tI3g2wdYQSghKvIHN1bXFWIN3wuwFVUJahFoZtALOsaiJW1a+1v8kUh2xWAL/bYWNxTcdkEdzc1y0ldQzhUmomPZVhH+y6bsVWJpRvn60lhg7BtSxiwnxWBwvEKVRVKkFD6aakMRyb8bIeVORmp1y0AAk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osUC+SYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osUC+SYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84A4C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780428273;
	bh=GsYbI9hfBNvViwHMAjBHL2eIAj9DoTU4C0zzM/O+vUs=;
	h=To:Subject:From:Date:From;
	b=osUC+SYDx5A8RRfFGmDaMa3UJt8rwlbOMflnubjq7jrgXciDBxTnBDj66nmQSpwuX
	 3nETirlxiqjVtw3dy+xCifkuCC61ZFNwfbqoi4EfL62uLin/Co6Yoc3dwmZ0OZVSP7
	 gRJyKGa6UN+LIiWU0DRWHMeYCACAfEZqS4yZ3A+5/VKMs5Dze5wNR+Bkku50ovtX7S
	 6wvZzh4fn4Irz7o8C3tSVe3WbIvNLEpTIDM7AQP2K3wT5Unve3Bw2fb9Awjoq/4Iqa
	 1qSGysqCQXYOwROoL6WL3U8+O/rowRWEvX/VMXl98gRAb+MwKyK4ocqPVE98oOMoAu
	 1xpKI2bKbIiNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1AECD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178042827368.10977.7338854481941897564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ae418e7fc51029460c0587812d770efbea689181aba8b76613f28b1f4f57c0
Date: Tue, 02 Jun 2026 19:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780428273
