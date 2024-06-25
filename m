Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470F45EE97
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 23:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719359003; cv=none; b=EE1lMpmppzAlE14SkYs7T8veMhmbkYCx1HW+rhSIgCIDsWAC89izq1wu4OzCNyjrWkNuJRx7pM8QvkEmVPnyp7C62dCKCBqZvlhRKqHg0VMcmwf+0YX55S72/3Vr29GHy9XnmAMpfm1SGMS2Cs+9PNqHWHj2nsuR2KkogrGSvpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719359003; c=relaxed/simple;
	bh=KPL06oAp7qUkOSjKbJ/v8UKSlD19Z9dLXuLcWqgOAMY=;
	h=To:Subject:From:Message-Id:Date; b=G7mcyd3nzln46hh1wi9pVrPVl7QxOFgQyiTM6ob4xMZQFr7SpDeNSCc5VzVvZ2G9qQUjKywQhbdcLgCFhV/54kRmGl7oAyWBQrwRdo9u0z7kM+f6JOvNZJ5Tbq8zYkMAe8ejU1o0TqQgEiBZ/oVZZuKIWJoqxfJaWyW2JZb90us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKt1GRNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKt1GRNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2159C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 23:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719359002;
	bh=KPL06oAp7qUkOSjKbJ/v8UKSlD19Z9dLXuLcWqgOAMY=;
	h=To:Subject:From:Date:From;
	b=ZKt1GRNlnsCTj9MMNlIJAvWHbJkQ2+IpqM30pWEmeDOHCYfgeBwGHeTIBG0UxtQJE
	 IDh3uXFo/fcNB9hn+rVOUX6L2+N6gShcqkYtAojgSpiOGHSmofFwDO3cpQ5AfESM9c
	 VlUaYjp47za9RXc3VMzm8Obybz6+XDXTrPIBm/2jDSZ6lsDnQHqMDg6JAwoHZJTa3K
	 QMVaSiUPi/c0rnNzo4L6zEUkfoz1JBRw5KMwee+mMVjiGCPge7nLsaXNmj2ymAAQ5t
	 lF+UXZ5iU6pNvItrh8lauLV6KXkWX+JLy+WEQOfXij5p/k2T9HLSELfT/Y9uIWFHwm
	 /QDRl/fHfFJXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAAFC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 23:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171935900277.20390.1165681650987268499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49e821d759f5808939f1255e791689231b5edfce233d8c44877d3a8d846bbc3
Date: Tue, 25 Jun 2024 23:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719359002
