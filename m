Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8A830214B
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762544394; cv=none; b=LW71N3mIyPYhCffDZX7cKuhZ3A8xgqNDKeUuRPJ7lBYflvLa/kTdzJ8Jqk4JNaqO4xndCFzSU3uBVuWniWPVc6w4yMFkZZWlWnb3/94bDeJspgc8qz6HGTC3E3KNwa8mBWNwEIbG+gCIu0zkRNOV5jEZYZC3zNyRXs/NI8hNGuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762544394; c=relaxed/simple;
	bh=W2eLhkvr3EKUrtvJVlcVbh2JUCKyHSOVRQvRaLq+neU=;
	h=To:Subject:From:Message-Id:Date; b=F6cjcvXv7P9GCSo+stFtpAbLT0ccte0od3R3ISnraH2CF0dOGe5aZP8gJnVlC7oAclanF3Rkn3ut8Ttnrox5eYv5ahEBE1nQMrzvBuhsoBj6sO0udQ40Xv6bdkJWLFcLsvUkOEWS4+tG8mWlSuhEuAAjUoy8soHy7az549gTkUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHv0MYxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHv0MYxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79F0C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762544393;
	bh=W2eLhkvr3EKUrtvJVlcVbh2JUCKyHSOVRQvRaLq+neU=;
	h=To:Subject:From:Date:From;
	b=JHv0MYxGCzRmoQufQPuc9hXRwP3dpFMJMMfJfYaLYxf3U0gbSJy83Gdwxihj+xLS5
	 Un8q61fLrB5RePoewP0RIyhLJSxmPRamenwA+wIG4q1MdNh7P9poNdS5btOgwsX+39
	 mKViEyJ22ebLjDPxYuAq+Q7hNsexiorxnNxrRpybRSKEvavQfVJ3PHtARHo/IQwjn8
	 AHM6Sqvx2zGDZlEMqzg0BdQGqlXyIua5S+gqeTsjuFSDhbMrmx9FU7TmeG4g1RFezE
	 /89rbY7ivnR5IppJFESOlO0DJoJas+C4W9dpHcHS9CZxT/AyMzTS8jPdUzzlEOCfky
	 IF0mrdfq0yRXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98401CCFA1A
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254439361.32291.3324307600852765554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b2ed07c0fd13e8283438a27a8ef43467b6b0b4e731b715727084c9f536ced40
Date: Fri, 07 Nov 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762544393
