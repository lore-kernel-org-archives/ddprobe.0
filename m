Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCE141A8F
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760226594; cv=none; b=OHG6B2lEPevznGOW2pqPGpmEo2lk4CXOuhKy89cy58VipQBJCw0WMKbKIRly0Co+RFdhrNPk/tRv0llvQckwuRTMVrpmXR/9pnwgcN9oCZNQZPL3rzCMvGfB+U9FYPOGUJxDLIRi2E1VjGsTQ9DixvK++V3KxbTJWbFucjkK67w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760226594; c=relaxed/simple;
	bh=2X1Z3br0CHQvutfzvTDiX5JBmqIKXMK8Gdk8l/SUlqY=;
	h=To:Subject:From:Message-Id:Date; b=dwleGhz4yzsKQw7DK3NqKQkLMZi90r5Ebfm9LCdF3hx/lYj90SyezhN6CkrpJf1jw/vyxry761aDSADMlNQ6H1R6ZZ1Z5QFPYBVc/kZQfSvn15xD/AwH8Rzyc3fDNbNkEGnwqqILYoj4MWcmv+mdSIHGOUYTQbjQuXBqXYoJB6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kg0/+LmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kg0/+LmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94D4C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760226593;
	bh=2X1Z3br0CHQvutfzvTDiX5JBmqIKXMK8Gdk8l/SUlqY=;
	h=To:Subject:From:Date:From;
	b=Kg0/+LmCjeP/xDJK4EWJ1MCeXCC+jAtPP7OuWeh0U5uBxnZfaPt0Hns8ps7EaRvtn
	 Z1AMUx34rRNdVnvwyHGxJneellJDaOEZXiLynXloE9/l8wbAKifvjyJb480mffvmAc
	 X42kehwXtd22eV+E3NLtuECzQdJJ1ATs+qHF7EEF2HAxIujeeI0oVGl9yXIRyJ6eUp
	 ex4b8Qp/hWsfZT+5RDrzbdUsvsEzl3hYBlU6/7W+QRk21oDOjuKlJhy9+V6sTwcjLl
	 55RQOHpWsj/XYLnBM9/oorrNHhf8Y3bjBvoGBeSDHb9P80d55IDCZSihXDG50/bqc9
	 hoTWOgAaTtK4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9403DCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176022659358.11399.657792139955825766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ecf938de7af437e4d3adb23b0e128a858a30a5f3806a558f39e7519c335b4f
Date: Sat, 11 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760226593
