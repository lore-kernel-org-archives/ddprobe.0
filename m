Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8153F4A7CAC
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790860834; cv=none; b=ZH84I9KHywY75IIfatpeyqJslHUvvW1FB3usXyh8z3/Kba9rzUXhGm5+MBhWJ+8GNHzg1rBWh79aid7PKTKhnSQtMXhi5kqiVsNvyI9a/Ilbkz8S7E7L9PnpIwJidnemrPWosC+EmjfJigqwS2xwb2ZQQhFybt7UTdKm605HQhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790860834; c=relaxed/simple;
	bh=zILhxb0H4vAto042t2ErvyOf3B7ykEF1RzrYfQynE9Y=;
	h=To:Subject:From:Message-Id:Date; b=geK8iiEqmQIrI2Olzfab8zRYt5lQqJeaqu8Ib3Ek71ww1oGuPzzS7ntiTJkZerKqp5FF1LToA0Ve/5kev9ajNQ0UZ2W/f4phWieyAEukJYpo2ruUzAKtJ2S5HW0079RSVHBbBr+R9tXVDHfcuOhajtL7/MVr+kULySJL5RpWYOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hulXG1db; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hulXG1db"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E599DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790860833;
	bh=zILhxb0H4vAto042t2ErvyOf3B7ykEF1RzrYfQynE9Y=;
	h=To:Subject:From:Date:From;
	b=hulXG1dbqJJsnJucMLwpM4k/t8JoTMp0nm1rbAHRzYuc5cVTBxQkBx1g9kIGPI2vR
	 5sxIt0YY2OWWG79F0nGskTFJp8YzbCYyhoVbzrJ9j/jbf54OkrgfO6VAHzJFuHkMxr
	 XE8AdELGqMyeATmipg2m6K0BqU7Kgn853V76rxJqOp3kmgzz+cPOtxmMuxhwyWBTa+
	 9dNhAVYn0TqY6doCvTek0PfvAoqs3+k5jFOjd3wGT5fOZEWiGx87SHJzWSNjk3QWPa
	 cqI9Wbg53wGnviGqV4thI7+YRoMGK87rBx3L2cuUa3we9bVgb2UlWkXxRh7lvJpoaX
	 YzzmxGRE2T41g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA1F1CA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086083374.24268.7988804658110437820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a565eb4b2c1876750b48d2723b8fb78ea50a88bd76bfaa6b4e20f10162208a1a
Date: Thu, 01 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790860833
