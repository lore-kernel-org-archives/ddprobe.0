Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29170CA6F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750148994; cv=none; b=VaNOuBhkW6H+544xyqGqnV2smtF91knpJZWJUg8bDwDcHjgj7/Av706pL9g3mx5nZYBcUF+j0EtBPEkqilZunQcoBzaffku1lCdSIzNBQs5sBZ+mV860voNAR8nCAM7FcurReEeBr+/P49qD8GQWM8P2IukJHcXF58HtzNa+q6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750148994; c=relaxed/simple;
	bh=AYnghnSg0gZRNR64PLqDWTT8m6X40EciXnfGifcinMc=;
	h=To:Subject:From:Message-Id:Date; b=JGBPxZF2U0MPXYO9gK+DlQeC+FEk5ZgH01ewfiN13rLehvpB56fa3vibVGTtWh2AB2SiSOe0co0XH2KbA58b/g9NE7oAleOP+hTY2xDO/jU6TQlUKyGDV91IA7RvMbyfAAQjK7WQJejFjrNvzQmD1x5wKWtOwlYj5kCgV/MyEoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlY8Rtku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlY8Rtku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01E7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750148993;
	bh=AYnghnSg0gZRNR64PLqDWTT8m6X40EciXnfGifcinMc=;
	h=To:Subject:From:Date:From;
	b=FlY8RtkujUvZz1AHQ68FnEfoANSzyjhQhRCkZgLvwJm5ewXZml8ONMxStei5deIzB
	 JQew4bVy7vSelpMsKkHvjaHSOsedMa71tDuBf7wb0uN4NRDq3uBTD6du8+B9d8MBhd
	 N82dJfmhRRPmHL2Xk5P/bBdet7ZN3ZidNHXJ5YrwfteP7V1gRFXBsQM2TdxEESJbzc
	 3z/ydeC+IPNFnO8WHMzskCM8J9K3zqBGq9F6Yi1T0SLkErZQ7+Kcz8VU44Ilng+iLK
	 rBT8uleJjDNcZmit3uwJ/sNe//h0KdUB42Ic4YBF4ypyUe6eqwyvXlXky0PQcz3Jln
	 1YFSZmPgWJFXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB7EC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175014899358.31399.10823662804959120909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbb6b161ab8e203edbc8434d34dc0163935b3f5b7f721a439dc7fcb9542f312
Date: Tue, 17 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750148993
