Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD64D51C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737248154; cv=none; b=rkGOYr1CGRZd2moRMJNFesSoc2RklRI5VYlNRrPbYjt19q0mgwg77B77MU27TdFT5j+3WWgmrBaFEy9KoHUYmoQfXj8GqrMQWKvbMRdw3GYlC0Q4PUPa4dcsKvM0PNtthqV0Ypq0s7RaG7rc8NMcKHZz9iVJ5ZI4g7T12IFgrPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737248154; c=relaxed/simple;
	bh=hydNqef1mGc4LCA2iy+pyFLIW9eCcBG2JxxOqNepPiw=;
	h=To:Subject:From:Message-Id:Date; b=MOzMp/sfITGSkP3QEj3NEjQj5a7abrkgmGdNnl4d4eassz2eOqefbEPZTKJjnYc0gXfqbLIUdNoJ1ahF4XwXMElvc+MK+FS8aDVGYhXr30LHRrqjvZU8/Ae4xk7DGs7J6a1ordXA2nVI0B/dYlaPedcZDjZIEBvc3YEqpv+eQe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAp46UAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAp46UAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A830AC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737248153;
	bh=hydNqef1mGc4LCA2iy+pyFLIW9eCcBG2JxxOqNepPiw=;
	h=To:Subject:From:Date:From;
	b=WAp46UAct6EVeX251/QQTFjmOIAH23YId6rN1Pac6gSGLx/Wr0OcGN4DV9kcqsfVU
	 44l7FJ/JspC9Buw8MdnsgEH2vQX1Tx/MA+mOg8G4c2NZaQHWedmZojOTawDyOpstup
	 U5PidCF5HVvkTW/JbAqekuAiLxf0SLSOnev6pS3AYmS9TKvS/dSxjjqckr9Atx/8Uj
	 +CeihSf/hd8lns2Ld2qBH+y8QGvDZnfef1elOCwKAUMM2mEhyaL4o2Mgg/Eq4l6VSb
	 cz5L3PqGvxYKxDGJQBMiNOwJaMG4Gy1ZzRV64gf9gDL9GqTG8ytYS536U779rHtm07
	 /phSq7NpeF48Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9393CC02188
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173724815359.3745.13824681171799547363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19027987207536815163884a5b2b77e2541356060aed08a31a312f3b1873491
Date: Sun, 19 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737248153
