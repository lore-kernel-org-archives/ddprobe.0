Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B405A382393
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786022434; cv=none; b=k18qEkFDdvcsJ8DufOBnDi8l6/pNeoDWDNbnBwBI+r5WWWIKwSlslIu2ymmWBBTrT4rKev7vfSQu6m5dGFKSS96ixREhkXDeH7HjDJiVZxvWoGLohRTUhYOtrAykcKSEdLBc4vx+XGH6VW147q47NRx59K7Mx5+OgeCqHEfhnHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786022434; c=relaxed/simple;
	bh=hmyemegppI61XSwvmvHzfZUM1zt0LFaZvHpzuWtcF+A=;
	h=To:Subject:From:Message-Id:Date; b=mERwW/G4eaSSA8J5EMkDof9yhLC9WvmqWCvpsnTnl6DgNJQAt/WZNs/X56Q1xdB42DFzthsA6XzIAtPIs3KkEmK06WR3S/QtWxHcidanxkCttgkGpY9SGG5socM8hI+itQw4A0qcZKPMR4w5AdcwO60J6joypKYTI8jUSlo+nDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uecagtd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uecagtd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82EEC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786022433;
	bh=hmyemegppI61XSwvmvHzfZUM1zt0LFaZvHpzuWtcF+A=;
	h=To:Subject:From:Date:From;
	b=Uecagtd/jerB1+sz1uPGGxtPFgCLOeCTHW1KCeGFIzkGMOturu8Sdya4O0N59h+CX
	 P2V/DBEPU1HbPCBszIM4vDXHfXzt5MGYVSawKXIQ1gDy5V1124B0WCXOpaxXi07EZn
	 szSXywRQsYAhwLURvIRA0wRt4j9syhYpGkyvc6zUq2gmObgTHteMopTs403xudChPP
	 AtREAMyGrLcQf5YltD+j6UaQosVuwSj1HOUysgiSLP8MAbiSvPj2XPofEq216rLF4F
	 Wpre9AKciQnjUqMySgBoFyyN9tscPMP8cvZ8xAVF4vSef6EJwt/0mkOAj4B/Z5Fmez
	 CBWAj++DjgmJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A0AC56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602243371.23794.2084353703753955332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f436e23c1270e40c3021a2102aa153aa618900240899adf31509bb202ebf3593
Date: Thu, 06 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786022433
