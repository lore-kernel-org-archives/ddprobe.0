Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103AD3EBF38
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771850094; cv=none; b=GaUErpaai3kPuIj6VxXnqMOybWB2Dhe8EYlLtinsBwM/5u2toMSlIm7pz3TNfMyhiv/bfaud8aL01fbHONrMEgpLnfepGFtN1pzKaN8lO/OFT3/cY4K2ly7mTIpti+Wk7awzJMU724Lx3QTgnTUpSXKiqS9uMUnHPVHlLK2kxes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771850094; c=relaxed/simple;
	bh=TaTqtA7Il9zbKUGHxTAWFFZ8YL8UD1AugD1krB3wqDc=;
	h=To:Subject:From:Message-Id:Date; b=ucpTW3FgQzawOoS8UjKNNzorWAWLRjKCRJYO2ZPuw829bhJuu30PGsWrvloeCEc0cMPIb/rLhSQW47CMZc9DCgaF8LJwYydXsQqlzgeJokH9uLvVm8cp2Yt2v8rqptf7dqAn8Y5U6pKCnN/6LV9hT2/5HPwwwVY74mnXrwSsb/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKziqPs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKziqPs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4228C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771850093;
	bh=TaTqtA7Il9zbKUGHxTAWFFZ8YL8UD1AugD1krB3wqDc=;
	h=To:Subject:From:Date:From;
	b=RKziqPs2UYZcbBMh8jAJz7xSspElUwr0JAmGi3Nezkxs3xcpX1xUj3wY1Cpq0G/d8
	 6NAAiVFWaGSxIm6o+3NVHUFqZCxB4na2HREjQCv69iymCxKMHra8a0N8DGZzONhAYR
	 QKPN+SGtgSCBS8Lc+22KrwEv0qq8DCl1kLSfxV/QsXiBwYuiUUa1XjSKwyMe8d/YLe
	 qj5jGhLQCHNku27WVAdv4XFgHqQFC46PdrzhEugk4YKnGtoRRvOXr9Q+GNTMD3RaH/
	 I1JBKPPil+WeRaaMky4p/0JVeU8U6Jn4klXXDduA9mlF28rXVkmbn75xQKHd/gNUEs
	 qFQQdI7D2fJuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9319CEA4FAE
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185009358.20111.14782063047111640845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081d566a09be550506220a338aa358a1fae176f996e4a45c2b085a6eb69b5d4e
Date: Mon, 23 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771850093
