Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF7D18BC3D
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787620234; cv=none; b=C2d//R7yNVN3VQ2qSBxPEXCxxFO7aYehT6NCKiL9hmSPgfmStdLNsIepvadW3G4lg5qVE6xaf2seVAULFzKBKZEuEGePD+c3KcFFYK4MeBNXZczKVgSGdqU/S7lLE0cmUbdp3eyTWq2C6XIvfTA5LWDsbt0J/ckN8qeDwvjQWj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787620234; c=relaxed/simple;
	bh=mHHO2V//pmiNtDn7QYyuL2vHUJbf65KuzizawZO0cNs=;
	h=To:Subject:From:Message-Id:Date; b=i8pQAPyeA/C/xc3f7g31FtfwiPgpxgZhD1hZHPnP5k4LxNFR55IoV1dwP1PXKpwbgoRQFdfGfXzAuq8ERyRGtDCCu4T3Ky6n/2HTg5sgFXEPuoMAbtgjHQEqPrs41UUnK2a6cVoHGfF2CvPZ1MSlPk10wh8pY2/J7S9kvZAQDX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCDdRDn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCDdRDn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46BBC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787620233;
	bh=mHHO2V//pmiNtDn7QYyuL2vHUJbf65KuzizawZO0cNs=;
	h=To:Subject:From:Date:From;
	b=fCDdRDn0IHHgcdZsMnt1EoEmckxtYo1jaUvu8C/dIJwx7x0a7oTKGtvS9eRXiyZ4j
	 YWZg/1hQ1bwBbvd7YTI4LO5976HvqnlIh41UrmXIbEGP21hLCFJKPFQLrTHsKIQn78
	 LX2HF1689+ptQaoI5U9+CEkGCpgETsVFjXro0GgoEnk//I7tdEA/Jxqu3VsbF1Xka6
	 XY3MwGk4mnI9Nxbs1ay8rZFcl1yMbWRsE1Drw1CseaYqdaYB5Nb5updz+bChjk/O+3
	 TRmw1S1L4zB3sEQpPs+Lzco1wAKXttqiWcKfVzixT5G8VES6iwtQ7WPkFABlhuF8B7
	 IoJX8TmKLUHTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC74C5DF9C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762023368.9802.17100345691188654821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca848b46c3ed41c2a1402bc08d9d456924e63c226f840543c3ee858999374d52
Date: Tue, 25 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787620233
