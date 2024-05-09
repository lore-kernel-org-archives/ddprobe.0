Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBAB10F7
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 01:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715216543; cv=none; b=h1jKBc31qP50iEmCYCsUQwZCNmlYnobp75bb72uNi3e6cmn0lAqkZa9tstkD4ABVkuNp9zxWjL1azZbTI67jDG9pd4M4wp6p0T6idyJpQ+g1RI4ondWHWGM/gyorcMWE7HR43/r1TazaGw8CY/ucGKcj5vIN5aqTZ9Lo1fiLSA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715216543; c=relaxed/simple;
	bh=yvDPcWCsbFssq5yLNAruQv43EQZhkarKh352fHTOLBA=;
	h=To:Subject:From:Message-Id:Date; b=u0Ww28+pg+BGkdsVDeIbETpGx6iB+lK/JT7LaXOeI6yHOpFffr1iFedaK6HDJf/K7FswRESiYOUbn5j9db4ROrtRENiSuXiTWddEMMwkCmD5JhiXdsDr+IRfEU40LrnksRo9HW5n7h+bMtvsSm+0iA83cQ38qeLcOIbb6uCo9Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=taKlEJY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="taKlEJY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F55C113CC
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 01:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715216542;
	bh=yvDPcWCsbFssq5yLNAruQv43EQZhkarKh352fHTOLBA=;
	h=To:Subject:From:Date:From;
	b=taKlEJY2Kurz1Zc5jT/NMxwJ5+63ccxgGuag4XnH8TuBqmdASuywa4LXeT67RR6mC
	 o2+hyyur9M4JUHoQZhw+XAG5ZSIs+teh2SduL7yv4HMgbSeCRx6NyV+l0tiokepDPf
	 +MppGJPh4xQOJgrM9DLzkiTSdViK9uBAElbzFJ/NMZIZA0ygC+wCVBM1jh7JxOFrxL
	 fRoBy6pulZbHwJNcxFKvc0l8I+wjruSj6i7rVC4cRsStTDKk4BkZ9ftdsm5gF0iDM9
	 BjAlbJFrtwuT/LUP/zEDDGyj6iS0U8KDDksxTQaD4LfCq6pLVywPc29HO6pVQ9alDp
	 YwJMiP5CbO0Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0CCC04FFE
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 01:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171521654277.16182.10256764283704542331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c93012dd1adcd66c35435923fed64c292827ff2d7fb99a486fb9a77ae40442
Date: Thu, 09 May 2024 01:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715216542
