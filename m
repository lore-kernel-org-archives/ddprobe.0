Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440C428F5
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764562974; cv=none; b=M0a5rCExbE/wDUUSv169pvpIb1Kk+78tsSdcuq1EIqWxSbIFoE6GVe08JP+IVjLAdrkWEbcGrdFmS3idt01nNwas2ank6jcoJj7N7WIG4R1KpmXKrE4TPIk+jpAydrkejsKF8iQ/1Bt9PHDonJnHlDinu0EQGxv25OM9wo07lbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764562974; c=relaxed/simple;
	bh=w/ohujbbHXWLlr/4NY2P4AMgemkStxTQL9vvDKMPBcI=;
	h=To:Subject:From:Message-Id:Date; b=XfZxEiHkRVlLpXGaQ1CURogGTdRfXrNsvwzo8z681PTJuz5femVa6jABaFtTY+HaPlMgz0yuEqNURAkfnmIKQYN5NALzwtJaegVRrp1oc19qW3w+gro/1BihzMizTWVfuQ/O62aI7QDOj8nzJ+0PizkPNsrJhe7Y6B0tRNmjs+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTqJLs6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTqJLs6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48C2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764562973;
	bh=w/ohujbbHXWLlr/4NY2P4AMgemkStxTQL9vvDKMPBcI=;
	h=To:Subject:From:Date:From;
	b=gTqJLs6+onIDiOWEb1iDhnqqRTpepBC9DZcgjfkEUBGHOt7Fm1ak6uadrJS5tN4Z9
	 PoytBe2PkPUQu1s7pQYoSgM53oXMU8U3q9qyKm3vzOHH9CppkZRx0SDckTwb4YfF9t
	 8sgQowUwl5s3rxvEMlOyVDVls3WjJMmxdAk7tg2EWE2fDFD8FemVzA3Ge1NuFJ6bjD
	 5FY4tPesVzu2o72rWv3sLI9Wyd8SSOQHXgzMmh/a050hBzNufdZ1jGadIsDJTqdSi+
	 vn12eTajQ2CbNqGgkARshD185cgZkdCVvKQlfbXKeFNj7nFAph5PF9DdNHH21eR1d9
	 GJc5NcOfGw/Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E51ED111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176456297360.14539.3775711596447861368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a634133d83bd8df33c3aea3ca39ff1635c33c0dc41bbcfd269d1a41d7134eb5
Date: Mon, 01 Dec 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764562973
