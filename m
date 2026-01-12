Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7C81A9F91
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768197834; cv=none; b=Bx/OQc/ohs8uGWgOVmxKFKMxhn6Z5IPF09Zf6q4zDLrV/QUO2kyQmitTEkHBzkiQREvqd/c1l8SQAJdZYyCYL0QI5TyNMRtBF61ebGX4vgUQ4foI9hqXm0Qw7kwKIiBlK+JVirYAslYYsJdpcnlKC9sIse8QW80WLo/UoH0T6lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768197834; c=relaxed/simple;
	bh=YdCzzwWuktXCaNpR36tU8buA0OyfAUdbkRb7gpmWAvE=;
	h=To:Subject:From:Message-Id:Date; b=Sirh7Uijn82PK0VqfG8aexznMc7NjzUPLO7ebZYQRnhFB04oyTz0rCCQG59IJOWh8KDb8mlyh+vnozkicZPKwNrq/0oGrJMuHYYwpQHeLn0WcTiTrcMxu72BX98Vr2bp/k8iay1UXvayMI3aC4eeNen64//GY3lPUZgTl0Lm/hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILwmp8Oz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILwmp8Oz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6F2C19423
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768197833;
	bh=YdCzzwWuktXCaNpR36tU8buA0OyfAUdbkRb7gpmWAvE=;
	h=To:Subject:From:Date:From;
	b=ILwmp8OzPTx5YKC+gLrSjXRnvjcggsUFJ0fdl301e6baqPb78mW8tbq5iwdCK3GQI
	 ZTi0iMpJiNwEUgAkeSMF32VWjbTD8KzQAmIh7Du0PEdUwbhhN9SfZ8OLaWsvAryaBu
	 1DBST5oy8dasTzPA7xipl75iiRHGYNwprSZVJtR+t8LchhkHtB31ShWscFT1dGoQjY
	 g1dYIwPDX7FGxdQxNcInlfbN9c3d0oOQjPApYXB7EmyEvqMs9PhaRKKcztAUgFU2NW
	 TaKUui+HIwSxbVOba+R/fX7oCu+KqCq8z5bi8IAwqHGYpXLAt+GiENRdP7X6tASZlL
	 xON/WxYZVzQsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB22D25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819783358.18865.16197919878484294311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98bdc7789fa1a135519d726f1423d94386c2b4de3651d160a20d47d4822c5ae
Date: Mon, 12 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768197833
