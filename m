Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23D1264A7C
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747828194; cv=none; b=WYvfCQ9fJzEDCB2dRoSRD/23MOyy0tp0HLpyVDOggcTwf+n8Kq96nVDnf1+bv2NXucHOfvysurPZ/26Ko7xsKhBHwhjKSX+YxkanKIwoBfB6bymXS0mlA8LaYTl764NG49GYzA2I1D++a863MUIlT/G7PVf5WQwGQnf9eP92qy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747828194; c=relaxed/simple;
	bh=kHjx2c9DHUEovG1yiQnqSXfPkn/WqspMGBlOCRrsNDI=;
	h=To:Subject:From:Message-Id:Date; b=u0Y4P9PAKoVoGrow5Z9QVFGOuxSthiquivsFAbHpCFeBKJ1OqzyR33QK5SMWso4JD/UPa+Z+gxbnWWTuCWnF2xGquZWV5uc0pPJQeqPwtftUVmdi/q5NTM7bYZm9oM6bspOGfCIuv6QAK/M8HdcRF5wP1V8aD2++/PHSPqg1HTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoKp1Kcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoKp1Kcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01A1C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747828193;
	bh=kHjx2c9DHUEovG1yiQnqSXfPkn/WqspMGBlOCRrsNDI=;
	h=To:Subject:From:Date:From;
	b=hoKp1KcglF79En5akD88E/DkxGSMPBfRVO88DHwatCz9n86thGuE4yqhfWCKXiTxF
	 PO+7ckqU5bk1pR+64ZfoCXy1+RN42XjwW4pUMgSIujVPnbVrw1SFFII2Y4Hz8drt/w
	 wiBtCPGftxtYPs3Vabi1BVfnhklkvnL6GLJ1amx28dvkizLwD7lfiF7JIgVKVgNsmy
	 YokarO9/bo58f6Tqm71lYZC5XyUB9biv88oJSOv7Hpvt7kl96A7XYfazrRNE7rcr4R
	 E638WC1xuLx3mOHNXwKBKMolJBImi601LzjGd8Fvggg2bkdgYsbPT8MxmzyMttEPb9
	 P53vtsb9QVCFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906ECC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782819358.14838.16305924354028669327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17707da58c3853ba6eaef566009dd76f529642832b7ef63b67cfbf4f51e29b1
Date: Wed, 21 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747828193
