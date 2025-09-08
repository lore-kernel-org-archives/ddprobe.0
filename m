Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BDE2629D
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757323194; cv=none; b=qr4o5Pfr0lROEbcHiSNRMwiTvQUGpHb1ftmA178SC1d+4OI/ht2HgpGLGwxrIeUM1DC7rHiMN84/BpiTPp/OSGdG8UAQE7Rupmo4+hvYlohdJqDL+jeiyy+KFwpNZQ3B+UA/jP06tnFf7XWIqEIpdA6uigvWGhLG5JEyvf6dcAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757323194; c=relaxed/simple;
	bh=+n18mRAUHzI54d9RVDAC5n6jEgRLjgmfb0R4hDiWliU=;
	h=To:Subject:From:Message-Id:Date; b=affTQ9xxk70qT2dTq0qY6AJsS3zCNBfTqeLS2IHLckaMZPoi9EWlN8XsnOMVhtQODJ+yekL3KsyuVq85HHHzBzjULpA5TwQcd5wRSwrbXt/HSlYj5non0sl5i2krIXZ9VxMBXtiZ/lej2CpeIfrnVvCghFE7/6y7vW77vtsdVZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oU8s80La; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oU8s80La"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9EAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757323193;
	bh=+n18mRAUHzI54d9RVDAC5n6jEgRLjgmfb0R4hDiWliU=;
	h=To:Subject:From:Date:From;
	b=oU8s80LaWnLh8BUQYPMHbep8mOPOFrxG1Q4aC8U6CujHtSODigvthidVitd+SqoIN
	 e948YKnJn3Du1Oz6oo7ml+J6H3AR86Md3a53uuNP5c+kVyKpbQc8gBCr1ILGM9mS6g
	 CyewyG3kMDq2XwUuukQ6nse9n+nqUlqzQ6X4aDwz5E0PI4YlOkS4+NLwHKBPFh1II+
	 SLa1XspyGA4g7lsdOHUR5TvpucnfvI9L+ztbBMndNafwDaJ+8FWgAW/xcDA/ywcC1J
	 7eHoOxq2BIKzZpRBs5IapTxV8yd4i6xI+TS/OFc0HMONULtE7UWWnrwo5gZdgQwJwI
	 kUTov9a+RnzUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909C1CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732319358.28828.11679371300017933996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7bb20a9d46a7cfb31056c651156073e5a5e4fc237f3795185d09f043631fd50
Date: Mon, 08 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757323193
