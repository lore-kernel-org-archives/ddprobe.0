Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8D5A29
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720470983; cv=none; b=n6hEMzMOQq/KNuse6/A0T6SgFePZRGSKP2edqYch/GKgoX+RLyVtfxr84nVgUiBk6pIpNpmAixR7/Z1xjWRA89DfJalH3BxwTs5wL/cwtnQyPqejdmmAsN/5b32R2B0GZzZ66vPreVpYXKmjV6SrPciOYQ5oo/hj12lvBqHZiFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720470983; c=relaxed/simple;
	bh=o/X9HTTbeFI6QGjol+Wqkh2CKADkc9KYt516Rdkjcho=;
	h=To:Subject:From:Message-Id:Date; b=P7ujtEIi2MJqsNEPPAMFz3Hdl+TbhDT15CNjXsXnpLXua5J4/otuv2lsQ/mD3YcvcXQvW7t1ixo0yGcWj9uI4npTJzgj8BC/fxGok9JHV0FJ3yKUERJ4dkTVib8JB5uAgj7HYomtKFjH8pzBYD6GH29iflwkmHaroY0ALz+9dXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6J96ErT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6J96ErT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0AF8C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720470982;
	bh=o/X9HTTbeFI6QGjol+Wqkh2CKADkc9KYt516Rdkjcho=;
	h=To:Subject:From:Date:From;
	b=e6J96ErTpNL7/Jh81MsFCYnOF66Y7NC43Of1vMpHxK8jHxrZXaoQDj7ZcmE6WDVwd
	 Q8kXjjLXw/tcUL/qNvdFrJbWS/OFQWdTBfsF1Do6K5JWvCgNKSmCn9rxkx/wY7LNHm
	 JOl++AArk0iQ/FdlZySU1STf+eN5qXANkt0UH1nSbyGIeforr5UNnvywHvP9iEHex4
	 bEyGh/tUK7qZ720EZCIozOzaBq3D2Uxjs9TIemeAdsM0baZezIjXdDAI0KnWSxQ7Ob
	 1tvFIxwvGZUFoZHfGWa6GsclrikVsMNl9uzazEkSud9is9kCZe9VgECrqq38Pe3NxW
	 tWeunctkPq1kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B77C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172047098280.21368.12927659788910231345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38380aeaff69591ca01356507f1028401b04906fe6412e0fef6465e726c95e92
Date: Mon, 08 Jul 2024 20:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720470982
