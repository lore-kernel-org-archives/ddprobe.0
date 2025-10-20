Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6478F5B
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760933394; cv=none; b=cXqwkcjdT4WGMSqeJqcOLjgu2YERIeaPMzL28Grtj/zqXg4VC+e9pxR8DezzDSjLcruvxzMngIVk3aCpwLHBp1WO0GbHLsrGM6tEq5kn1Obgk2zHIccYD8urEZuhWYJME5uCBWjn0uwQgPZ6iD/0CJkfrNN8JjtLMGE3aux1ULE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760933394; c=relaxed/simple;
	bh=ns3kbfHbjTtYgNKt2xW2oVgO/1sQEsx7434oBuRY4kA=;
	h=To:Subject:From:Message-Id:Date; b=FC3eUGhn9lGn/R+fbXuldIsLGqdPg3pHF5N/FRJDsscQT6ntVktvxX3dEi1iGkM0prAvCZeB1n4GtqSpEAe9H7wtFI/Q2TvoeR6OyVCOJvq1MfuGQy03om6sTQtQizea5+kvRUhYgYZ3G0IXQRGtlenWvIuzf+B8cl2A6fqU1U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mil3xwY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mil3xwY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC50C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760933393;
	bh=ns3kbfHbjTtYgNKt2xW2oVgO/1sQEsx7434oBuRY4kA=;
	h=To:Subject:From:Date:From;
	b=Mil3xwY5YSZFsBgayAVkV4ul9hP8Cy360LtVb8HbAyQyTMK8VHzoImvwJPrHYL+ci
	 DfPnbwJ3EcXR4zb4N6sbpwxwGl/hiwhGJIpytSzb2l+2g0bOYq/w0HVLMl0PoEot4q
	 TG3rGUqsccDknH8IW05CWeDW9yAXqLad3W6Ts9dU6XSb2kpHhDlnYaH6dk01/ldvfj
	 qX34VhgpodKhN+WO5NKnB2t04GeocYh21RNpBDFUAPVR6CgWeZo3hwRsVIgdIh5o+M
	 eBbrVFCM1dzzZcx3rn8hKK5P0NVxS343IqEeIbEo/4hIKOOBF2X7i6ict4klLQ4Df/
	 p56iSllWNZgjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94283CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093339358.28698.12945659206724335923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 224d074c9a2373aaeb64c14d445d703efd892301220d9d6f97a64a9375f73652
Date: Mon, 20 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760933393
