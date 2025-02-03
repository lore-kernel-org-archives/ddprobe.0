Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D9020AF8A
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738606556; cv=none; b=WsojpNUyIT8uNq1gwTKZ07FJdc0sOzqlQs/gaLVcVdT3huZwkXgumAfO15bLsfRJltsdwzGPQt/PH3ZHSuKob02V+b72yq/jNh36MLpVMJ0+Q9JycQ7M8rn6q+6Lbt04TZTAZaGD79Gwbc/3I+HNtkh10tVLWYDk9xQk2xV/yFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738606556; c=relaxed/simple;
	bh=AP0GQoX3smApMPlzRLn4X5Nrq8LGwNmYE9ZAYdz7JD8=;
	h=To:Subject:From:Message-Id:Date; b=mO9yDIVD+1q5gMDpl19T+7ecV2DdWEpf5GSDltYOqHjS4SE1b8O+NQQycElgo2TCnYjcG+GoNDq6lc+2hBSpYdfb4esLBvakv2GYY0DzDK4iqLkWjrOTq0XeYNyMdT0hR3W+B1d2UpREOItNvYyh9NHenjqx41PK0WLjW7Say9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZj6xP3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZj6xP3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF04C4CEE2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738606553;
	bh=AP0GQoX3smApMPlzRLn4X5Nrq8LGwNmYE9ZAYdz7JD8=;
	h=To:Subject:From:Date:From;
	b=rZj6xP3m6aPvcrhiaVolWw3kjYC6Jnig6S9RGWRVCGWqQEvYJOPKXOcwKgfEXK7qk
	 rWIWh1fBqOYtnyyVX38vivrBdwm2KtsA3hrWQmFL7ZI1CBzwcMNoYppNWuqtwE/YMc
	 JXRFNercVGk7T3Q4MvkGhfaB2KBqY1s/2iK2/2WD4mXSa/VpwmC8qpn+QEsbSGuHBg
	 be8UKuJ43EK9FoArjOulY99zBNtcoxGHLw2W8lRKWZD/IWoQByG7ZraL+lZMri45s4
	 zycrzyYNekauqAhB+B35O8/qD8C53YCag6BmrxMx2wD4MQPJz4wvJHwJIzDzXdHy05
	 BRZ0pkG+t2XEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9090FC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173860655358.13642.14783822674592964749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a9e1f1c921d271ad4c751b2dad139232a7e041bf96e67fe07a24b7e2104878f
Date: Mon, 03 Feb 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738606553
