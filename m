Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68404C13B
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742518194; cv=none; b=TUTQ4HkNR3nGsgAYUlIGYEMiQsrWkjx7lCyJNLfw0kYkBVmOT8fvET4mQhpJh7+CaX5qcHpdWuvOF2k4/JkL7TQCbKVeYXUPGnpD6rmXcdv4LPywFy/QshKi57uBTDVadYaGwBfVsoM7kUAd48P+yPAs5nyWxgubzdeDszWwT+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742518194; c=relaxed/simple;
	bh=UeHeKKFOvhluxoyvRD9YRtZoWoGrBGXkP03DfdT1ZOg=;
	h=To:Subject:From:Message-Id:Date; b=a4tW0N2R1Xeaf0Kmnc0FYt3scHCqGqqYveXjdB1YsbxnY/dDPO3mySJjgJCuAXO6G05c2d/seUS1ypYZJiHh5OFlO1MF+zgFXR4Y8MJMm3TCTeW007wGVYr8IF9tHmekLUSw+MEul9eZtD5yei/Ub/W5ulCl9mM/UorSj3HvZQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpiCR7EQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpiCR7EQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE6BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742518193;
	bh=UeHeKKFOvhluxoyvRD9YRtZoWoGrBGXkP03DfdT1ZOg=;
	h=To:Subject:From:Date:From;
	b=WpiCR7EQadqQJJfj4biwk1qG3gH9D/pvp+47u57Nuv44Z75WHbSaMfPXsZV/W4Fzs
	 yl9yUdZCafRRgBcTul9qPQPvioCGy1yKzgrXoEd4EJJoGTtXttdTCddLp47ezLP2F6
	 R3Rcx8Hzklo/vcQAmOIKBScWhCVfY/kaE5iNc3XhRB8M9vKsiMHgaFmOOH8Zor7P+f
	 UA9ETWGtBfafeaLd2x5muyTsvv4PLzpAVBN4FIE5orvWN0a+0ihehNqfc6qIRaM7Gm
	 cwoQ893cbbOhTNOkVA6Eh0Pkpf/oYiafPnvtoS9S/2wvU1uyB7lShRxcDai6ESRNHn
	 aUhBCZIEuQlNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C3DC28B30
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174251819364.11149.17394056759569114410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc54dc140138830818e014e0a7b9a0f8aee8a03d9c9b95214a7828fc96892126
Date: Fri, 21 Mar 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742518193
