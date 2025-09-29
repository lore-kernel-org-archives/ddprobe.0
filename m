Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86AA1F099C
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759118394; cv=none; b=fUSDPd9yZsFPkD90xunzJRoH5we2J1tRIddf8m1qIwm+jartVpFCLRHpZUBjL0equ2kyIjpAdUGYJF0bA9CU/y46WczAHgR+J1tx4dMf52n9FjDwnW9xM4wJR0OmsOY0IMaYThsV+hxDAbM12p0XH5wh6q5CDWA/DHDizDrD1cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759118394; c=relaxed/simple;
	bh=AgWcm/DsjV5Ok1FFbCFnozp6VGCtGSWix/tK1nMavxs=;
	h=To:Subject:From:Message-Id:Date; b=dDJNEDQHc9NNBymun7YoKPFe6/AWloiwg7uAXNE9aOVvExUCQxtIu5jjyOCB33uPEg7bUesi81usL0IEnVn8YnUFnEBJfGFspVDGqJmVjZHRY+ItV6SQ+o6FRzax4PR72sgwBnRS8F/Yhz3C+Qh++XM7cMKgsiNqMqJSRkArkNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNwiARBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNwiARBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69BDC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759118393;
	bh=AgWcm/DsjV5Ok1FFbCFnozp6VGCtGSWix/tK1nMavxs=;
	h=To:Subject:From:Date:From;
	b=fNwiARBWZfEfBYZzyzi0qBvWzFN/bca9LVBBc/XOtdYhlX2N+nvCm9AvouZxAgvjh
	 xybZusAvu9SA6P0ABK4rINitsEC0mY2TvfChMKAjrgSMUn3xZ+/ypDqKFDvuR29iZK
	 Y9E1+PM6+OgGnxb+c3gKVoqcfIoWJd+rpdrvw6EIs2croWrRH2uzsSsFOXml9rsGcG
	 O5AI+9eLWfwvD34rZNzQy/cezfJjsMl3I1quVsr1WAkGx7q5oB+7rfAdZ3+H+qgTiO
	 x54TntDfgRwI+Fhkb2gGX1Iiw/sOALgX1V7zZ9XZxjLfF0TtxGiv3V6pV9qqkwiMUj
	 M5jRaCrn+jS1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C5CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175911839357.21132.7472574694283589262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c62de5cc44867c62a6562f92ed593c0e0d4ed920b77630bec6041982625b3d
Date: Mon, 29 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759118393
