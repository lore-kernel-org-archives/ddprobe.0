Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F1984A3E
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 13:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715778743; cv=none; b=YqWCinjPwkXM1AsDbUL2VgJqtPmsRdUisws74GmM0PlZvmO3KLEzIsQIib7fugoiy6UQO1yodIApGl32K5wMhw0KgsCdln1+39gV+tixPnmEJQqCc/UmvkEpjr7MTnE3eeWd6vm2Ioh+pQBZ1zwcqtT/JFQ9nAeGw7gaLKfvHgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715778743; c=relaxed/simple;
	bh=tazdqHjxsoIeJ7Yb2PlbPJKjEm9tyNbLSKtl5DYCxfI=;
	h=To:Subject:From:Message-Id:Date; b=VuPW49sK0haXwWc8jYgunH4Qo+4Rz7UXherXeXwYEIGdOXUlt4/sdqa1z6NM6Z2UIS62L/0Tktc/JrPRFoI9CEySmmgi69mbR4bY7DbpJ8Snd54YHeArPjIkQ4ZAMTvB9SjiIsDwel5bz318JJaBKR0bsrYjgaNYM84ltsOacRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAvt27lB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAvt27lB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF612C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715778742;
	bh=tazdqHjxsoIeJ7Yb2PlbPJKjEm9tyNbLSKtl5DYCxfI=;
	h=To:Subject:From:Date:From;
	b=fAvt27lBe0nMzwMwNylNef8CxVGxkw0bpVyqvsKfcMCh+uSdRzPNUBhHbNjwcD90U
	 aMIdHZjYTd+U5soppdiWzqsd5A4LFjtvY9oP/w3iZqTLCIcFxg1bGLeVxZMCG9nYdg
	 PFz8IJ9HUovT+aLPVL29pwqD8s07ZgRTo499kd8Xf1L/UfCMOZa9ut17n00yzaKM32
	 E1hHJyoixuy+YByG+lMX1Wm1tBtRr0ew0CkuGmjEWCic2YI991zRtdoH/Xnvmktfhy
	 frHhLCPo1pc4VJsIKm8aJEKFNsXioo3zblp8M9HCvCE3hkShhPEnqZMDKP4foTk/l+
	 iR0U0IJYOQMew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C056FC25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171577874277.31410.7925592811033055066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3933b61ae8283b20c18a6cd9819a976872b46fe21cca33d4d0a061ef07543c7
Date: Wed, 15 May 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715778742
