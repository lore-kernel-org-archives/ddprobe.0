Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3216F18B1A
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727451954; cv=none; b=MRiv5euWupAUeVrjEJhLcYIKNZIU2LRxzyuqpIsXNUcl2nHJ634X76OiktgiaDEz50CdXtXOQqY3eImuKoNWw4DVRlrVaJbVS5rEVSYr0CxG4OrHXuLFrm+DzbIPIZjwrWm1L9pXTt0svS0ORVBFE+XakZY6GU11aRfF5GdvEiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727451954; c=relaxed/simple;
	bh=R1mD1qfc3rt9ccP/0mZEZPrbV/B06UAxYl0W+SnobFY=;
	h=To:Subject:From:Message-Id:Date; b=KkabFBksm3gu3fTSL3fIoZN3CvbsakzYrGPnDSefxICqbLHI33AiVuqy5+1eE6xaB4Z7xklMmn0zoS/Q3p6onX1ZVw0Adq7+IURFAppc0SSexcAGqZ1AX4JpnItTDC+iaRybHvav8EUaYw7A2tlFs9C9s8exH9GLGjaFwY8Sryo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZDy9Mgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZDy9Mgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDECC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727451953;
	bh=R1mD1qfc3rt9ccP/0mZEZPrbV/B06UAxYl0W+SnobFY=;
	h=To:Subject:From:Date:From;
	b=QZDy9MguXowkPG4aZPEGloIMTbPKDkZmSCTDrK1mm5FqJjkATq0BJrRTPA0fIX29Q
	 giOsq9QmLQ2W8HMSVT8BkXrwY1iwnOaZxnkC1jL0xNkxsjcQQWi4mJYpk8HbpcWiXr
	 wB6L5UcufxXvEkxQTd/5I1ZPIOPuaQGhWH69pEBtGbj5yxVV969DzXtuhdwhG6ZOvs
	 sGOouMATZjq0s0gpSMXoMkmXgbZcOPnkGntISQB7rmC9cMtmw5Ep4nP9G4+YWNzoqT
	 hTGEbgdMX7KiN1NK5phg5a5vyDCaQ3IQ9/Yrd6F4Qxqp64P3071gO1b43ENT71WlSA
	 RqdS5XU1vr7Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA61CDD1BE
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172745195362.6109.8186061418250638981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db1e8787c1d50d33d1c27096711ccd01763e3d0d9e460af252605d962778eb8
Date: Fri, 27 Sep 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727451953
