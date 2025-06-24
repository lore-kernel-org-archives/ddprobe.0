Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F0C26B2AC
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750761594; cv=none; b=lvf94uAYRBXNMwZa6/jmLKFpnfaM0BuEgsioQ7BqtQ9ZJtZw93UbR/6JUO2AUWZXsr1toQDEjoSlbF+kJI+iQq5hnUppoyzeGm14PpJhWANfmC1iCpjbZ38GQChhT64twpYxK2QGxNJD4kj4puI9qNz3a1H/afXxXH4vYYBLbLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750761594; c=relaxed/simple;
	bh=xkC2IVKndnDe8hEUiyGrHVfAUzJaaNAXeylyRWQc7DA=;
	h=To:Subject:From:Message-Id:Date; b=OMHTZhNYjHNRHz89zyZ/GeX50D+Mud+vddm4aykrVzIUKhxZ2jAXFyWZHjbmOao2p5QRTdbm4pUN4azjMF85qsOcNKfrA1ACamWs/krAmB1v6uQ18VlfeQySpHU27L54zkoOZEGzYgP5mFLmgv1j4QIvLkR02sYytLi6OGLZkR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBRDT5n1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBRDT5n1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E30C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750761593;
	bh=xkC2IVKndnDe8hEUiyGrHVfAUzJaaNAXeylyRWQc7DA=;
	h=To:Subject:From:Date:From;
	b=aBRDT5n1lOOyBHwi5BQ5AynbPKIZB5iKDVFJBgHQA4na9s6qOc6Wwedoz6B/qOo0M
	 WLHIqlMUdMA3HL4tEFrBTs71b/CcrCesxPN5217ZDa8emAGXwOPTjLRMO2RcnGmu4L
	 R9uSDNuLH0zKubhf6D1nXbV30o13cRl3dSlmiPy71CXrX1MCsjDzi8gXM4hPZCshP1
	 k02gtZ/y9QZloRvSTM6LR4eLneHYRdeyEvMv259M95H39eluTTT6IhtA/jYa6CUW6I
	 WN7RIy24YkACc9VqKLck/q5louE7wta7cLtCsRtAm2zdV1z8PODxWzX3oKGy58dvvZ
	 RYWumgtfj1ubw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE68C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076159358.29589.4238466615869973821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d219c28095accc8bb36b357d233fed01eb3157bba5bbd65a301a1bd138c4b23
Date: Tue, 24 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750761593
