Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E778C04
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705992497; cv=none; b=LG5qAyVC176vtyBuPwbDn+KIcXXdvcXDDcvSo80hkXsstrLpjmCoNtZnmAMAk5GWzBZhRkaIXgi9tlKW11DVbmnlvKIH+++FzHe3fl7IzDJzF8r6bKYs21rBZYNJQ7ee+cutlfmzWFOFKOo97Dj5N109WPSyHpBLv/w0v8bxCgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705992497; c=relaxed/simple;
	bh=ptKwJehNbAPW3/XoLPXMFvyODMgsX5asCn+14YVHzd0=;
	h=To:Subject:From:Message-Id:Date; b=CjOyxz6zQw6AZaYyuhdWuRCp5M/1VhQdZ5+cWwKNr/+7T6pxfEIA3heJxABifmwq5fyPaY2AdUIA8SZooqZbRQnDgh14crxK5kUS4zQ02hnQTEFAMKuD9wCrxMf9Ne9OnYftZSus4SEsFdzPOyvjLpFfCC7mJm5IWcRI3MEd8mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnSCUimS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnSCUimS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F56BC433F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705992496;
	bh=ptKwJehNbAPW3/XoLPXMFvyODMgsX5asCn+14YVHzd0=;
	h=To:Subject:From:Date:From;
	b=BnSCUimSL0qHGsKFJSl+DcbNEiKpgPWjbGJSC4L0hT483V8lI4TFnY5NA2UpUQikD
	 kBShGNQEJavYNggzyqbixvNr+q+AkwyMZVXjpdhc23aSY3tiC2CW+Ni6XNHB3uvPFF
	 rAGX4ZS64bzzy5YqS48S89XlMfiWVAG/+Ucjo0xptPKgG5NfK8oanaBDVddR/q5X6+
	 SSlhasQKoJGSAWzqyvWQcDAWvXkscGW8mxlqd5HOqAS6b4bMu7jXq3lSlZCds0Tpxm
	 mLGnGy08HChoGFkmh9mD8olsDKGvlrkYXgW7P0EVqI3Na8fnZ4DKjfLoyVH7SmeiIY
	 RMI9OTcz7oKPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610DCC47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170599249636.10498.7043245178910182398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9e8d074dd0b33b620511a5378996046866320bf97e9e5e1a0a4a5128c1117a
Date: Tue, 23 Jan 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705992496
