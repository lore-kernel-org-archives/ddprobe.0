Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6691F4CA9
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771750494; cv=none; b=VTmhcMeUMMRp9a9V3x22bGsyoOi660mA/hUwkJMAhjWq7oK4LCbCPFU0z8ZB/y5slNgWLOX4fHw7AEesOcBx38tU73hIvnmVvmt30KKi3RtQOkvcnbMwTIUWt+o+RnELXsUNZwaHp8CsVspjgIpGKK9Zcv/kukhPzBKF2iSfhnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771750494; c=relaxed/simple;
	bh=9ntAPeiulROcEGnO8sMM8GUeRSxuD17Hu0OPv9wmm54=;
	h=To:Subject:From:Message-Id:Date; b=t+eNaKOskaN3iZE/sW5WtZ2NRERGViIDVjrLZRIs/ta9gQh1JApGpzcOtWH3s6SEtCdNN47zl9wzoGnYvq0ivkNH3+EjBmLZiPlCbQGTegLRbcfgrGRT54kYas+qof5kV8MXJXMpf45y19CHNeGZvQSJAQKSmSs/YcRlmG5LaIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRpqS8wu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRpqS8wu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD00AC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771750493;
	bh=9ntAPeiulROcEGnO8sMM8GUeRSxuD17Hu0OPv9wmm54=;
	h=To:Subject:From:Date:From;
	b=pRpqS8wuTt0zozWd+SnJtVE1V+H0cXMq5/kRyUKy/d3E02fc2J0cxD405dzC9oW+H
	 N9gh3KP5ZY2yu3uWhLyK1Mj4na2uquu0lOmOT4a+YUF10m+14JEmsLOGL9/yXLCLg1
	 JWkNEy93ravRjDJl42R4B8/M3RlQiZqW3xRRqe3N1QTb635yVbOef1aeUGO7nVvEcx
	 sr1WB4BznNIqC5KF1I8Zi4yuNFgwQZrytR8IPaMWfWFOly4Rxqzc1mk1H4ngDDGRcX
	 cfFw9DZlk6Xss5crooEOLoayL43y0NahsvLNHurdaOo4ps41AbcLjT+VUenecen0Qn
	 VibSvQ23gH7QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4CD2C624D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177175049365.31734.5946293476801399852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6dbcef54879865003c240a8073f3c9855dd5768dddc525c55a35a78d296f84
Date: Sun, 22 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771750493
