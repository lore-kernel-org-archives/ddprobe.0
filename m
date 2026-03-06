Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B902641FC
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772823894; cv=none; b=msCjAkxkFlNVuV14neCY8YYCmObydGr5VgqXwQNe4yk25phWto0a5j1IrN9A2XcxIL/ErzLEK5IpNA/qRMNrGLzgii2sf7JyvlGP1hfClY9Qs2p2EBFZhW2TSAWnzJ3SYukQhguT4KUJx3J0Dye6U4QzukXq+bRPWuNZLfkkfmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772823894; c=relaxed/simple;
	bh=wZ/+5vatXcs9H06qOaaY2vmRZg7pHEzBkJ1vOpb9pPo=;
	h=To:Subject:From:Message-Id:Date; b=SMzwX4kJFDV26i8gSJWBDFm1a2FM3BkFMWtHs+Mzv7py37Uzw9efuNubjlBw/Bc+ydILlII5gZee5S71xdv01WJ5q6kODZUpa6DReL2xgYfHJMP+KCkCE+XH9ovc+OMSntCasZ8PBh8RqpdcKejII4n4VrDat0lZIBDu92+hg+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKUsxrDP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKUsxrDP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E58C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772823893;
	bh=wZ/+5vatXcs9H06qOaaY2vmRZg7pHEzBkJ1vOpb9pPo=;
	h=To:Subject:From:Date:From;
	b=eKUsxrDPHH0WZAewCpSWsso5jm+NLvVMryRqxW65RearbMcxu3Zo08W9Q744faSpU
	 EMRdTn7XyLIHme8D/ZPwdGeThSpIVJ8Xv5uiJHh2DCsdrjWY7Ch8DSZNB70TCusO5M
	 pMuOD8iSXgzepEDGhu2OEmzOtYb8F4bGoxoV8zBc/SimIUREsbTovBhR18cnDeot/m
	 MSGmav5etzmjs7ci9W1r6B5vVoBnPG1qnam1fCOdgBcbV7Zu50PQRqOKnv9Ttqxi+B
	 79idaAt+84RRpkP7G4CsvhP4t8qYOtavhM37NHnkQ9YQsf3TtmcuTXdM7L6rFVG1Tn
	 oPKYJaJKJ099Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD0EFCC05D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282389358.7045.11075964211238374047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b91e530d0ff4d37d6269a49ac592ed58a670ecdba5058e4bc48e4a422444ff9
Date: Fri, 06 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772823893
