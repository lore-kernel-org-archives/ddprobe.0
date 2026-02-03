Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395A5280CC9
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770157434; cv=none; b=GtTDngAbYskt8YDG5+qKvS7VCoCckjYoZw8zaqR86kQUGMJtpiTBlJlobjDYP3df8pjeEyJxffe1eKQAsctTVxL90+hBVFPkSB8xDnh3KRDS3G/XdDyGO4lPBeCITC10BoC0/7X3VcMfVzxO22CNnKNw1DAVnFPKF9QGpg674Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770157434; c=relaxed/simple;
	bh=et4eXQX0XGsEjTUULHhNFIznjYEIrRn9yeoKF6X8rIM=;
	h=To:Subject:From:Message-Id:Date; b=OE4qTmWIp8eTwZABe8Se8C7i8JQgGzZt2NYIkHNMOAyRbw7GW9aOcL792YOkCUBcTRxxjFkbE8xzO4TqoLcagIApWS8/2rlKPSJ45OE76zQdsxZBLWBSvQSi7k5J76fJG89vXfTJ8WWXEoCo5LzWT9uhlcyFmf9slE/iN0DssE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jfuqg1e5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jfuqg1e5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA9DC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770157433;
	bh=et4eXQX0XGsEjTUULHhNFIznjYEIrRn9yeoKF6X8rIM=;
	h=To:Subject:From:Date:From;
	b=Jfuqg1e5L4B2LRccKzcRauwwyhI8M7N6pQwV4lzPb9Hgx+EnNbpvuEe7TN7O+/bWY
	 FgnzQCsvf/r5r71Ji4BpDTPzZa3sCgfkrYBwiH0HLQ7ldl5nWOcOHclKwjYGc1UMZ/
	 vwVrxGjJVboZWXI4OyIGrHcOXBuk6GuqYrPecNuMqIj5oCxkPf7gm23Lfb0cptpZHk
	 0VlGCOzSvuqoy8cm3YS12HvEBmxadtVN3VjrbjidNIF+ZuUsRGMz9RZ83s7xf99Qyx
	 c0lNXDR85G9J9vBGsu0U9juX7QGHujC3Ii9qICipFx6CJ/DE4cdVKPsImEdwNucOxq
	 8IJ5KeUu6NM7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E72E8B370
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015743370.24660.11867466076194102347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24e92f63068c2c9e11e425eff7fb07e2c25086d9f14e8b49a74e872df78ccca
Date: Tue, 03 Feb 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770157433
