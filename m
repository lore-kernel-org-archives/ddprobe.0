Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334ED449B17
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790797234; cv=none; b=WvkCSMn2KGGWfrwWk/nK7PygpINa+h2ZAt/XDYLJnRc+vaZVFHWyU+b3LtCMqUbWtVv4LEclPX2esebFWF4jq/QGl3W0qsCsU3MeLpTW059dFFMKuNJ+GTkG08hSt7Isx7QhvXEV/dSRUU5+m1YZmoG6VpiFceAgU4umA2DdPqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790797234; c=relaxed/simple;
	bh=PH4G/nJBrgjiVrql7WIrjOCQEIfd6KzvM29C6xvoXOc=;
	h=To:Subject:From:Message-Id:Date; b=PrDM7lCrw+zaeqsvkicIFcewLer4r/tpsbibsdBSiVawe/8BD4j8/hykKgXWpU717nIZFsrDtOeNK8oZoIBcLWyvp8oaf/oNwEyQ+fv0XSjhnru7KWdl3MY2if59SI7CU5sON3ua2mi/ta2N+kyWGdvwMX66//BEUl1wXCacgME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXZB6qgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXZB6qgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D162CC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790797233;
	bh=PH4G/nJBrgjiVrql7WIrjOCQEIfd6KzvM29C6xvoXOc=;
	h=To:Subject:From:Date:From;
	b=NXZB6qgI661Odegiz4w9u224h6pd02/Hr2TtIbYD9id3azUfMYPvECQNE11m2/1Py
	 qsuPCdRkiMbJUG4pE/Jvb6YLgXojV3df3N+BW2m5Q7kWHyeXuodv7XN+gq3wF2iCYk
	 HpQ5hx8WyBitoLjOFxaZWJcarWPrR0knLbw0qdVamoKMtyy64iH8J3kJixGtP7qjF3
	 Mgw/OLsAG5T8wjDKiWiKOryny0HoGlN4xOJ22JFyIVEqeIpE1bJnCQ5uA5fAK5eMSq
	 Dgn/qwvZF1zz49TrK+CiRAyPI9qRnWW3o0dj7YLKO2TRwHh7+gb/hf7f0aHv+o6EQy
	 t7JGuD1E9WGBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB6ECA5FC1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079723370.13965.755567113432354565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c234f62ad62db35a228f032981bfe7cf3bccef707c6d07902e65dca17519e8
Date: Wed, 30 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790797233
