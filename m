Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3618E2AD00
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777256254; cv=none; b=irqbrJLR8Xb74p3OuaLo+hQqm/8OvZQSuBJ1kirgi7F05dDAWMgyhHsVgZB0ISUpufHjQG9cJfjlTkPiJoqPI8IT+cnJxf6nsrZ0qJNSvGyCcJHTGz9boAi0p047ynOa3qeDom9cTtnSnB/6rjXGXv593uhj+5UsqAmexsOOmgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777256254; c=relaxed/simple;
	bh=scTtzE0Y9tEmFlv7h0pjclrnbvwKwORi90ud7ef3aGc=;
	h=To:Subject:From:Message-Id:Date; b=mUS8opuh9nptRfOOI7Ad4zVSwqDX4EqtZJX36hNM+6TnoF8wHgw/HoEOz7H7/Obr/bno4cE1X8n6JUrz+eCXxlLSBE3B4lVIUe5bRWH/ihUi+gTuCV/fOwC+IYCAOd9DOm1YTQ5G+Mbv+9tv0aAjgkjUEaBN3SWlV9EBh4YWaIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnYCApG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnYCApG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0EC9C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777256253;
	bh=scTtzE0Y9tEmFlv7h0pjclrnbvwKwORi90ud7ef3aGc=;
	h=To:Subject:From:Date:From;
	b=gnYCApG98XoiIyTGPACQqhHvrrba0iUhS4FgL9k5SQeP4yROf8J1oCVqmyJLI65qM
	 S1B0q7bX+cjo/0YWHSjFXmxf0UDn7PAetepr7OA/nQRNOK6uwXRxdUQn24swaeDQub
	 goIpZ/2p+DJOvgOpyrf25EXSjbHCCa8Iav9HV0yYBpOrIT5ypLJnl9iMAuchHaRYoZ
	 lyIOt5ISKq1vO0pJOOR5TCKJwYe9FY0LtjzyK+9lmoZI0DJmqVq7zGa91SsiycfFBo
	 KmTkpLD7ul8KZVYBbMjvHUDSZ/0OMsZVa1iCQwMiPJ8s7ZIMwF4KYFgc6+RrRzhM6m
	 nZ+ldV4VzGBeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFD5FF885D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725625368.17697.1106409028266597252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48405e9ef71d8774d6521d54ee5930dcbc7bcaa43f5cd690f1f2c513f03270d6
Date: Mon, 27 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777256253
