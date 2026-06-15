Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA4C3EFD34
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781528194; cv=none; b=PAz7+o2IxtUF3dQkPgSKPiG+Zl7jUWg4AbDmEqDxZaTuD/c95aVWtFHpnM00e42TO+S/6HwfejCSz384AeRWhwmZnn2sZQFnScXFFGj4XQtAdyNj6oIRg+ANfx6wvjKiz7w+0kx5cLasatv2jl69NO8vuEVgBnUg2yfPUhTOvqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781528194; c=relaxed/simple;
	bh=+ThtGPV1Dro3Lt5ASPMUXCxakpKpWh6kFepn8rocvRY=;
	h=To:Subject:From:Message-Id:Date; b=Q95WaE3do/daPEMoA08h2Ha0fO8yLdMAZwwfJ+IPQXfgwlP1NYbDP6+2XD6DPz9GganoBUOC+LA1KW5J9LZHxQQJyOadG8tbFjeqS1AZ6IN4kFtmPs07lYaMCGPDNqxPt5FQzChfzSLT1QAJM+IWatgLuxuNxvsof3VZLjPrK/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jN12rV/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jN12rV/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D7B3C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781528194;
	bh=+ThtGPV1Dro3Lt5ASPMUXCxakpKpWh6kFepn8rocvRY=;
	h=To:Subject:From:Date:From;
	b=jN12rV/vQWufbUljro2yeIxhrquIRq66/e+E988qOCJeizgSCPiE+gnTdNa0rXGdQ
	 HoepkRxUdqmBfvDqK1UuQajk9QHqlIHjuN4sfeEVI/EahAlMOvuC9EeTBYRmZujRUd
	 sdC7Q5F7Kr56uCOYY+h/0li9WpIE2pdMPEZzLe4NN9+9JsgFSnn5ZdaD1H+B42KEMB
	 Tm3SJWMfM6EDhExiG3GggRR0HKRgeNM5Ys2nai32Dl2W+LMivBIbGAYwzmqJWr6+SU
	 KgBH1BpWB5e7CqPRwsvthidAvhjG/s/ldccJNqsKlddJwG/aeA56PEblEpn0sw7tQ0
	 jH7vVOMd0ZZPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6BD2CD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152819383.10218.15895171808117714945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab7929d04dbde83ca3ebe0fc1dce377cfc2fc4c6d26beeb74fc65176c01b91aa
Date: Mon, 15 Jun 2026 12:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781528193
