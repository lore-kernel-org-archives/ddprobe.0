Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADB91917F1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753121994; cv=none; b=oXb53c7EukHWJ2wm32IkmiV6dgSDr7LxLpXWsg92Z4hTS14FXVQvY5i4P/voTohkglZa9C/lTEyXl36BVrZc0olTXCZrAP5OlUYrIcWemel3Sxh4tOA4dz1vmJTkop9EISoSbaYZDMZmsLFJmf1TA8Q3hTDkOqixh6xLzXCNZzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753121994; c=relaxed/simple;
	bh=GgRCFTOnAextyskImZELkCCO4tn4sXa2S75fIfk7SB8=;
	h=To:Subject:From:Message-Id:Date; b=fm/auq/XoPCCW76SYxy+iC07d9Xk84nrxCI4W1S8n4/oXyEoJ3cImSKzi2oQ1w6g4czEAqlJI+UTq/2xf9g4edsSzJiV8+PwtIMdutKFwRcekP40jzlZ4aVi+iUp9wqUWeOYeprb+TZ1IBe/+UeJXpchHyvVDXPOoa9/ez8nHpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nf8sa4Nf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nf8sa4Nf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBBAC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753121993;
	bh=GgRCFTOnAextyskImZELkCCO4tn4sXa2S75fIfk7SB8=;
	h=To:Subject:From:Date:From;
	b=nf8sa4Nf2JWoAmR8lovC40iv786KqCQxluXWxOYJrYG90RtryGXy6yeTIwuLjQvfs
	 ArRURx+IiFcXs+X0T5B4Iw0fQY4TQaq3vUWX7N5d4kI5nAlq2rPV0JFM5HQe2orKo6
	 wNga9dM92d11nRQddQwSanmynVmmjSwyl/M5mFw4z4jhpRc/GWB4R1mE7yqUTXy9+R
	 JvQutm6/6sWJqKerREBPfW92wYNOIWbKfpm8ZcQY0GMCIyl0Gvndmh4Z/X6FYnd715
	 S1wS0TLsPigBeRarF7rNN0pnTnyJCl7VJKlA6+aI5HINVrQpJ51rmEM0ebSZxu2wo9
	 OgkTjOJ+te42w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E84BC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312199357.8096.3849866276042937829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfc575819223e4e938ab8d11ba040d0e555558c332c49e8b0c950111cdfda79f
Date: Mon, 21 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753121993
