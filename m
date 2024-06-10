Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4561A55898
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718006843; cv=none; b=LQBdksfe9t0GrMomLJpPIMiUFPt8I8/Ls2sh9S2jwGqzFMxUHEE3d7CuqyUnVulvls0Ufb1PV+HCftJpZpTp8h9M8ynC4yolMlLp+fssscv7P/qIqPhLsqZa0ahpssFAbUJSO2Y8OZMa7OzyHIdxfaFOs6Hc2mlZY8hqg4WAUAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718006843; c=relaxed/simple;
	bh=9L4lGevU1+cMqtzXxWdQVOquNuL00mxVLw4udlHtv9M=;
	h=To:Subject:From:Message-Id:Date; b=jcwcMe56tfsAR6jQi7lqqBAL4TR9GlBdPU8ZK+g4ZrKjSvCg82egc3nL5Otp4u3nOPLM0kD59/EGf9sG7bKpsqCbe2R7hYZRyaWs97M7JNC7WpxHr/x/KbRCKPWe4rxKcayaY0d7X9S+K/earpFAzNTSBG52cOEJEvgZVKK0g8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqy0oSdo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqy0oSdo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D043AC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718006842;
	bh=9L4lGevU1+cMqtzXxWdQVOquNuL00mxVLw4udlHtv9M=;
	h=To:Subject:From:Date:From;
	b=cqy0oSdoXOhud1KdMeZSJtP2l04kxl2txyczZaNoWfuUQG9yYuCVozL+xfUFRVGho
	 yIxlk/m9AdCYN2Ol6Fn/Ru6MBokzVeQsXA3DIT7YgU0ncn3v+GTzGByBiRTs7VxXey
	 +kn2xUduGIyYDaZAXt98fViQfyrkDZ2kOeefTn9BiX+raEPzREuVvmc2vcSHsZQtU1
	 SnHI3qz4w7oEzlihsS7NZ00BPmtABTHvFa/85tTVRqLA84hmlaTcTHy7KviVrvzP92
	 mriETNX1qlKeYPbF10rZ0GM9q/hzWHGt1Dh5kZpndOl7o8dEeYuTw2GjAfFP/BVjnl
	 X3bHLsS4cFPDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC5AC27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800684276.4531.10071946099010005994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9088461b937dffb10cc8ec38df6a4f80ba3698f217b201f8e03b21da5bf661b
Date: Mon, 10 Jun 2024 08:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718006842
