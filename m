Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21194285CA6
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753371594; cv=none; b=pW2snAgCNrXoiRSh2ivkglsaVHfBj1rbM5sjRLAhg298qziStjA6OFt54gGXI2G4MpSlc+KJBLhF4OsaDQ5MTmvzA6tx4E74ZijeV68kDqcg3B327oI2Y5TF63D0qylVwLHc3YjbJKpeRy8vCCrPT622aISanWjeELItC8wqkiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753371594; c=relaxed/simple;
	bh=cTIYs6a1QXfKozTWOzYmlTVLF+g5QK1A3bxgPyp0ITc=;
	h=To:Subject:From:Message-Id:Date; b=Qrkz1r0ctIpllIjhZZDu3rACH3gIvvtc0wQ9rpoRF6jvzNBv7u8yHiJ2nG29utsU/0W2IEavaroK+zjEoRwHCc/IElAh9StD5dB27beCqDQOxaDFasFcLG++q3wTBdZQVtZb3wwT65MbpxqEaeMjoJ1nSHEFZ1wit6pZiP+C3eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXCUei9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXCUei9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00A9C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753371593;
	bh=cTIYs6a1QXfKozTWOzYmlTVLF+g5QK1A3bxgPyp0ITc=;
	h=To:Subject:From:Date:From;
	b=mXCUei9r65PGmvZy9IhKpUX+bmGGs2Vg951IyBlqACoCiNgfbJHU7GkwSSaJpXms8
	 oOKvc3hY6BmWIq+HDvFd0Gvy+A2odOxx5fesbpqQUCXrZ8BRbIuomzZit+lb8zdYKw
	 s9atDARbPH+ZMReEc+I43St97M1fdgWKiRjJN3QC8uyYTSlZQqizpWABZ+3JY0sCjn
	 2HF+eSRMgL2KOpxKL/XH2T4QOtz7IlbPt6drqBeODLeFrK3OYAIpAfE6VljhlPI8oa
	 AnnuxE4EoLAxuGFZ3xoTA4TGERYrC7dj8D6R+4dCCNexaqODqHDEOG6loDFcEs4h3V
	 92XMHDzvFJDtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C95C87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337159358.25202.13717748363333452509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac575c8a0ecd4e1519930999f9165e0babf5c18ff18eae8910c84f1b2ba30a57
Date: Thu, 24 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753371593
