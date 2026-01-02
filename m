Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C40310630
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767362034; cv=none; b=Eabc4Y15HzxZOGsK6MXQCaYUJeMjYN26wOF36WbTqVzMt7uH+uQLsIxcDrS4N28jT+qcoxR8/xCYz2w0wc5efNXaokax0nIL8tRSM4T/u4wZ4fODBkeaFYrI4nRoSoJ+4jeQNG302jE3ElMfvIsFSfIsX66VOF8QNeYvdUh03L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767362034; c=relaxed/simple;
	bh=BYfv2lMEQK6luiwMZ+a5I2l/v020QhnrYzQ90Q5C19E=;
	h=To:Subject:From:Message-Id:Date; b=oGD3Hn6peWGYJWPrDxFGHGBfzdthXsb0rc//1iS5lQySWMorjFNIosy5KS4nkPPG8DhyhEdOWIO3qdJtcUj2dzDXUtvMe40tJIvv+EjL4rIcOUIHpa2MvB4f1Tm1C9jIqKYbNp620loyAwnGfdE/nTOEqJcwzdtoJ+pyLKptRfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSbQ2xvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSbQ2xvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8AEC116D0
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767362033;
	bh=BYfv2lMEQK6luiwMZ+a5I2l/v020QhnrYzQ90Q5C19E=;
	h=To:Subject:From:Date:From;
	b=bSbQ2xvjrBApcRFr050ndBbLRhVeYZDwQ0qLRau2zoX8cJTHVtT7mUuSpweDAWmFC
	 Drn6CAELCYMu/ewCPyUs66PTc47tzb8j6rukxvdRjYyCEhzyzHeiDJLgEgx3x000RL
	 ExQk67J8TPMiI1vLvtvZrnydADlNJsXNkAdRKAZKv6z8NkKoLNn1xfJJ6NOmReloo4
	 QfiU31Hg2Da0LLXDmbjj2wE1ucK3BuhujCXSol3TwtjoJ+XLykM/s6343OZZI188ob
	 +jryHkFPmsC/E8GMN7MJgejr1Hpu7LtmASP2sQcottOcH9GyCSiduEtxeoUbtDAP+r
	 ap6qE4YcozYTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAF7FA3748
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736203363.23768.7739514355677195156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0af6150f79b894bef1ccdaa9c4079c18fd68b5e4a57f0d25234484565c0af55
Date: Fri, 02 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767362033
