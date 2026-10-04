Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC9B17BCA
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791130834; cv=none; b=DFQOtZNHizBtJqbzW++98Yr6hRz5Oxz5wkkuooNCKCl4bDpMDwR4sW/HmhGIPIK/UkFB26P74+8+msYiejioOBxjGT+NrkdckDZnOYwpp4dmO/TJoB7ooq6sOkuduar5VVWidSNWHISRnYEtXJf05zxi588LmITKTzfT1PDDZNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791130834; c=relaxed/simple;
	bh=9Ek2gYhkIP+gRCVooxFNXcKjtjq20cp2sEyf2RoSY2Q=;
	h=To:Subject:From:Message-Id:Date; b=gWFyn22L4IjEh0Ll/C8dfvzdtAcOJtrMzmW/8HHD0XHL5wZZ7Q6XORASJOMIOnoWkRwj9tzFk7ek3M3zpqe0YoORfojJRMBbTVgaxVonKHdFRYQCWNX926Z3jejzxMF4YOQrqDRIE6ysNIBatAoh0y8R9v60CxQPjH9xHdRFug4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuriYdf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuriYdf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF282C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791130833;
	bh=9Ek2gYhkIP+gRCVooxFNXcKjtjq20cp2sEyf2RoSY2Q=;
	h=To:Subject:From:Date:From;
	b=YuriYdf2Rka+jVecAFWCvBuziQzDVkBweWNU6xwIrLQA3G28cOxa/joMRMKBPrZah
	 H7fcpuk5o6M7a0wLRwcAOs9UQTA6kbgkYkH5R1T8WNno0FXMhdmquxGQzAIVl91qbc
	 Dfr2Pt4K4iMljDalfCWTfgcWYLyPa0iMlOK2UgR4hAm9G/aQFsD1BLOOY4sFPEvM6r
	 6MzjUWZDdKJneE+1Fb2S4mh95glm0SymlMfcBYnfRU5YOg4Ob3JhYW8Xw3jxVL35Qz
	 G0KLN/CQKxJ+nM8zJ6hv/F3c21Ghfr5QxMyWG1K3Je18CSR0EgvdPAvuDWysN2i8Fp
	 cn4KZAOW0qTkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4C2CA5FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113083368.16654.13968011313765942823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28fbdab40b31ddb8d852c3036782fc246b9466aeeedf814155a3001a48c68473
Date: Sun, 04 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791130833
