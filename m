Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5424C23A0
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 07:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717487123; cv=none; b=nW8HPw+nRZ5SdiDTqos92ZGDAFTPLY04X8ju+ohmlNUYKVW2zJHVFakC4ZDyMyk2znomHnNgJ9UFh0YGqCFjTU/ecuFraGqSVZdNlbxYfOQY9fSMwi8yjPgj9J6kcfRBHeR6qQ0I66pOMKnFDCyBU7GhUbgdOLDB/qaN0D4KwUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717487123; c=relaxed/simple;
	bh=GrLbuZuSKXXVagTLg0YkSU/i7bJVPYv9cOMD03XqSUo=;
	h=To:Subject:From:Message-Id:Date; b=ZoalcJVsGIruMqrtctBGrMU/n/2aToZs0huuhBgCjJ32mObbyPUK2PV/pGZMfGprA3im6VOzrWVJbPWkf9eyYvzMyhiGiKjO9wdGubKdyEAql9PVTtMng/o6TYUrnudJwMxIibrFj3lHoGF6OqW+hwNPC5wSowjD+Zak9CAoovs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fl843XoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fl843XoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FA7C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 07:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717487122;
	bh=GrLbuZuSKXXVagTLg0YkSU/i7bJVPYv9cOMD03XqSUo=;
	h=To:Subject:From:Date:From;
	b=fl843XoMnQBXLRRPxzj4yqTAWST3pFHFK/jhA4YbDFpDtah6cHSFR0jgP5pIRK89U
	 dR4FiG4PqpAw0wLhoFAJa5ntsPJpp7oNOdu4j94PSstEYghGx+gEQ6nosKnQK1TatU
	 2o92QRnhj7ybVoLGIi/qHRj+WPdertfaV2NwdthOEEt5LA+cYGZtQ7+dqXfQ2QRmex
	 dsrqpTGmQg3jwTokRXx6jkXqwsLHoXVdcyknre29c3dCfWER94nNUJPis0YJEVYwGi
	 l+IJwwFhOXaDtnY1nUtNaRrFKIPdzZFE24omTUA/wN14YPibC1IpRIL6TymfrNRgpi
	 2OEu2kmNEXLgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD44EC27C52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 07:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171748712276.11551.17281438642619051778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e14f065fb0846c454dce3b9ec50482fa9ecef97d2bf42fe8f402224cf4ac23b
Date: Tue, 04 Jun 2024 07:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717487122
