Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234D863A9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736048154; cv=none; b=P8+wYgmzj9paemPzZKkRz/30pouIyUZKp3C3eu1wcL/z/z49ANfzpdTbKaH/VIIrV2kGkw3Na9nTlps2R6cGF/+O/FnlJ1d5FyGLcORQeY2el9lU74YRSFV3zkwX5THw3gWVFGKgUnC02B0NIX6BG9CjCfY+zXy5I0HMIfMaM5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736048154; c=relaxed/simple;
	bh=HygpzwsCsSBFkbXlO0W+7iCdYCp754XXC/LxK4A9lN4=;
	h=To:Subject:From:Message-Id:Date; b=JamEmNYAhQNinXcbPASDofFpADjZB3Oe/JyHpBYSpLdFAs9Nc7jtzGffnaaq9hPFp4gf9hpfI5PxYA0KCL4zy4FTB8MpV9c2/flVoJHmY/m0GEPdP5OrAqM5LJoX3Oj6eHo2MLCbyxXCSBr4HhUJuoHtoCJsRaIzn1CgH357vls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wg19pbvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wg19pbvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2E6C4CEDE
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736048153;
	bh=HygpzwsCsSBFkbXlO0W+7iCdYCp754XXC/LxK4A9lN4=;
	h=To:Subject:From:Date:From;
	b=Wg19pbvCXlZMk7OcWYMlF35DmUhe88HBbbLQlT0S3xTsbfjYj4NpTPIdwwKf9CMjM
	 PySHK3kKYmMHlMLG2AV+sJ5k670cdbPd/A43VTL8Vf3PkgBQmUnZZGn33HGsvngpq4
	 8YljLYy7OkfKnXyD1n+juvAvy5v59SxzVIRdb8iq7ud8tnRvdOkSYyHgxe9SrFxtG/
	 1nEvXpHkHm/TQmoVkhZRuw6XPYQN7QaRxgRYYTINzOGo04/9/7cXjwhiN3aywVvgIm
	 8AvzxfKlgSdbWhXlhkp8+3yJ2wSoYzPYVX5/t5ksVbdBPEn6egjn+0kKFpmlJUQjKo
	 uoIUz+4DFPs1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995C8E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173604815359.318.14383979310808505571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c39e5121bf201af9fd83af5fc0617668a85cab388036892da547d45aa5c2e3
Date: Sun, 05 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736048153
