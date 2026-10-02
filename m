Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B80335C6B9
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790920834; cv=none; b=Ad52HX5YZNCvPX2yH9gN6AIZ8oX5RG8wuOzF+ptqjAACVurmvaZd4J5rgDxPPgNyfVea0xVxqYwtDiBQFjNcrWTEL4RdQNk1FYebzTiRDiH2luxuOheXQJixSVynqZD5AHFeXDtEcf/rclepttxkfd2o7IJXOGH2K9W3x5GI9VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790920834; c=relaxed/simple;
	bh=8i9m2PcKOO6He+sPX33HXgZzUmTYooX+rkap0SsL6JA=;
	h=To:Subject:From:Message-Id:Date; b=Ez0scLGMMli/aeE0RBSlqwM9F7K/LI8FNRsFslVBamiwXNC7V1DUuWpb7EOzmAfrUbVRbqYOaD77QRIhMfZk2Erixk3W1mOcYYq9dHJa89c7k/Pg/Q5psVfBwHQeq15PNaWBM2+a6lKRtduowwqxFeESYiOLgvtV+WloiwMUbGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHUP9IkK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHUP9IkK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71D7C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790920833;
	bh=8i9m2PcKOO6He+sPX33HXgZzUmTYooX+rkap0SsL6JA=;
	h=To:Subject:From:Date:From;
	b=JHUP9IkKmAdBswDXqErA+pQQb+5p5PhrR87dkGE6m6s2LAY7N7W6Nof5Ur/af/mwF
	 f38uWdRj6bTMraDp2PXTmPHIUAV8H9el8RPpyBdkZpIKIVDC4EnZlw+lOShmOxHI7C
	 p3B6cBBV+oh73neXDHQ/obeZqpNhqJ9P6yfzKvt1fqU9R1isGsEDWcXy76XgBVvzos
	 JymkUQdV06A1b5p+ZhcsBEmrXbsRpDiV7HKovEx4Vlx++8BrkpSLacTneGljqwPfCN
	 KFJlqNlUG+sqCxlvUOQLu+LS+Ux+QP7mG8ekkXwlANcI8FkzFegiHVx73pKLQFxTIX
	 z5WtSKi2kHz7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD846CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092083370.20475.5005711666351715659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982604ab520e1dfda3bec0bbf030359c4c4c9c92c41200729c79a886ecf685af
Date: Fri, 02 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790920833
