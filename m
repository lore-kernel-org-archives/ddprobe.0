Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FD41DC994
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757444394; cv=none; b=SWjk5ZOBrlvDzBMwXRi54Deyvl9IzhpSwy7o6w/49p2HIBuhzVEMva10m0X4EatQst3Bgk8jbbZ4oet7nLAzCUBOD00Zli/qa4p5wxZ3V2UGD8sxG2KekfcLoyEpHQnCFrlnObBCqKTkFUTq7csRvYJzHi4YZ2Xva+FGyMaex6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757444394; c=relaxed/simple;
	bh=N7XVLaUbFJJVo44RSnl9HiWIADxSus/rYFC6ggq98Lc=;
	h=To:Subject:From:Message-Id:Date; b=fTUWtfIkja9vMb0ce6bYgAHRGlprpcjVJu2T3bT39EPozy5feou1ZxFVdmTqiTYvE38xXl/TsBes7yQXq4o4B4GIDVa0iXP52gNboFANRmzgI+ejKYUFUVs699+j6aKijUWss2VW1d0fdbd+Swi3WUcvO/bp3P8Old2NmeqOXEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHlMBtQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHlMBtQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8B8C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757444393;
	bh=N7XVLaUbFJJVo44RSnl9HiWIADxSus/rYFC6ggq98Lc=;
	h=To:Subject:From:Date:From;
	b=rHlMBtQlOGDUfID/55DfCgEQKhRcxvINQEr49GHDSEY6GBHO39pogwqEZrCt/TyEr
	 Rx/ZRCplOcCfSaPXd+D75XFiC88qzf+om/H9mMdwf08p166T9IBrgXae4jLLmFV5c8
	 lGydjd3D70HuaQzqdqq0X0xGzCCoTW0sUcve01sJaHx73ASmkrbRYQjPZ9VENgtXMB
	 tATcW6vOphwXoiOACA2rkDoESEGDDReHiIPhVs2QYlyiDSsoAl8XR6O70G3HKRvKEB
	 2yaq7tyjCCQNH558eLpp/AA/48Ng9UCQGNU7fX1MsAGNBEqHa4tlUVgEEP3N36byS/
	 rc5V8LvUq6Wgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F172CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744439357.1081.871469888389542143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 535755e06c9dc901293535199109aa68f1e0e73e6129707462cddf1e549eae79
Date: Tue, 09 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757444393
