Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B43A37472A
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778766034; cv=none; b=XB/EBWz7qdr6TqFlLebyi/xdLqFSPtvBa/rtAThkpDLTSIz+0hu37P2hAQriY3eJFuO1f7IgY3SKGYDLgrIF9QGJp7Dj1vzsjMENr1CzOqLypHccCtatWDtasmtGOQOQ6XwjmoNiOkk2MuGMd20krdJEoXPZmUHa3I04diED6Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778766034; c=relaxed/simple;
	bh=epqVQnUCdVZOBj+g6oY9HkOB5DYCGBhktoYAz3G+zeo=;
	h=To:Subject:From:Message-Id:Date; b=GcXaupOGKm9EMI2K47p9v/giP4ErqTKpo2dxbS8AMe9MCc8OTfMokzqT+5CmMJz7u0JqbTpapGM2Yi7y93hL+qePcsvBjVO57BNgqfS7q7l/vfdyWeGgi5JPPq86BYuTlW+akO94M3SDIJYvJenvlG7/0D2ISHOLELqOAFskidY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjbspzwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjbspzwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC882C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778766033;
	bh=epqVQnUCdVZOBj+g6oY9HkOB5DYCGBhktoYAz3G+zeo=;
	h=To:Subject:From:Date:From;
	b=bjbspzwHcoOsAJvjVP9FO1AiFnMZ6GhZ1evYNbkz8NVnidzBL5eYkktAGEPLwI3UW
	 ZUn1J3S/2iG7Ujl3znCIuksU7+HeO6kh/CizfxUojjXmbLKTGTTveDoJAVHztB4Mpj
	 J5a/CQW6pc48UT0/CUzIP8qyIfvnyvTzz1eUrfr+Axo7kk06mU253N802PG/tmfwm0
	 GYd+75wMdTurVnPrGUKFWrsRtJD455zDf2HxRvdrYJJIAF6ageWCB2Ij7dgHWobMoz
	 hRKuEVOcL6nN3bPwI5V7RGosJT+DkY/eTOklD0PcfkNOj8uMmInEU54qI+HwPUeSp+
	 /2PHf0WKE5k+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE23CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876603369.11070.10209535888114025014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9358cd7d6b18a12ef1b34c27ff35d1c075e2dce5dae342a5035c97d9a0a38f6
Date: Thu, 14 May 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778766033
