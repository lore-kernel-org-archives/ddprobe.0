Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429F6224AF2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749079194; cv=none; b=ix7Oiya69jwk/TsS+cevewhrXzMw3r9YQQZ2Jehd7/hG7lCvK4chqkL6lo3sb0MXbnuHn4D80+0LbOl2DHaeqyr6iLCRdgMR8BtHwtW+5kyL5AlZr+p7lW4QGmyM6Kp1/T9HPacomF/ire6X3dPbadS4sSQWyEjbIgndn+3xR50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749079194; c=relaxed/simple;
	bh=XZOXnHkTnlmNlPUZ96OAQbAqh2daHcp3IFDScEYwSjw=;
	h=To:Subject:From:Message-Id:Date; b=AvyHqX0JyeOAtkEAIo/hd+PjYmtYOuUW946dADAJcgnVbyRXPsYp/CmFMAQ63bA6OI2Hi9xMPc0GD9XicnlyPu57y0dQvWU/jP26ylXkO0Drz7B4app0VjBCeLsAv5FEFzcqpV3VXdYRjLtjjHhpNq3+k0FjFfKfehmTh2MkxW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBicVpD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBicVpD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A35C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749079193;
	bh=XZOXnHkTnlmNlPUZ96OAQbAqh2daHcp3IFDScEYwSjw=;
	h=To:Subject:From:Date:From;
	b=OBicVpD8ur38Dzp7Hd66pztoKbGWEAm/gRRBVhnyOijewFvd9vYD8Jf8qF2q0+7u0
	 XGSOskW2r7ELikt4sUreZhWeBLrDhqm7m4j1dLh/6aSzQESeNcyFukP1y/v1hVGxIm
	 RzJ49ESAjChAUl8YWDEeYlY+JAc5SboZXhlNACDMjauB2yhIU7gRgIwt2aSgOuNeS9
	 HM0RRbYQ9R/BLYvG7thyXTZ4o3uV7mfZ8VIanxjSpSqGQ0EjQEuMiRQ5eCAx535QqG
	 7Pw5lNIbDj6yTDHcIBgoGPVfiFpIZO9vX3Ph5haMdhNozljeKKkp6gdqbgmRv+T6fT
	 OoBPnzR3lIuFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961A5C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907919360.17718.13032529283363670895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0720db9e2cf9d2fa4f269a6a5ed44087ef6e5f999f4aa102b3fd2050559168da
Date: Wed, 04 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749079193
