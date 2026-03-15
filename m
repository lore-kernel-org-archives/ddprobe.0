Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3AD625
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773552894; cv=none; b=U5jLYVuRXWmdG7mFRK5db8c5bMyfImoY2T/SnOQ5AoEv9vcEy2pByG154Wn8ALNl50kd3vX0Sb9/+lGqxeIAXBWlw5yh+nLwrAGem6wmX5L5iT47hhE3kOSwWe/I24ioyr8DSuccKy1+aTXX6OGqexjgdHbwlGsX6e5DqMwLcZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773552894; c=relaxed/simple;
	bh=sLtzipyJ3dR4HGH8a3a5yJEyHaRSH4WYd6vXtqABFCU=;
	h=To:Subject:From:Message-Id:Date; b=Kv1RvAsjGFQEX2r2tYX+gpSbYnT0EXsA+86UCsK8hp9YwrUeNvxn2p4l0GC3xSsBsq7PH75dCC308quVibQjYkiGvexcu9X1O5B0NGXGqbNkupGsplM16Mkm/VkAgwHaI6Oz+jryLb3K1q49p7wsGMbrM7pDuQ06oukkm6SGS38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmvhhpl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmvhhpl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAF2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773552893;
	bh=sLtzipyJ3dR4HGH8a3a5yJEyHaRSH4WYd6vXtqABFCU=;
	h=To:Subject:From:Date:From;
	b=mmvhhpl0KZ/ERtkP5bKRCtiyHGOOwh7WKT6w9OKz0jOLgXNYSV+yuj+RA3xcai2yv
	 FDLkLsSS8yrtt2RuRZrJUDc8nyxVX6Vc0fGoSuOnJEjG52pa56JzOABZ2xt67iv6yf
	 x38wDoiJcwnzCtztAVWGbyfZbjCydCzV1oovDXcUQcaQ2CqqfRNNDoVWQ80W3JW7cD
	 kL7UyWwyRjrzw/kdErBbwalrtwPz73Lk8aQE+tGtaLyDnnDkvWYNW/dXwzDzzJf2HH
	 rQIRvi72n39xVTMdY6ZOv0B8H84AVR/AlqbKZnFc//gl29E51mbaOxy6Xh3d9WsWL4
	 C3i5Sobo5xuLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EFFD58B0E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177355289359.27691.13355044046547847995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b52d1171716bc0039caa123868a43b2d9de99d2bd4dac32fb4988d05c148ec
Date: Sun, 15 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773552893
