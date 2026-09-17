Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF554347BA7
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789680635; cv=none; b=JcOw5i7MZKT9FfIrXOIzSp+7ZHJsSBJ7zzeWq2grW1mkC5ienulRklGflLraHn6bGPrymNUQxyKIPW/OmkYTtJVGQIcmt8FLZfbGiHz/36Iqala4DQIWRLlnlU/VZUGFI0f2cTBe7N5PJCdNJK4/xF8FOa6/KEuGV9hw5SjMtS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789680635; c=relaxed/simple;
	bh=0ugohalgtrMnWJIXV+UbZzgQpEQ401hUaEZH+H7HfFY=;
	h=To:Subject:From:Message-Id:Date; b=jYbj4kmXlVWf4HcuWE9TGyi8dpbQEhYbKDaa5UgsJGhFexf4BAhogRong1Ccw5888f5b9zlx7yeDdVLWdZpPsAeVf62kC6FcXiSprCGsXQ/Zl34CZgwCqrkyga68QWZ+6sRaVpwYcsIEVMONDQn5Ju6aX5zCPvn5FJ+T/XJnJRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geHL5czZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geHL5czZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E6CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789680633;
	bh=0ugohalgtrMnWJIXV+UbZzgQpEQ401hUaEZH+H7HfFY=;
	h=To:Subject:From:Date:From;
	b=geHL5czZ7CvaPx9V4F3QIAyYPm/a/sNvQMqTFeuq2tPhkdjhH+ozE1yXXuQ5MyBqp
	 Nht86/9QpUyEXan2h9P7iZ41lbdm6olX/aVaOkFNIy/Ja22i40UgVUyHHiOIhdqofD
	 sPgc/8cqPqE0Hg19LCthbBp4w8JlKaCb8Qrz64yzOxe/mljm+3szkQFC8a5tdjj6lG
	 MBuS3Sgahnum1nMYAxoyMEePn155j+yx4xsQGlL9TqeM6AAGJREm+ddxg/J6TUGdM1
	 E/uIjI7QOxjq422NDPcPq/NwiboGZExAwTkrKIxDxwgrELfK20VqLrNAXlypyzIQzp
	 Thk3/Yrwn0hKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA61C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968063372.11825.843218551050543275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f920cfcebe94c5e0e094e4efc4091b9eb14bd6cfb32cc8a8876dbc2c3a23a69
Date: Thu, 17 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789680633
