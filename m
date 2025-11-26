Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284453595B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764118374; cv=none; b=tOgqPWviiNLoMHVMZ0N6Ho5Ly2ST6dbTG7918K8Q9wqdHZKqyqIhGB1Zh4u1Im90LZTMwaf9Vc0ZdFR869thdpzrw58kXLT2aKfhrOv9be2tEKI4/a31BXrRPimsaBJHoFswrXaNF98nKmiEZXQYuaS26Vc5ak9KKm7yMCqeFog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764118374; c=relaxed/simple;
	bh=+CNRVNSa172XwhTCIofjFl3hE8QgFpzbdGUJMFeTDl8=;
	h=To:Subject:From:Message-Id:Date; b=tzxj0gjweP6qDHvbM5tN8mTptxJk9HEaAciL3Mk5J97s3XXtKYERY1cxiYD+5YnfNEU29ybDQxUbJO7c+riVyp6ZjNSkKsJfdV+qeY0VBCA0bttMwfGrqK8PKe4u/6QJwSrFdfTuhamC3O2fsQA+egUiDKl2v6kh+eHqevcNLf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjys2y6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjys2y6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D54C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764118373;
	bh=+CNRVNSa172XwhTCIofjFl3hE8QgFpzbdGUJMFeTDl8=;
	h=To:Subject:From:Date:From;
	b=gjys2y6yk6HIAgsRlwLH6tEFqXP1P080j57dSmuwzGEmZWefbiVZs7GeTOZ/FPokE
	 0v2yIu3HDUor6XGNEKfvBVoP2zWJLW6PuMH5PnlTBpZGUHcZZjriKMhW+EEluQ4vMW
	 uCRueLdVn0qRgHzt1YNMP2tYFQEfLVeFCTOvwO1ffBoWsaEbgGZ86Z3OOrOqWHwoFB
	 h+xRM10E2563ZAc4h8cDFA1pSMagzsOewuqtwqdg0kglTmEjLBqGn5mmXnBfUMEs4b
	 Qbi19ZHxbb2cAn41I8/jZIdITi8Ts3Pf3hUELyO0/5AQDmzpzibKf230BkQFk8zfQp
	 rh9hxlAtUT/0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90790D0EE10
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176411837358.1280.15337077918623266334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac253e6dee4b7bf9424b220e79f2ea6fc802420d1978c8670c5500a0f261f32
Date: Wed, 26 Nov 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764118373
