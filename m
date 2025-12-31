Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C3F263F2D
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767178434; cv=none; b=MPw96YUrp7f/V/zudnkm7op9Wdp8lubM5M6xsJoKeGYRfNkl75T55fMb7mweWOiBcLbnK/zPZg44GUulrWRiZW1C3FS97bXqywrpjus762BFWLqVfYOu66PB4QOKffl/5hTmuIb/pF/dTGxQqBzqBK/cwebmeb2mc+AD6mD10yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767178434; c=relaxed/simple;
	bh=jUXO9QY3QhTN9/iph//e2Jj3SajB6aNxEQP+gp/m9eU=;
	h=To:Subject:From:Message-Id:Date; b=GUTLClxcuTFoAIYuYzZxABqeOcrpUChDCCRp5c2PTiqRHwXELySplLm5SpAM3r/A2SwKkqTl9VWtOC0PUkBEJSHqmfJUXvEw6aKNJjhuiCu4A+Z95GsmWwbLoYRfXDaLfMYzoX6PPnWd6rlu+A2uU95QXXZP0IfYkH6/scJpEE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVGGJRLp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVGGJRLp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0049C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767178433;
	bh=jUXO9QY3QhTN9/iph//e2Jj3SajB6aNxEQP+gp/m9eU=;
	h=To:Subject:From:Date:From;
	b=sVGGJRLpEI9cqDXQTde5qbCM6kWFrqeGcdmsFyiVfS11C4mmT+LrotHN2ycZr5+Mk
	 AC9kLNvpAtH2NpQ1aMdbfBfWp4mnbwmO3dyaVnjWN3GtJ2AMo4QinWptyQ5usQcx/U
	 e7SDSmzTzZdm+1omovXZPVm9YQlt3+eZVsLooUe2zHrBx5gCf8NHpWq81+j18fprHc
	 OiA2fr14x8Z1e7AcRDWPrX6doUWHNZHF9vdU2kwcmzGDw0STnLe2xLNxpop73LiK5L
	 205AnbIVsG16UH0DaWQa4YzEwTzJ7cdnl7ZZ2CxHwJthQjw490EQYRxQkGoC9DZ0Kj
	 8JhCYuTgA4jqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F329EE6429
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717843357.13886.6565939231103126519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dfa2df9d2849b91d63d76b2f37216f30b1adc4bc9bc750732a23f77556c8f77
Date: Wed, 31 Dec 2025 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767178433
