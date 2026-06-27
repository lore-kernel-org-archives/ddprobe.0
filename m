Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C20C3115AE
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782578314; cv=none; b=BKtGkKdGd7u7C760at/qNGO2vA+CKDcSQkVocRc9Mbtafd3z+DZcXzWCCkdUbVGDTZ+uk3iFqdO7gl1TZ+fm6zu4k/8BRFy5DxD88mEz5Wdxh4S3vM3T/4spBLmPJ8S9wC0P4KMvxGWFSBSuP5xf928MsHECacT002q3l8BD3lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782578314; c=relaxed/simple;
	bh=HsNfe3grTqRP8NhLTNPub5GxAOXk79VjzKQ4NKC03mk=;
	h=To:Subject:From:Message-Id:Date; b=GYvIfl3NKl3nai3xyk41Bfh08er/F2F5MpHiwGcssNkezAITlaGmhQ+ewy+5kRGuM+juHNFCQtYXZqa7vGFRPfkiyJKFKDWTl7JAfHhNZqS1hMBn5Hi48HOSD0ANoDXzQLgFOUjwRHpSsPgYUCZ3k55FB1CyLl+j5caGZQNnKAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0ylXYqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0ylXYqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA92EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782578313;
	bh=HsNfe3grTqRP8NhLTNPub5GxAOXk79VjzKQ4NKC03mk=;
	h=To:Subject:From:Date:From;
	b=D0ylXYqJTv3R4wjZHZxSJs1Z9KFWs/iNZdORMr9vyXgpWIxyPpsjQw/AdO1hXGNXE
	 A4xPmleZy5Z0nB31l+oEySp4+pRjxx/VcrWKi30NV+WvXpnEZwPwLQ0siSKeHeYB7L
	 26WLe4Uu6rf5GUxYvYkY2SaVuQkWS6HdoOoILVKFV55+oTQoKopP9N0c8OyxkKQ0Em
	 FeegxrGAmESY7LsiBGysYSOEUYy4AqFVJ07pUMmDv7u9Gj8ud4MorJ7HOPAHPigRyW
	 bbIZ9JUOpVG0HM9tu9gOsPaRAXF2TvQ0u5nSdyqgSUEEtj1S1pcEe4q74i6Ezif0gy
	 LeEg91YrIHvDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB76C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178257831369.2700.2961608826749239352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1824351a4d6b0a82048ecc396efbebfcd1abe5b004a2091fbb80dd6763f8f1f4
Date: Sat, 27 Jun 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782578313
