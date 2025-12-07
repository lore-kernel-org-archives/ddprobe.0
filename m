Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471C419F48D
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765094574; cv=none; b=C+RwGE2H3p90mpPqMXuZlYJXaOM8irK1MpMPvcFDjFTk29a4gsem3iuHwY6Mh8LcpxI5jCKgdaRZ8hCVH+DEMg00jWNiqaGIEEAQx34hUqkLE/Cu/R8IsY0bgzqH098W/kxEgiauklkDhKpWvA61YyqcQljuIUBtC5FP8kjbJds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765094574; c=relaxed/simple;
	bh=RppgNPLqJ0LCIc4H8NNQS3SnM5W+UNfJzq6/hiyv/44=;
	h=To:Subject:From:Message-Id:Date; b=XSQBEtMxxZdM+0Vp3TtcAsM9ISQ1LXRQ867fHOKBKEPAKkYO/K/4593ZwqpXU5eMHwkIJE5kCcQ7o7DyjcO40Y89s1q49L30SNSPMjHXzqIZ8iF1JxgQ738nZMJ8wanZeOhY49CjxTnjR27mknwW0JVpSUDCq0iVQmolAifAeaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqyVVakH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqyVVakH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4603C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765094573;
	bh=RppgNPLqJ0LCIc4H8NNQS3SnM5W+UNfJzq6/hiyv/44=;
	h=To:Subject:From:Date:From;
	b=GqyVVakHIovhv5dTvl68qIX6hUfZ3s5r+1kPTVr1D01zHgKRI7AiGa6Jxfgd0siwo
	 8ccqZmVmTdr3K70JiLfHJSCnMtBrHS2vCmj6Sqpqx4Tuhw6V4YDXrbB8fipw6GqRPC
	 OzbUh1cxzQ4FVBSXA6W8Ytn4aRZkfb31ygCqPqvBvMYX4sW86JwjOg8wszdV+M5/TG
	 ghyaUDBkGaWRVKNQIzRdqTXYqs251cVwtldD/g1wVFYcl9Rgfk1m7Z81DisQphNl+Y
	 gtN+MoBjbuKz4hutnYqXdxgNa9z+y1wb168B9lNwoJOzc5k7sBScjCe+jFG4WpbV1E
	 wCYIYWN0oGbBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C22D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509457363.18572.4543991182744675470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a27cb137449e4452d577b68cbbfc55d9fb93d33d2bda078edd3898cb83e4e062
Date: Sun, 07 Dec 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765094573
