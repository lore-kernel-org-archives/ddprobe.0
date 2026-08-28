Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFB134CFC7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787903434; cv=none; b=hsSIrzFGn6j+K7SBvG7lPis1K6zbw02jZeumt7lBNUkedWbVVXHpbA9jBL+20OUpbvBp9On4MqJYHZ/cUJM6QtYKUH4uyc0dZ4d+8J+CFCSdj15WVpHGNxTm9fm84wtf5g0RRYw9Ka7v1HRvEwfASXwgG5EgJfD8MYGwjcDN5xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787903434; c=relaxed/simple;
	bh=Sv22w+DSpHTqhW7ufXSsAX0U8WGY2u9bUWHVAwi/KYs=;
	h=To:Subject:From:Message-Id:Date; b=Yq4HwRzMXsxKnNBfcxxfL3kRz1AZ1LgvgbybM3cIBbHsXsU8xohUsVcWBVNOLbFy9sPIUS5d2rAvuTUia69ldexH0NPRxzMACCiHqKlwVJEkJfXuXfmsNV06w6zx9I8Jzkyi5+AsqBJg7gX3OhiIhWLZymfXdxK2DRaLU23KGQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtN8tlT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtN8tlT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A17C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787903433;
	bh=Sv22w+DSpHTqhW7ufXSsAX0U8WGY2u9bUWHVAwi/KYs=;
	h=To:Subject:From:Date:From;
	b=AtN8tlT67cuZFMnj1nwU9+ntZWTaXSpQqfG5+o77CNOSVzaWl6vI4iwV4lQFZPYtP
	 o6gpn7R9Ph2qqy4EyaXzW+LoR2HiAha93xJ7Zz7G3llC90bUBiZX7Gs14UAqlXKoqF
	 HSiXJoS4++MjyLqVIEwq49YyDCgCbgoqAbulnttuKBd9B5mAZvC5t3EAT8dISet1DK
	 DfdA1s4OJODEW43LEImxLxoahpRpEqWNICrx8vyCmsGh0vQcdMNOB84KCcELkLwznP
	 MvsiMAoOdCFFtKfov8pWFy/FGVtYXL56JJ7NvK8LsVFNISLSHGDpQ6kkOlVictsNhO
	 LZrou/+atIiSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB59DC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178790343369.1428.18430678292482714733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0908f50231c4c3410d5506e14df4c57d98fc815eef7c511520ece391515c8c59
Date: Fri, 28 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787903433
