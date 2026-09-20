Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4880E318BB5
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789939234; cv=none; b=kJD6o0nihxzoZDgl+e9XwElbc9LFPZRhhWTRP26JDNMv9bfr3NDejPRPq/YY0wcdnf5CbZTcIHOcMTUCxAa5dJGmH5b1vt6elP6YH6eoDbEdnzi886jsSjZ+M2h3hoMyHQhvDSpM+dmYc04m1A62RqkqLnqnUSZsZQ/J60qYTn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789939234; c=relaxed/simple;
	bh=krNqnouJ3sstPvSqlTt2Qk1ikadmo/npeIXKMjOo3og=;
	h=To:Subject:From:Message-Id:Date; b=iLBl5Y6dJ01FKFMwAaUN27X6a5s9Fo8+HpFnw4lIIRimQf1LLhacDGg3J+z+aNMOpRG58LpaZJsUjlrsHf4fMjCbivycV+Ftl9Qr3wo4F32i0Qt1xkFT9t6rCVMJW/gB/kFByIzr5VJxRbU5srPtJ+1KypvljfsYlLp3GRIsi78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQCsTXDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQCsTXDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D455EC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789939233;
	bh=krNqnouJ3sstPvSqlTt2Qk1ikadmo/npeIXKMjOo3og=;
	h=To:Subject:From:Date:From;
	b=hQCsTXDQG+d5RLaItIw1R8/XyaVQNjoDfkXLWmLqnd4jd6FguUyaRWgG4jSs8+J/5
	 P01hnve/2oh2DyNnWB+FN0OfjM0LxrdHo9A0ZEz3bBdHY80w43P8tFLUqonulEcKGs
	 U178k77MP02lcVdClK6FI4EPY4Emx2GeWAgnHQWcCKltJ24eguSE/K0AREMK6ygPVZ
	 P+VdW0heeq3cccyAnCNIvHMIupPRAoX0LSdjPxlH5XnCBYbSnaCEobiskOgaAjiiqH
	 L6mtk8G92DoGJEig0EccvxzVlRMScHsoF9IXuQ+zCqAz2c+uusNFO2gvJrpvhObzKb
	 80eh4IDI+rA9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13F2C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993923369.17199.2530767211332360365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76a250e65da871dbe8840327f7718d091eaab6fd018e9ab3d1fd000cbd84f50
Date: Sun, 20 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789939233
