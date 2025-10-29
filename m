Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2159A2F12B5
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761754794; cv=none; b=IqMOiotw/9HeCB83iO6HOrAUOHTHTJQrmTqP5fRpJ/WDSt3zpzfuCCUGTHnqe4CA3YmTpY29G34UWHq0Lq37hgXDxgrNNG2oWjWiRvcySYVDZaQbK/bPC7byEJBDNiJnlgcigiGUlyigTeT/OLuFybqDitKWMLUD0EhbrCjGpNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761754794; c=relaxed/simple;
	bh=Ill6wRuVFxdm0/8gUD/F7T8FsFUh7ivK3JDscRJ9REU=;
	h=To:Subject:From:Message-Id:Date; b=f8xZfrp77MZJ/Hrr+1/FknH1UKBGCFIoknbu5h/BHUcO4jWz/OKTLWR5Tr1QOA99uvwtlErgieYEkoyMUGvR7wAxZhd9OELx9fhaGCQqwTrBYH4KX3idlbFXJLrc2myOXypLpy+AbrY4VKYgwawZlsZFksMwm1hsJ2U0QrFwqP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qpri9CF3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qpri9CF3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F23AC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761754793;
	bh=Ill6wRuVFxdm0/8gUD/F7T8FsFUh7ivK3JDscRJ9REU=;
	h=To:Subject:From:Date:From;
	b=Qpri9CF3+FWTenArphivKxSLaeAnIuooOLsj57uhDCDNIjQu3T/kxdGMkeWNmdPLi
	 lwu3PyKyRDzPJP+VARRTkFBk/Oy5Bxm7GR9PXxyUHK8vBBFcWQQJo+tNWNK2tLb0h5
	 TPTbICqWdf00D92W+umT2qVd6iFHiXukrgVLRRuNW1PIHZ7SlmAkgOGTq4+5mJayf4
	 o5/ercZJs1AMxmox/GHNvmnr7Ojs3AgD0bTpjHsuT4Rrtq8HIj1MlthO0xtk1bq4MZ
	 A+ALxyJZVDb3VdL/ZT5h2A6l73SqC/IS2H9mbDKlStg4Wx50ZfaWxIyO+fTOO7RRy6
	 MzCdn4Sje6FKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C2CCF9F0
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176175479357.1923.9938124854437040702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fab701f6bbe703559673375416dfad747a38b3ffbef9c2ea8a3b317e2596f26
Date: Wed, 29 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761754793
