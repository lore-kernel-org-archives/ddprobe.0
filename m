Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158FD1DF256
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776879454; cv=none; b=Hvh6P1kVWGudDcYCCPwUclGEE9PYXJK1Ed8/3Tr9MlZT/dKSoq8jW4pHmetWIVyLhmpvTHXBpjny5px4b9s+n9E+rqcjQX5ZTiwVRNZX0bZBMWKeZZZVr4k7202kcKI49LEWatB6YpZ1ZX+uNW6qqD8FXVCoFBgKmqk31+6XlGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776879454; c=relaxed/simple;
	bh=qficfsOpu+9ao8p68NKwTfQ6AeqtXovpFfIX/cLXuI4=;
	h=To:Subject:From:Message-Id:Date; b=XdbdjfSu3W45CHyQgaKaKsB1iAfttj5zUeu4par2s+HNnTjagEdCJVju0aoeQU5wkbiSYqsTe9do8sU6ualZ0XLvA9bu/l1hCQkF6btq39z7zHadSQB3RbXzHP1gR7IdcqEXouDJuME2z1QP3lz+cNnRoV63rF2wbv41DOCxFqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIhmq9tf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIhmq9tf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8AC1C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776879453;
	bh=qficfsOpu+9ao8p68NKwTfQ6AeqtXovpFfIX/cLXuI4=;
	h=To:Subject:From:Date:From;
	b=RIhmq9tfCGwm83rnx1hlqsKOcKfoTDoQEY3HNV8nYOiLuy21DK854aF51tFI81N1O
	 A9gab5LHN4N+UnlcViE04gQe02IlzzPHB/YDVdiBJ+puWDPJFZOZR8jDj2SyxZ94mG
	 ZFmgwB7LQCdYIUCkBs351R5xQQ4R0K94TTSNBJXhGy8tV1YkUwiNCGmpjshl+fXA3B
	 sTyDS9HSkCE7WvQnmDnNLeoimaPklnu39GWoaY2ioxFN/hC8nJVMMyveSMberAX3Wd
	 vGzAcvh5pfCVGF0YEIRewfZAYMWqLBs4pKJ6stuTAV9do0xupYpdGCARGg6/0x0Sud
	 a2rEsvTYAzt3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9706FA1FD6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177687945368.29143.9775924940455402655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800e9aafd736a237a80adb023e89de8ab7c9f498fa655a92aa7827b24369b14c
Date: Wed, 22 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776879453
