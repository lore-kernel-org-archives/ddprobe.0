Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DBF377AAE
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788211834; cv=none; b=LAy07IcDPHdjHZycuD8S9LndDSOaA5hz8uTRJCYimc9yiJyQFb9Vz99XSZao6X2yxoMD4cHJSG1I1hy3REe8pdeEYxQ5EG1SdZAT5WMuuY4rK4lN1QtAc0nPYT0ksPGYtZzvOUoK7cQhl3P3THDKFoSuzh9LAayrp3kA799BWJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788211834; c=relaxed/simple;
	bh=AAXre1Tg+Yss2YCLLQ98EETWt0VxudWwrU+NS53lG1c=;
	h=To:Subject:From:Message-Id:Date; b=miqA04XezfgarXgmGgHCOeKHdZxH4GSjq8B0Hq1LuUsPs7UoSjpVZ6YPPzagiJWVc5QdWnWSgcqsGowAzFM0ha557hprXlpalM2Tj1ricEJBD57uyvL5BoNIuQbke+7wd9WaL8h+NnnLdjiPyT0qIGSfUbUvr/UJrpo8kRG8IOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpSTRGbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpSTRGbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3AEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788211833;
	bh=AAXre1Tg+Yss2YCLLQ98EETWt0VxudWwrU+NS53lG1c=;
	h=To:Subject:From:Date:From;
	b=mpSTRGbz29AULGq4huoRlO/7rf/XBJ1c8gX/o/VbEToztXu1yKeYcidok0Gzr0+HT
	 6RhX2O2So5k6THkvuenr09xaPBWhXSiCOw8s75Rm28Ng5kyQLTTswU7YOXTQO/xBrm
	 jOmFBz3eXoZYL6h4a4iE65K85svX53QEVB3piJ8m2edrvgtoM2vYloDy5HATuUxwP5
	 vI6kN3TGPUUTrGpeybtKJniS9KxYUUZitvhVkLPB3x+izmilCXGMjMBrifPayInpK5
	 5f026HhYn00xbwNYO3DrarDMx4/fvOFBZl1ibftOWlPcUsOU1qBzNDpz/uCGdbiwoy
	 3EGjgBsaBOrSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF4FC61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821183369.669.7269888046027570840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20272d1d2d2cf8667f9a6f1ea63056caff0fc5b63cba4f30a80964ed868dd829
Date: Mon, 31 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788211833
