Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7E7C340DB8
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786875634; cv=none; b=scA67RS7ZoEUkiTLYTWZzEAK91arnG4hdLci+6hUC28PsHHBDD05bq0w4LQszTLQIc80NETeBu/c2lCRLtkYaorAJljKM2ejo+o4CT2aGTPfyDMOTY1M0HOqQTl+ehCj8FAk1XwcWwOuWLdzyHIb/UO++vaey5XDrrdDWLI7/gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786875634; c=relaxed/simple;
	bh=RmCf8YcQyqeVsRA2A8oGYwCJZw3wSsjMj/atGEoZou0=;
	h=To:Subject:From:Message-Id:Date; b=MD3MHd3VYG5ceiymPlxotrvPq7RzIF1f+9Rw5UcsLCI34GKGRZu/o5yF+c+bSKmftN3xFRK++I0I+FpxTLtgTbmBfxKOMBFZXDRzVDzBEqJJM5vS8f9XOrdRdAGju60wLI8s58x1imGW2nwJV80b8WhUZNj0crKKA4ZuJelwSuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9EMOoal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9EMOoal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3020C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786875633;
	bh=RmCf8YcQyqeVsRA2A8oGYwCJZw3wSsjMj/atGEoZou0=;
	h=To:Subject:From:Date:From;
	b=s9EMOoalFcK2NGybdOIRY1diF9Fzal7/GXnjZljbk8SxL1C53p73fYfE7pgJPasfa
	 87XvMxdEhPS+JnQeafoRfFHh0H29+PFGRDfPcgCVpnKo+/MtlTGAbc7TYessu0Txw1
	 pYQ6XlnhyFSE/0qpJVhm7Lld3J2ED2w5zsX0OHpOZygulnGrFlF9YPXWSoehihBqeX
	 Kc1qFMYFDCvdM4H61VH4rfno+e0lv2PdyVJ2hi4EVdpAwTJMHeYBXb6weISahFAaM1
	 iJQVtz7N9yYpWFFbk2KXvi7WX6u50KwB8MhBC/94Z8MKivl9H7LDRbndPlFBrgetu2
	 qubQZixlqUL9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4FFC5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687563368.20000.13477091485498241499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3115966798ae3c2360ea30583e4ba6d2638a32d9ae1e9b1528d1796d5e78f5
Date: Sun, 16 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786875633
