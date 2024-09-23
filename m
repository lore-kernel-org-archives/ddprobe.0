Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5CE184
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727064354; cv=none; b=qlKOOGxKyTnUZb+b1xjnpnP+fBw/IazBQgdN8CVBpgL3mtw46/ebH9vCagMoM+kVD4EkrdkxKfSSdGmbhjhom6EWglSKH5msDXc9Myq6WKBQWGPSMNHmkPM3JhGDprcNsGRTEdTBgbrFtn96jAgaD79RhYgjy9MXPSS7/wcUe+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727064354; c=relaxed/simple;
	bh=jATVwN//Bs+1BtG1m2effJ+/kTkIssBGb7OVE9f0Grc=;
	h=To:Subject:From:Message-Id:Date; b=hKWAYH08NslL9ytSivJwX8jOEEDxZOPKlq8gcIciYldvmhVV3YjqQmsYzuqKvZ9Ch2hUXHVc0H7VjE/I2/rLxsXTtWoDmJWlguDqQ/FIrxXgTqC7YBh407+XPdR6sHcYuu+x+PLw3O8DOMiaP45B8I9v3oEJUlDICzM3bRZ1bsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MX/IFvut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MX/IFvut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4535C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727064353;
	bh=jATVwN//Bs+1BtG1m2effJ+/kTkIssBGb7OVE9f0Grc=;
	h=To:Subject:From:Date:From;
	b=MX/IFvutmpu/D0AJ6AOcgQG+ILMfvfg3HPa5dwvylMU8N+YGQNYroRySeWLHVoLFX
	 wFUmbYGx7k2lNvJqBH1AMnXapyqGLIoTDSFfmF9XFROQybtGxjZD76AUyukkstX5GV
	 9bmPa/OKHL/dN8VB1Yg+uXHr0bXdGaySaKNW5+gBGyjponLbOW/z7ySF37pu1OcAzY
	 Z71k2603Pf1w1nw+KAEjFzSA/X1akCWAJK/WWGM5V1VfRaQG6Tl8UGo6ENagAfuo1H
	 WIbfEHSueBKVd4BD92xs9nC44E1MiNVKEZLjm2kCeJdQPWNAmj/9tIDmf79iy+9qj5
	 EpKbZdL8oGnSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9C9CF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172706435362.9218.2935400353005372162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93bd623056a1a574dbdd550528d92d88d081806bc0f1bb036a9fe2d242f0ec2
Date: Mon, 23 Sep 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727064353
