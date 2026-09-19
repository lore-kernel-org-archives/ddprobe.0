Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6023727B35F
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789819234; cv=none; b=qH+Q2HiiR+mUqTB6MZM1DQzoiQz6cNSw8mbWdPFLjh92ARYUEaHAUHvNjQ++/HqIGzrJGPCSWB/BWr27XbOnc5SSLXUI47McvA2Gy007ksx2esCgtxIam//fMCKA0Q+3af47B5P893fFqS21fw4rJhKFh1XcaO6Y44bSTEN1Rtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789819234; c=relaxed/simple;
	bh=Q52k94UEmBOuoi0QdGy0PjvtlcovnlrpomIy7Hj3Umw=;
	h=To:Subject:From:Message-Id:Date; b=KVxwH0yDC+neAOiPz2jWzP/W4NpgrVpfHy+huY3y3CoYbOLtBPTQLeO+GeB1HOqYIRIN9+wPDHO2WLtMgzy827xRQt58Hefz2NZF7W2e/QWuhofl2b6wDt0LNgT/NzfLkLI2b4ISKbe5uSd3GLj1G0qjUda0HWdoscx1f345kro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsszIMn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsszIMn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1660C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789819233;
	bh=Q52k94UEmBOuoi0QdGy0PjvtlcovnlrpomIy7Hj3Umw=;
	h=To:Subject:From:Date:From;
	b=qsszIMn/72RoatzCmGonohklU0nrK9qZNzBq6+I6ngs1wQVI5xi2W8R6A8bBdsTfh
	 5yD3SfejChtVTTb5HOku+hnKacRV/6xnMzlFkWkPTGNnj8bBftebPms2Q5Un9Pe6Pj
	 9gReaA+6r5vR3+9BTKRKHLdDjkJXabUM/Ami28gR4VWRfj2iEuN9D35CpryADI/t9C
	 bry0BFpayzzhrtu6tom9YAz/KODiAt56iRWypR/HbbcVxOfMb06IqjL8xNoiYo7Laj
	 gsRzQAPrMh0YDrxAWkZAEXoz9O/t201fKt9DiqbVIGWjlvx6mAJrA/UDvqoGJIUkb3
	 ojuDPSbILvy1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0037C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981923368.11677.3293095028921853040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c956a285ce80237d8a78f72aa7039bd1dc4c5eae1817d9c9d7cd4ae2b9f0b4eb
Date: Sat, 19 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789819233
