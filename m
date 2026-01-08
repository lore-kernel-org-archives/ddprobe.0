Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B0328980F
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767846834; cv=none; b=nxqpBqHYJ3HnQn6FKe0qJIPdmvltSoihkFZC3I8abprWPDEV/VArQJbl99xiQ+MiRKhu53E+5qRAwLUaNXBglJ1PmlXrKLi0MIDupxtYIeYm2yFLcYA5Qli6FXQCT4FZNZ5y2gDdQrAsPv24jaDzjCJvbPhGWDvzoSKnPROlN2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767846834; c=relaxed/simple;
	bh=AtMBipnfKm2SGTCvUdKCmFlm8QYFotzRYbplwa0hWco=;
	h=To:Subject:From:Message-Id:Date; b=I55aS4wlupdnN/ZowqgOsipbZ6RoJU9t5W+E1QfJ7MRFs9rEYmMG8sKUnidx18gcX/BCqmz7AztMMPfAXqcl7I66sBcdDwQy06pnURqayVPlQNELEPaPEYi3V/L2klN24LZFzrQEX4BefeR6cu1TrMk/oJlnJecln/aIXhg+d1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnXROADJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnXROADJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DC4C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767846833;
	bh=AtMBipnfKm2SGTCvUdKCmFlm8QYFotzRYbplwa0hWco=;
	h=To:Subject:From:Date:From;
	b=SnXROADJdoSv4fEFzi3tvDlZMvk7pONN1m/v9z+10l+S9dcZKnRgvGpqlL/5jHCup
	 bd8ogfxtVsPPVjP40MyWH5eAe11G87KXuuxIZ0ipdfCUOJPI8/F6dlB8r/Ht9Q1mgB
	 Nggs+my/ABt4zGRWlipazHdzZs8mD7qe37WmlPpgUi8x16tV1Yo0MtAWH3su3k9JX+
	 FKpiCogmsEXhqZnQeAOQPnfvu4yKW5pcRsoHRPeCrJr8F4Ko9I211jRr4o+JuHAdNz
	 FeFzb6FNrQrSW64+fRVeEM7Fl3VFXEfCNOc/EiF47QuG2D7Jyeyhi9RBp3MTeBePmW
	 0ReK/QB5XlMLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94312D1489A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784683357.27430.12389565803931581733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e2b0a7a6e843906cf028de7c52c45d3da5f386e39a81224a20f3d6d0c10f40
Date: Thu, 08 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767846833
