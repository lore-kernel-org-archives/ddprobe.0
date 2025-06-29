Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B4227456
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751209794; cv=none; b=PiMjlKgZG7M0WORZRSsjMMcKPpnn8gum/+o28btfzXsfYLKLdbGXXqDM164VhehDAHJY76T8tazK+rxgYk4XMgHYmJfV7Nvey/Es9lPWbjm+u9/Qr+jWYfQ77to0hrPpONmImZyHLfP+Bf9QA9QUmHdOJeFhmHKz6bvXSRPF8ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751209794; c=relaxed/simple;
	bh=CfMKbJcwmVBu4Fq5QgF5Il56jU2ZXAXBkf3B6LkR8tc=;
	h=To:Subject:From:Message-Id:Date; b=CcGDQZAFH9/Hou2YgVGBl7EmX2KdglNogrddxgaOce6Sn4EGtHMxtwpFGqbObnkIAXXNllnMYs2AK1nxt+76wDR6zi30kpvpGEmPFKX/sGqmwA+KfORuerJ5OapQIRPe9iUctPbwg2fTpPUQz1vKL6gtgH1kkeYfreaAHDuNAo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBVGn4A5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBVGn4A5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2341C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751209793;
	bh=CfMKbJcwmVBu4Fq5QgF5Il56jU2ZXAXBkf3B6LkR8tc=;
	h=To:Subject:From:Date:From;
	b=GBVGn4A51UkiLf2+YqEiptE0YRruoXK3vOZQQaZBQgZFWlA20X/S5MOhTmH4dnncc
	 85l3jAxwsRZPL00BILy6na6O+VFNtAzUqMYItvrn/qRiBdsOoLaF3Z5/98hExedtL0
	 zt+lJOXshSVjvzOURS29AW4JvOBW4ZPIafABtIdn8M9QsjKUxeKmU1nmpU1NYPB8CQ
	 RNX/I9mWUI0gWJXrcF5vMysQOdInxd4aRb2UKLn4C5X5CcKX0HopOrCj+KEnaBKLLB
	 d+LdihIKMvGJprwB5jLcOq0UtlImzPlSxB04K0H+Jzxv573UyLX+ZjrayDKuNOA+Z8
	 CCg8oXa7hYTUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95985C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120979358.1411.3000773441637465908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f219ad88385b775aa9ad23d20d4ac261fb5ab9e19fbb42cfb7474014ff880e
Date: Sun, 29 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751209793
