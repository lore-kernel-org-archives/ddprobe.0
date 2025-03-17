Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CE018D63A
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742226594; cv=none; b=FNnTLjtqiOjC0JKq4+1Cc/lSFK8ymtEdGtFzNGZ+iGdDDRQNLiz4nL7/7OjUb/wB6754sePDt8sVyiG6Og0qOqYwLqDStdL7yjGlsMtxX0YsO7uSc7SzSlhLP3EcgOHOLXqu4aqwwdyz9G8eMZ85OcrVVFgStbwQQs5jebMQfaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742226594; c=relaxed/simple;
	bh=QjHBioQFT7hGZ2FPM9lUSJ5t0sFSKRsHJEXXx2Kzqxk=;
	h=To:Subject:From:Message-Id:Date; b=HvkFoWz6yaI+hY1Wg2BfrjI+yHbTh9kFY8EWDPBql5FdfAwLDATzhumJkTUE+R9ZMh2QffA9K0oIKCFzrUu92BYfpSohdHEGmjl7BlPk2UudlFAzrjBeoSL6cf2z5rSuEci8OCQ2aHPlEW8yc48Aw3Dko4ZF9wahW24oB8S3N6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFqL+xf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFqL+xf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28EFC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742226593;
	bh=QjHBioQFT7hGZ2FPM9lUSJ5t0sFSKRsHJEXXx2Kzqxk=;
	h=To:Subject:From:Date:From;
	b=RFqL+xf9nj4bpTNYaMmxsebvMQfGTmYvBo63L2A6U8Pf4gUVFNaH9kmpkr9FTS35h
	 hLuYCdJBSwspe4/82YhE2S5w8jgZSqQ8mLO8K9wJ9OlOTIz9BDri8bfdY2hvGrs7tR
	 dcvpxMQgO8h3K9gZJLsc21H+R1OTQZLI8jUUpkwRd14pnk6z7h7m0bBHFMeV4xib32
	 cyEgPK5l8aMy5yTI0bOJlbhN6BGRBZ7FHONRUGC1N5jdE2RW0mEmvFBxhn0jKXx8NN
	 V20y7LuDef9iTXlXSESho/KDuishNPpnrExnEowLRUEG3tLakdVUyM9uvQIC5TV4F4
	 iD8CMhtXs2/uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9864DC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174222659361.16653.5474014584787791612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9095bf05b6e57197d3314389352b58aafa939439ac9b4d2d535e96f190c4943
Date: Mon, 17 Mar 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742226593
