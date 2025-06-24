Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17662201276
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750784995; cv=none; b=uIrqe7Vt8owoA/95uuxfcnuDmS4pxgIc3p53y5+iSCH1xpZ0nhZTrK0DH4vA4vXp1srDB1j97DPJrWyRw2FjaRStXaRzxmshdfn0oPHh22oWMnjKb6lXfsZ6KxkwVkOKLD2nGdhTqmMQFREFC/S+0JIVaIv4ZTM4+ODmyJvP2Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750784995; c=relaxed/simple;
	bh=O9kYwMAq6BtU8QVmIXRZ4jiw/jr1RX4duifV07ZXoX4=;
	h=To:Subject:From:Message-Id:Date; b=JVrPTjm1yHedFHwZP+53/ENlMhP1Xi1XXWb8vGjkJV91FNW2MBZdpda18PpYSqPc0ycbXbrRfKM9fySqHtHCJlX3BDKuhC/ddVSoshH2/3v3VVBCkmiiqAyECqIpqiel+bwa/s6p9SguKaeTMM4kH0Jb2S45F1CAxMc/Bf1qO2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+V7blYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+V7blYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA5AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750784993;
	bh=O9kYwMAq6BtU8QVmIXRZ4jiw/jr1RX4duifV07ZXoX4=;
	h=To:Subject:From:Date:From;
	b=F+V7blYEFHLKiKnS/jQYCsf1QVK9pt4hItBocF5boJCm+gpwoJKA6dHRypdvoj1J9
	 bfeAakvN3g36UKnsJ/npQp7tWw0FPG5lmuI6321/eZR6DbvQhI0VraBpLv1hxv9oZ+
	 7EOPWRBLaSc5cZeR5HSEbhyH7a+3+/aEt+9T3gsd5wGTSNBNXUxtsjPYV5J7xEB+k4
	 vktv9Sb2fMMqplBqJ/9CK/16YxHW0CtVenANbUTga/7xJSdZ8Mmb/VFraI1ocQhmWz
	 62XUxLp4bLO+b064f5YxAOtNLHvd2MNoWSmR6E/27PARyI6ecelaxakujZjajYeo+D
	 8OJYerTIu9QQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE49C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078499358.30197.13926123578844696406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3f819a35e9bba4554ba552c1ff23c2f0d471c51a169876f5bd30319caa14652
Date: Tue, 24 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750784993
