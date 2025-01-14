Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB40243357
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736837154; cv=none; b=celDdjt+NHaEax/dMpKPU+ElDuXDIvZW9ZMrkJtBlvHacgvbjszgYvd7vsXMCqzhyj/gDHPdKkoj9ISKsCZpZtexSInkjqqdESpcHWpi28R+vFstPBR0+Em81+tNwrrSq6gDk+bv6uaoGgAGUJBtLZcDGj5N/yO+NM9z9C7uvM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736837154; c=relaxed/simple;
	bh=8j2oVkUx8RJ6UIL7Rts52GE8TTAkIUOlfBF91GUmj6s=;
	h=To:Subject:From:Message-Id:Date; b=MA1veKkhap8LPIqUWAJXtxqxGGdEk9Qs4Qw2fcQF9QRE7x2ZxHrratOpkERBMMXY2pK5y/P42h4pRpMNFBg7AnPhA0UuVg0nX3RpG6zSFDOTzqgZcEyec2YDxR+OAMXXvl18sVwE0BsMeolBbRSZGvpV8z9UBp3IlGc+DLdDdX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZH2Ickt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZH2Ickt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B52C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736837153;
	bh=8j2oVkUx8RJ6UIL7Rts52GE8TTAkIUOlfBF91GUmj6s=;
	h=To:Subject:From:Date:From;
	b=qZH2Icktc49aiWB26tj+01Hqbx2Ns/MbaN0wB/K2+fjiGWNW67kFvUjbaxduQOqEi
	 PHvA53H45X6JAcN3fGnCPCkSn0X6KGTWfuYEN5W4s6cIJOqiv+dgD+N5qNHhW8xOfC
	 I9WVgIwD1h9j89hwQmFZGojt2nk217OnA6vIOUn1/CRafXpcOS85WYVEY2KamEnO9j
	 OD5lnGb9WOg6Y+d2H4vlReOIp1fpkgAvIu7U5k/mgy+T/wI6W7zNwnmVSbBHqpkAL3
	 9QKoY1Re/m/NwT0YqFbyTf8PIcNg2k//uttrq1SHXYiAMxV0AYh6v7oAaXKbAEXKW6
	 lP/jYEwh0BEkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5466C02184
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173683715366.9741.12921821424487629355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c02ec1b75518dbc1c443b461351eaefb41dccbf0a22c237f52453e46372ca4
Date: Tue, 14 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736837153
