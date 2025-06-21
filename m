Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAA9382
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750465196; cv=none; b=VmXcyf2zLA0pGGtGR7CftzBNDEV8ikTFGlL51TdzlX2D7o0cb2r7ePeuu1CcbQbbFHT+y7Ky2Tts/f1XXAwgSxAYxeshp1ON85IqTUY5uU0VPCCN1XihIS+x3borScf7coXmnOI8wbLg3PNwyonsRCo7z8gee1/SKN3Q+Ydjld0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750465196; c=relaxed/simple;
	bh=uJr8W5JRtAl91t7UbHooL8w0kiTGURvsCjfjoqqj3Zs=;
	h=To:Subject:From:Message-Id:Date; b=aCNPxwH9d9vFZQvuQrBYUB7srKDhnqv/uIH1xmSSl03A9sddMKskjKCIN67BXcSC0Ee45ZTJ3GYEPENiZgpW9nP8bfdC20XvQjIXNQlln0duPIhuXNMk6uZAPNLmJgqpFyK89JOWwXbODTZKHiqiPEjUcN6kV+Owz7a++PUccGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZA+sBwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZA+sBwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8671C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750465193;
	bh=uJr8W5JRtAl91t7UbHooL8w0kiTGURvsCjfjoqqj3Zs=;
	h=To:Subject:From:Date:From;
	b=hZA+sBwufEwWtJhJQZrcscwnCxP48UdqgA0MVevZOGQmIFaMwKZq4pkz4zkkPnSu/
	 B5sGQYlnvmOYc8RhZbgTWRtzXAQlWnme87pgaNfEzyRPehDFw0EUhD99AC7FM4OwMM
	 +Abn4cMFWjTER7cYSRThDY6hDZqpBZtU0GgJvhmWHutSVxzoaHXsuBH9Blcairg4Ja
	 o1UdatUJUbGUhGszeJVUECWVJkpR1577kMI0Hrciz65xjCE+aC/0tIE7N3MshLl8bg
	 WRulY3mP0B8Py1fm2WgAcY5KbcMCGiAuFyvWwk2H8ju4lXd94TH6HFM0zuPnA2thNr
	 FvsjgU7j3xXWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F3CC7115B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046519357.14714.13261403189298472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38e3b28dd3926b07251c18a579269710fcde2c70942387d7badbe10b1cf5e07
Date: Sat, 21 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750465193
