Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDB3144D2B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 12:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720182323; cv=none; b=nxL7F61XQ1Yhdy2ylFvSQkycVy+EjNj364HxY8pwMmnpS9UaTwUpz4dSnek89eKv3mYkCmgkZKdIv+jIdcF9Be1/Y3hBLPODN22RXnSwPpSuh0rbesUMuKvJ/eozvXqPFMF4tBkCZMp7GGnvo3IeL6X65qVuDUQ6JOJR0WWftms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720182323; c=relaxed/simple;
	bh=Xf78YBk0I3s+r1aYJHl0TZEJLzZWB2zsNrBfGn2AFSw=;
	h=To:Subject:From:Message-Id:Date; b=QfAQvxaUb0o/+pORBwUdTgsE3RChJSjVcd5u/VfuygQZfrER/Zi7Mg/fu2h9MhNRkCtz87s5pY4rvcBQipRGcoov1Iul98nOGD1LBdrpRgFHTKmo7BfmTV1dxY2uAV1TvXYpG4Ud7yqbDPhwkvbeZ4q+31h0Zf0l0pgKPU2QYCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APsygGov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APsygGov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9383C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 12:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720182322;
	bh=Xf78YBk0I3s+r1aYJHl0TZEJLzZWB2zsNrBfGn2AFSw=;
	h=To:Subject:From:Date:From;
	b=APsygGovBASZEe5/fLIt1VLJtc0HyvY8Ldn/GjHcXXmAS0N+XSX/5/O90EkTsFb72
	 xBlflWtobIpaHlQoPmTrIGGTg42rwb5q/KiOCyfOuG6/5bsF1T4tOARScmKC1QiAhc
	 cmzrag4WwhOzYaxfDtQpmUoEDYhn8IuudXNM6n8MmAow9N1AEpmh2K8P39EIMjsY9l
	 V9L4MrGqZMIRtkUBdCXNZdGi6p6obLMczOvLpTx7UgOMpYIOKgxuJFuNds+QJD0NCn
	 EVzFbjKrAWhYI02U3jsOb4TXFw9/WyyBoWyDWjUqrifDjh8pvLBOf81SOVCd255qD2
	 wRIIdSHdMljaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A0DC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 12:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172018232280.29553.535740930698577459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d9b4ed9b5fa69c14ef19158d099ca651af6f516a0ef8a22a6b9dc9cfc01ee8
Date: Fri, 05 Jul 2024 12:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720182322
