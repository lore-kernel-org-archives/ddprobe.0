Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479BEAD23
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743412194; cv=none; b=obS5gW/wS2nDwNXxCdXkDQSh/gXZB3zV+1rCsXu05ciNyepTQxMskPMdSxy3lL0FmZmwjcbXHf3bvf23E7gpsZafWJWTevs5iqDxIpiHPZsN+l+668XIXdDLyaesXk2zqx79ZKQoiOk1TZ/JUSIhgOV/ifDaOpDZUyE+TOggH3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743412194; c=relaxed/simple;
	bh=NXeVNIzQrJ9dgVF5nHAO1Xd2DkoJvcuExm7PD2n229I=;
	h=To:Subject:From:Message-Id:Date; b=keeugDrONscMESkVSx4nB6+K+OxU/6q0IQ116sZBupgTNlNoV2tvGdNj0+mC9dnnu0ne/ZpFLJrozTCmsEEGpJYj2EQhzvAlalX0zrosBectZDFQo1tnvKDRemqrPuG+tHzSBuyEeRX+oh7rA2KDHIJpcttKJw+NA1yrIJazioc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDueAN4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDueAN4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56AEC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743412193;
	bh=NXeVNIzQrJ9dgVF5nHAO1Xd2DkoJvcuExm7PD2n229I=;
	h=To:Subject:From:Date:From;
	b=GDueAN4yI1BKGluLXyOlfe166T/tAdBM9DbDT1eVjGIQB/fzCYBRk7i3p8h9tk/PD
	 Wf8BxUkKS29IxecjYl9LnqGFu7NR5y9UMbt1AK2OxDHABRHRnUscxK2t9+DOphiElC
	 19/h/ayL+hfl61pWxz1qNi638R7WOiUKa4col2X1cmod79XU7WE0a9UQ4QNMwnw7Yx
	 P0DQ28hKr/GDQlNA+bpYCeXH4T4Gh/kPAo8eGR0V99xJMP7H0ugavE3++muh7pp39Y
	 niAKeI++FNXm7hegH3F03438l3AmkKWPK6E5rhiJhS7EdOtr5Cd43whm0ctn8RcgXb
	 5PZ8eiJTrjLCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A93C3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174341219358.2446.2917191136079856232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91bcfbb6f5cbba74c09be9c52f24b28cdae4b59a23709bba4fdf89d7905ef549
Date: Mon, 31 Mar 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743412193
