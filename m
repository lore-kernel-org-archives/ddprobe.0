Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DF4A92E
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759115994; cv=none; b=FUe2uPou6+UVTPSeIxDOh9lwmvA46C6Zybdap50lFOqT4x/yx+/aDdn2s+BCjv7RXOsTfutVxVsJogNoYJrAg8HILAgIXEb2ftg4F+0HiVP8aDw/7e3nHJIQZCeknayIgYXkDeLwHLuAmzNRR4x2hHvm43YZgXaEb8jSLwiI8OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759115994; c=relaxed/simple;
	bh=YtRqg7E7JuVXTKHTLv3lWqoj0xKo+3WFgKIUNi1rXf4=;
	h=To:Subject:From:Message-Id:Date; b=uviqZvmPqN3zL8JRgokaPaE+RUXaosxZht9lZyMmISuplAzo33kueEy+f7HYh/1aKh5PpIybOR4aLvlgK4ignL8tSvfT63Ilor7Pnuzfo7z9j/3EiWFJDQMOex+UaYxrOt4dId5zAYNDxH2kmT3cghoTJB221xvAybUomfH8VDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icnJbDy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icnJbDy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6150C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759115993;
	bh=YtRqg7E7JuVXTKHTLv3lWqoj0xKo+3WFgKIUNi1rXf4=;
	h=To:Subject:From:Date:From;
	b=icnJbDy6Am0CPMt1Zps9w6ndWLocBQOquQG8yhMTj59NAF7m5mx4LfP6wdvoaCiiL
	 34Q5+1Ol5Z9ZbHqmgtdrqycpFzJonBT4oT6rIal8OFO6lrrUVCNK7WL2xVqFIqfLEF
	 ykatxiVF4LcmdXSaXoKNkU9ysdQnZVwjtibh79NxvZc/iwobYitLX2WaMvB1lDkeKW
	 CrInStdiOeb0AD0Zb9GjVkyH5e6iITmOu0gMzZhhR3znjHq7Wr+OLL62Gytl/n79t0
	 NtEsIwfXxUdgjYc7lDh35rltJSQ5fGxMZa1qjmCatLZnO9iWdxcucPM7YINYK6Gkct
	 O5tpeiioUnlfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92367CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175911599358.17064.18405742773027432400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bfb4d6d22c91d26843d55e749fd447de5d7f15ad14ac3c7c3629afbc9e3abaf
Date: Mon, 29 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759115993
