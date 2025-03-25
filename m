Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3227925F996
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742921994; cv=none; b=ee5zO65lTod6mWZg+YSrDMoyD8D2tVomocdkh+h1LJKKogSENrBaLYuT6BOeXATissRwsm/JR3q2KbPYg01w8Mr6txoawqUnwRQz3ZiB01FivZjyoWHIrlr60F60YN2n1h4pZUj8ju1IWrOhtxf+gLYfYRH2sGKXRWxrWPWnErU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742921994; c=relaxed/simple;
	bh=VUOPlfzT0zlG3T4cvygdNKkhYzT4EEmcZHDkA+AmkQ4=;
	h=To:Subject:From:Message-Id:Date; b=H4TNRCXnGPbbxw5efCY3HrWC7JyeL6SiRzl5liVjrIE3tcmGMLyI6F7cPcaml+6E+fOg2jwik9WKMhqcsX1DOwrU65nykBh4RQHHx0jm8UoyGvf7dIM0MFN5MNh8G413ovwPQHo6TAU4dYCT/DsMQEOp/92DTHqAwB3D2jsjijs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUiWBkxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUiWBkxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD6EC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742921993;
	bh=VUOPlfzT0zlG3T4cvygdNKkhYzT4EEmcZHDkA+AmkQ4=;
	h=To:Subject:From:Date:From;
	b=qUiWBkxHSQu9eZZpzHmHnxNLxA0rYRwPdKt7iv8MGI5QUFoHa5ymns6gEu0rk+RgX
	 ieesQ6yOsoYLP8sqrmY30AMV2wmr60uba0X3FuS+yc1yUtWRbMZ+RjeYpdufCnI2Zv
	 zRh6QBXY73iaFPx9Pe7yB3q1rxEJGwM0KBqpYvwJByZHFfzzJn5AmX5fWHNtIsakNr
	 47AVyksloF5dIbTMK3LFx6x47gLUCzCfqD68qJNoW5PJQWgKbGG6ZMmcGuxfiD7nac
	 1k/qFO84K36LOwXZ9i5WwPNmvH4PuhZj+vNn8AZWDFQfiO+ghkbQTg9RYEngaZZp4Z
	 P4WcN/dpkFh7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962EFC36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174292199360.25031.11807853650255913093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877c6edce5e2afb32337e24a67147be4f526f294bf01fee8c8ffe8977dd36ef5
Date: Tue, 25 Mar 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742921993
