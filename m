Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4397027703
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784963434; cv=none; b=bLIFUYqPu0imocMxxz7PIUldlAPAZaZUj0Bc0o4qoud7F+F8uQ72Kl4O8xmmw9vOxwu1Ulp4RRsm3Q7mfjXQ3lITV/jCmyJoWejt/1mIJnqAIDnOvnOWAa2oPuGleVL0RlqNyqp8yrktLPWlYw15tObJ5uYz4rXHmCRzEY7CAes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784963434; c=relaxed/simple;
	bh=oTYJPlQwHSzu9hfceiI2hHLrA3FBIOV4eMI1C3uO+fo=;
	h=To:Subject:From:Message-Id:Date; b=EBi8W8xI/+b0a6Rr6KhPshkRAIstfGxYnyPiIzkK2CvUtnK1TovsXFMH3PVOYD0dkG1aRnUJya64olrba8tiqlvgHkkqgzCOHq98l7Loxp3M6Y1tiQYXE5rfEaXmGcrLXtOdoeLL1wsp//JEdPHvliETr4WPvfSG4v22jcSB6Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3IMf99i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3IMf99i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6BCC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784963433;
	bh=oTYJPlQwHSzu9hfceiI2hHLrA3FBIOV4eMI1C3uO+fo=;
	h=To:Subject:From:Date:From;
	b=D3IMf99isItf2t4pfYvuKfag72VX9C1PXNw89TCmNuDX2Hso7Kjb7QAVujRAe76C3
	 RtfBo/3EAqpBhUJyHDjq+Momhoy7dp8TYgmc9/OJTt+ZlluhSlj+f0KMktbKu58CcY
	 ZdyQ5Cm18eAQUFwOAubs87HvXCR+44t4TYGAWObpfB77W7h4Fvipp16jVzYsml65To
	 ClbrAFgFEULoksmNH6L2ONz2r5qkIHjQcHVfvEYHyUoYvxdS+HnzMQo0h+j+8GbayL
	 amiNe2GUJeJDiURKz3QW8P0qb6DgAWnHFDNs5EBhXMaUJnYEaf4ThT8b9bBVL0pYsi
	 Y5GMrkhf4jqfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A908BC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178496343368.30764.7582905971460711409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760c9b366e2796844dc4e52bf30b6d7e228b472805dfee3beb3c8c503640b8af
Date: Sat, 25 Jul 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784963433
