Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815C0547043
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791429634; cv=none; b=JlEdOGgEGWBiWphDy8RA7EbI3XESJvko2BWWqeRTkmFw9xgFmsPX4IIq3rbBPYyJzUL/V6Cm0Ztk4DVCebDU4t1r8oRcHaBafzM9s//eeUNlbBW88P6rmSuQ/lHLjF8WSmQ4onZwQIzvhfMXmxUs7KcrAacCvspoyzxFOCvXhLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791429634; c=relaxed/simple;
	bh=OEhsDS+pfBzz5RKb5AvFYoqVlO4LwwG2saFS10uNf+k=;
	h=To:Subject:From:Message-Id:Date; b=AcEqi2lIUZwZvyWYP/PgH7q0GAdBKg3e2Fs+lhJOy35qJR0PIoT9kg8HSA5cJOh/dGU1WJuXSSLSVbS4La3exVO6jVwqT/pla+dn2FqQGGrYuRstcpHueAs26lgXOUnIBwrsKenOCDmrStczZacHZo0rVIFxWB9Ryvnp9S0W1yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUQSgi2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUQSgi2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BB0C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791429633;
	bh=OEhsDS+pfBzz5RKb5AvFYoqVlO4LwwG2saFS10uNf+k=;
	h=To:Subject:From:Date:From;
	b=QUQSgi2yzOuoqycnW9QgDv1MJckR4VaxFjPMYSeistAHaweRr1Ew7cbDLRu8r8sOb
	 8Y1rjwrqCsCRkSiYGYKQjJhy6+836VvykvTDt4xiltTop2d3WKr00Joi1kBUqXPaCK
	 rbLWbGwJVlH2GLIeGucaNAnjhzNV4MvQcPVF4a0AidvM5uLmOwhBJAqB0JBNvnXD+N
	 IHJyeFm+rrGspT0wdZlDHoWJwRwLcz0V4GQjEUR7h3syITJ+vvzANDN6ihpB9gHTlV
	 Vr0Iqp17I+CgSr+EdMEkRqzDdEoVv0nezAaWtAMzRBBc8kZx/sGEKI9MUC9qbrVrdE
	 D3/w7ywgW5mtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42BFCA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142963369.22739.18265951322276022613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aea400f1dbd077e2edd830b5d074152ebcb4ff4e4a0cc2c4f9680d963d3f835
Date: Thu, 08 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791429633
