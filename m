Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683455CB8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718335103; cv=none; b=GXx1SqR/LEZ3BQOWAKfkzjL2QuPqPTIeNjqk/G6Z4ZO64api1CcBwGSNKIkFIbw6cNIUUxg5EdckOgbFX9p0zQs0xxWc9PRyKaa5ELlYUnHBSeDtns4lQwSVZBzvRa7PBS2hWsLa1xc813mWbnEs5MKJv+cxHh5n7kO6IYSJ6Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718335103; c=relaxed/simple;
	bh=bOvf59F/Fh9nNIaJEWFA0+X8UlFak14PHuOubsOIeu8=;
	h=To:Subject:From:Message-Id:Date; b=t/SK9l/KDWOHIwW1RyglXTpENuiD7XvlIuspWVxlWQVdtg3KsPzcn+Pp5DKpjF2V5xpTPYmgVeFGGthSap9fQrSoJtd9rLgxA5z5kYlB9CaNwb+1x1RXrnOz7QbaG7pUlgy7T/53ym0g1WrWskXyWBG8wmH2Eou/dHoQmL2VdQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlXQuxoi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlXQuxoi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF330C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718335102;
	bh=bOvf59F/Fh9nNIaJEWFA0+X8UlFak14PHuOubsOIeu8=;
	h=To:Subject:From:Date:From;
	b=TlXQuxoiqBPUIWWDsYuqGT2c/Z/XjCxUecN5YMUapSwTup3EXf4II8l+IfYZgaXEY
	 Iw0oRalWdybnELAxaF/CMV3J5FbG5xhOyUDqHCUkjJ/Jd0STU5wHyVpypxYCIv+oYF
	 JCk8vBWD7CzN2HBKYVgbipsxa8vGGzXvoj6BiforWEJ4Y+DHAqUfw7KL0UgwaYTs6h
	 K1SQl1j0KsPfwC4ykdxhT2NTJMr7ZTs4r+k2Bv9hfzCya0NfGWxcySTon/CSar8Dhg
	 6VlqBOX6b96yJYBXgmHOSUxQojj2R6h092lKHPSWfDZ0ieBGBIalyPraclCa7uVps+
	 JOFDrUJZ0vwHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DEFC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171833510280.2405.14173886095798175512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94f657ef668c43c0b2b8a7f81a1733720e632bb2cf633546ea1d01b06ced136
Date: Fri, 14 Jun 2024 03:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718335102
