Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2182E0914
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770706434; cv=none; b=VABJ136KCM45cOCDdI08IQJ6G/+tGjLR5UVrbr6aPjXOItsNbtcqvRXaqMLYpLAItwar51RlleBsE+Mw3Bh4m0OikrGfaC0Na802y2e46AHeDyz0xZuNrN4rOT804EBiffk+kkFts8z5732kPb2luibe9uVDS+J7YO1tY/n1lWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770706434; c=relaxed/simple;
	bh=WU5J7Tu6R+qpu3lelAbba+kRizwkgne5rEhXcDnjBj4=;
	h=To:Subject:From:Message-Id:Date; b=clwXQU6veH+OoP6NYqjmcLJ/y0NUgaYyI7WKEOEMQtXtWLARH1i4vnKOSjJdr/xXzwEgulVtzY7J02dKojqX33IoKXvoDbq9GZIO+w75FJXrWF/Ft8EkyAASzq9a/KTGrUEfPCWO3QWtJE9T52LRQ/SGP5UNQ5Fu+gKFKOGQnjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxAd0E35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxAd0E35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD2EC19421
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770706433;
	bh=WU5J7Tu6R+qpu3lelAbba+kRizwkgne5rEhXcDnjBj4=;
	h=To:Subject:From:Date:From;
	b=rxAd0E35cWtjoc0SG31BcEA7Qim0sfz24oNhZweHIaakZgBviKadk84UYrrMi8Dme
	 0eOpWDBXRu7zrEzQ971Fba+E/xeDipeJqMt13ZYTX4tlUf42VqdnlJaxyKbDlSDfmH
	 bD+xBf57d9CyVXtqBhArnXCTdD23yOIuC2Z3ltYaR82BI7QxpNiQTV+aiZKQNnv/aH
	 hy4MlrQ4iWP3DoqR17ZHv9TPD0d4xhU4sEs/uO8hH8GfU2micUKopHzZ+QScN6S3lt
	 N6ozB57k2jRlCIqlB5j2T+RYUXkWf4hDCyauhcg44WWLKFzEkwapgz/3K5t5K8LSvE
	 CFC94vRFnxxzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A99AEA3F0F
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177070643359.10199.1392709192678324942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077e924a47f20bca500cbbf9920eda50ab1d11be7db9cc41204c6d0ace0bd170
Date: Tue, 10 Feb 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770706433
