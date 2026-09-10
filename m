Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B328B3D9549
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789059634; cv=none; b=pP/kxonMBr2ONIOEp7f8ChcLPCArJpF0Mv0eWtYtG1rNINl1vNQq3chTb2p4uDgecvoeJK4G/X1gaISUxNurlOTM3UtJcs4W+QLNMTwlPmsFsjTWVFqUb8r+t8T2Lgz7OTmPsswMvBaEG7NppupmeZka2T5Ii4614p4+65Zfw6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789059634; c=relaxed/simple;
	bh=c8G+2aYniY7zg+29Ra2YKzeA17t2S60u4GOfv/jXvDI=;
	h=To:Subject:From:Message-Id:Date; b=JiyviaBq9H+WyO+r/pzJnHlUPAx0joiWi9w5V9/W5oGzYwHIrWCafa4C/3FsncntPC7qCQCtbOfHrmN+1+HGlpnqO7ylryfSlZOYEJo4necG8sq3OrMjqJXh2yoZmml+Kb4RSTcE0pKoENdivrKecyl+TggC1rgoor+ELHp6bm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayR8AAUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayR8AAUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13EFC2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789059633;
	bh=c8G+2aYniY7zg+29Ra2YKzeA17t2S60u4GOfv/jXvDI=;
	h=To:Subject:From:Date:From;
	b=ayR8AAUg9s+1b6+XE+kHk4YZX+T51MvtO5gF4aS2B/NHWOMI4nuT6X3bCl8+RHf9h
	 /ikM0yRsRqJByXqrqA7XTiojb7XR1cnSj006IaF8FYye9h4vQKXtB51n8DNPhOnO8M
	 cuNNeC2Hl+X/IMLSoSM+BgSnW1rCIe0yp6uoZtZqoRsfGWY25cmKEUr+oNWBE1KY0u
	 PECzQcvnn7FWqurgPiFbiy+cK79UBA2Ehgo6de+uKUYyfNOv7SfzeygB444Dv4ug3i
	 cQeG/AT/T+lAiVFVbRHmi8s0+AFojQf9OkoNrTigWT4w0E0g713F1+jpxbt4apyXiu
	 2dwlosN75S95w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA11CC79FBF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905963368.3537.10810624655966697509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe9af725a24d985ff4c13c880a926dfac7adda8b0781b2c708e3153c665a828e
Date: Thu, 10 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789059633
