Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6D33FF1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767341034; cv=none; b=H8H2Jvj4zVp7ha0Yq3CzD17AxW3FruKQWaGjeoDgr0AdZok7bL+AkF7ysUwxQvn310S0ZLiBa+G6eEZtQXzEZIrBdrKrWp2P8rWxUclGqhB+QvIe4eJSpRpWES+XMIXiXhCKRRff0R9900uBacT95kZKC1Nd2cMnpqbQUhGCdi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767341034; c=relaxed/simple;
	bh=RtaZcvwb8+xnNDEu5UkfL2j8APNVKd4SQFJCReUUnGw=;
	h=To:Subject:From:Message-Id:Date; b=nhNgVsfoZuUzFKI84Kg8vzlfJQkF6F0WZlwYS49KhxTILyOgEkQzw9AmgVAyT0ZBjb/FL0FGcYx79d8VCqMVtqDmei62JtGuSDANpwpeGcIydtkB152or7JrZGLhLJVKIs0NoSDQHMaH1vHMAVdCoGQwMR20Z9pxfcYegm1fSN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iH9LWbZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iH9LWbZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E88C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767341033;
	bh=RtaZcvwb8+xnNDEu5UkfL2j8APNVKd4SQFJCReUUnGw=;
	h=To:Subject:From:Date:From;
	b=iH9LWbZxpP31y1CTqB7RxCxPPbZt079npUtmS/Ss6ZfziNdiRVYPCwVtIHNCg9jww
	 hxX2nVtoVO3QbR786+E4ZzzVpkZ9/c2AYXrkdUj/PxZflLzzpwMbyxsGdWbCHYO/Bd
	 EF9QQMIgEmyl1UremqpK8oiTqT8tYgIozJV3ChUdOulRW9jXNWLEUcskuUy5s9OUlN
	 euEol/1ue334JIHr0e8V5MuBW1cdxMExZfbb0R2m3iff0TrdIA7lA4p41quc6ekxm3
	 iQeMAJltZUktqq1O1cFryImDH1U/+NPtLav5d55ehl5LmDU/AoH1B4UtKp0K3HCesw
	 9raKvdRuQKwAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90366E9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176734103358.7645.14643686527225515998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e4ae6088c476db425f33aa8aac78c6fbc958e49c091411fc32ec2cb01d9be8
Date: Fri, 02 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767341033
