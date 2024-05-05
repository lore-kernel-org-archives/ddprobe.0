Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C202555B
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 19:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714936343; cv=none; b=FgnhJRtlyzYQr3+38pT1Jd2ekMj/AEM3rD2lQKydNL/8qtEwdiqP5e1584rbEHwcS83rqnQiRxgf/F9s24Ff/bfdKhzlZc/zyDvddpTEl2PI0U2yIy+Z8xRcaJ5V3Lug86zOKavsbXTq1rHsObIwsiOvHHeNO5Dbf9900BJsT44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714936343; c=relaxed/simple;
	bh=TDFlfTFSGjBx3Je6o2zg0j+ryJfSkWxA3ZgWnEJKE6U=;
	h=To:Subject:From:Message-Id:Date; b=ns+Jp/QTaSParHPM5SrU/2Itj75z64KOmfy5QXkaZ7hFCy+Yt5xCxhQqUwi27m3PlTzyiSif5eLZk7QsG1CPj54XxtsION2H8ysnsMivJW9CRVQIp0M6oapCFquI57FxeN08qJpo9s6XlWRFU/ZNrfdAMj575OCmHDsVbSVx6eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXECb/dk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXECb/dk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DD4C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714936342;
	bh=TDFlfTFSGjBx3Je6o2zg0j+ryJfSkWxA3ZgWnEJKE6U=;
	h=To:Subject:From:Date:From;
	b=IXECb/dkzn4gvz7+/mYIlJ56A0pGWLwL5W6FEtMbOG3BeSkDXh9lfc5BcbROoHexy
	 2r/Vo64tiuxY8a4WLbp5PmWFeW3xf6tgOWtO+mxSPk9fD79BEb4OsGOE/Nx5tyLHti
	 Y+Vd33kw/hZQ33YxIKgBnavVL4mlQtgWuu7bAu1oW4xSwE02r+T6fakA77PeglkAz3
	 j6Oxu/q4Z/fXsByzeB7RQgDHczeT9h1kgpZT1pLhkIra+1YG5e+V5HkAfNJGpbnZkX
	 O/Gayui+i7hSeouVmphnG0pGsGf4jgklN7XnfMibbXQt6ULl7PL2EN3Z2WBZiTpY0w
	 MeQpAB9Km8QJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C152DC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171493634278.19079.14080888954154245945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b4fbe9a9292c178b0346c64646b761e65cd0143ae4c908717263cba10b1448
Date: Sun, 05 May 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714936342
