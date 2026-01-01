Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEFD19F115
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767232434; cv=none; b=nbcC7BWFMbcx8hF5GEk/6wHwh46xQiaFi10b2Gy8a3/f/kVvzACVbYBXyihz06bq+8v7ICC2BQSj8SBMWxMT+YqyV2dJR/MK37mcIwaBk6r3gld9wqOQwfyeS4PRpTvwG4WKonbsfbdngaMg5x//XdTyijS5skhVbeRUAmWDNtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767232434; c=relaxed/simple;
	bh=BUmHRPaRzJ8fLD2PzRlauIyK9NsnLY4av6x8GQoG9mE=;
	h=To:Subject:From:Message-Id:Date; b=SrD//pIsbEf5gBGJnBP+4gEXC3LLAVSkG6KI4qTYwXEhWyMRmLE42CiVhOt8mZnxXC8lyDplz7gTBLIGfgOKLkJyc7/fDuro1B2bizEBLST5mYRi9XN8XkSVYBQqFenCyBVgFAcjlBdouEpmVQDPJpmSot6Pxn5ySygTKnPcFN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XibUNeh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XibUNeh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E9FC113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767232433;
	bh=BUmHRPaRzJ8fLD2PzRlauIyK9NsnLY4av6x8GQoG9mE=;
	h=To:Subject:From:Date:From;
	b=XibUNeh43VXgjuIwD493NKTeA2Xk6a21kZcAsoCzCIHIq6Xus4nZOs7JAjprLR9sX
	 USjNJ6YSOTexGIiE76YAED9ZbvdzROopTaEUtqy0UMpUTyrLjEBEk7/Hpn13EUOUri
	 9HQHPuRakua3vfOr8y/yu3Qc1ZzlOXLfpMVrV+ZkrQYBMJZqwc68RxBvgI+IgPF6Qg
	 feXnoRuoARmsUfQTqOdEOFYBTZHwH7V+z8kQr/MGcW+pLjaHjcNY6C0FalUbnAvb8C
	 kIf0AUoRzQeJ4Le2f8jbXa253rbMbIrjNJQlTOIW515TWZHaeJV/DlmuRJq3viXHSV
	 DOTBZNhRgWFTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9566BEEB578
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723243358.27411.12554028165540143093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7464ffeeef8d465a14d209130be7e12335a830b0a8ef2ac6db44c33a1517394
Date: Thu, 01 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767232433
