Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1160329BD9A
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772976894; cv=none; b=PHgWa9kKnLLTBcx2TJNGrIsvocNOt/Cv54Pu2q8Tjkxh61Kx+5o6eA3W0lfUZHl1jSFa8znZ7AvSx9VpnY9UEPRPMZN17TNxHgRD2mRnEMEz5xqCNIDaPd653T911xFgOPbcsahlMQTXluQyOMNxDvVWG83VGiKtUGsxRyRSfLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772976894; c=relaxed/simple;
	bh=GDqWc8/NjPq1L18As1OBQyfEdKvpksC9ccpD6SJcylU=;
	h=To:Subject:From:Message-Id:Date; b=A+pPyLyeFBWG4LaD6Tp9ayYSEDQU+3XhAiHSgNg17FgaxjQOueiBgALcHeZ83g48WbP0JESFlP6Q2wX31sUV3vkayx97c3q+NnVbmF5OZDMubwzXsh4+uGuHgT5AOuJSOzyGfY9QxxaF0uXV+QV3bZwvyQj4GQnHQ1l7rnJDyHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0JThXXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0JThXXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA524C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772976893;
	bh=GDqWc8/NjPq1L18As1OBQyfEdKvpksC9ccpD6SJcylU=;
	h=To:Subject:From:Date:From;
	b=E0JThXXXvLuowOLTZs8iNivUU4LGSQ1uPu4TUajDpwzKGZzIrrDppaqQVX7oJxAl7
	 XXk5+8tSs1N23gJ433+hqQKaiQcWmBXkbf02sMtB4XHe1cxxHVWqlQ+Ay5mt/ERSFQ
	 eyyz7SyjDLl6AD4A37XI3aX5tVerD/j0QqjT9fJcxT48jKgddD/OsEEs2P5iN1kumo
	 x4ESgqfX9Krfd1iem0mW7nRORcEKNP3AY9H3U0FSDOCnjYhReDj1n1ZL1oY6L8YhX6
	 Cs2IVup/hqEoJvxfzEG42zaQm1Vx6Oz8pIYOHuOtAYCHeM/Njh50o3066hbdBf+gvV
	 XHIeimJvjkogw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98535F55139
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297689359.4884.7811089001483575825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de934c9ef1e6866220bcde3704dd81dfdb205b521fb8c28b0203c687d32d0b0c
Date: Sun, 08 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772976893
