Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACB73A7F48
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790743834; cv=none; b=gr2fmBe/rB+1F08aLci4rwqF/rnyshuw4T/tajZX/7Ejx9hk9avYEq9cGSVgy8QV7HjxtXgRpMCBbTFGa+e7OSL7Wj14hpY/gay90LTMc/I02EnK/ygZOwLPosTquRnq+T611Qgl4qT/CzfpGRkMATbbkS25gZzBQvbK5yMPEzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790743834; c=relaxed/simple;
	bh=AIofzpgvR6qc9ikt0Cf8Yvu4pm5mXEOtFfzzkS6++Ck=;
	h=To:Subject:From:Message-Id:Date; b=uNY3g4SnzP+tMgCcCA4mrQ3BBzyr6dfDL8RNKH7e4Q0EyVFo+K3zXqq0KpglJM9TdPIvUhgcHt4O7M1k5o9wTbWLvgPHI0MerekpRKD66quC7s3i5wh5p765Pfj5rX25sK2uSX8w9UMvXhsK56PCuaOxnab80Jc62iee+Of5n0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPnbpWiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPnbpWiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB33EC4AF12
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790743833;
	bh=AIofzpgvR6qc9ikt0Cf8Yvu4pm5mXEOtFfzzkS6++Ck=;
	h=To:Subject:From:Date:From;
	b=bPnbpWiqHye/IdhWUKbuyRlgfH186Dces+gzXod624N+KlIaCxPX6UoRMI2CBXrZu
	 Y0m1LTZoCzzyqThVOdSRHS/x4MwXwgOkdbL3PoHiLsnEOEFsByJmjZajZmhWMc3jf0
	 PX7Nx09jbwdSIiJ7LT5Q1HhmHQYLD3KdE1M6lNSbrQ847ly/gOKO2QgIapA+sTAkaL
	 kFuK8oKwrUAz2IklKOZtHvifJYIymARpUyYXPWunk7Y/DN9wU3vZh85PIerT0uiM5o
	 xjEC5HYfrkJykHoobOo1YvJQ2EYLkVKFrCdY+Zait28cZYYVRXfTPib6UFlXyAFFbe
	 8O7DBxCmZFWAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F1FCA5FAB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074383368.4169.12184262706334777177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fa4b70ec13d3b7562e4f4ecd4fd3c35f415b5355fae9c38cda687a1e88e5438
Date: Wed, 30 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790743833
