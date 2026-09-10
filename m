Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAA6218EBA
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789079434; cv=none; b=n5jDtB6/EyVc5ZRhHgYMngTmn/OJKWUiaxWi15F0fh/JrGwcIkLVCfoBArEoMf3dYzsvtKvr3P+u6lm1STFwr1DEoPhNg3orCvcgMjMOmCjj4CLkO0p2YLyCVcUzQ8qQIDXtx9JXmwEeSrV9Rw0M7VVT4Z1gV+Tf1epJK2oSTOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789079434; c=relaxed/simple;
	bh=l6GMEGbfHTlFsBDtHouhhM3AT+haOCHdi/J74HsxUK8=;
	h=To:Subject:From:Message-Id:Date; b=Z/E9VeinSSBRRGEkwCq8gL7ZMinkTUVgDxv8p5po8G+5RpPLRSLlwJe6zQ7+eTKSVJ1UZsppuXm/SWV8EnDV7BxayIsOdSLpKmvQfLJ12WfoznYbF5IMhWvA+c88rTonb2BDeJ/BneKXw2B+vSUyg94Va7ibUBpLdy/qfihCKfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IT0cyqcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IT0cyqcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF616C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789079433;
	bh=l6GMEGbfHTlFsBDtHouhhM3AT+haOCHdi/J74HsxUK8=;
	h=To:Subject:From:Date:From;
	b=IT0cyqcF9etfWk6gd1CIjsfMFFJ83uf/00Ir3CroJBEhjdn8MfZYs6CFCjYlr1yxV
	 coQmgL4E/0+aBBldoQyAwX341RCnGv8ymymPWpFJSodXRIJ4lHlGlZC0av3ELwutDQ
	 MGUP41yuif2se9cQlkTONeED72OKUidazHm/DDDcVRg1Gjh7Z08h2gogPAeH9hd2rP
	 XSdNLwELSb6QxF8rJh4JZDnxbwR2AVOwNvsGNaKNK8LIHr6c+APShFsSONDO/4BJSs
	 4LlosywCR3a9E7qizoDYgzl0mlFyl5QGyI68p5azvG2n39U0Exf5yxWpC4QWLbZhV6
	 K5epQjEKv1DWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC3DC88E41
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178907943369.9913.13000738631450460658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c292b19e04372770268b2e98b02a1f019141ae36a41d621f7bd493df7307a2
Date: Thu, 10 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789079433
