Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBC12F1FD5
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767215634; cv=none; b=KZucOExAxqqNWuFpODGMTciGAgekVeZWAVWKpxnM73/GBzAMHQ7rE0o+2fbor9pNCjyS1JnaosxTwqALSpvPrIEkCbrzMKCvyUJPSAtgJ4FpdvVZRJsgj9oS5G1ezR0lddO16Q5xY6FlobPrxhqR0WeM1/52vNLdS4XAmyEJrgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767215634; c=relaxed/simple;
	bh=1LrUszgpy4OAzAl593DesuWXzGGusjDgwuPzgs801nQ=;
	h=To:Subject:From:Message-Id:Date; b=cYqvkQYhAXqrb3AUVlixuaN6lvqwriomA7G11d0y9ef3W5fuBOYwoSNCzvb6Ph5zspCpYee42rNMy+4ZEKFxwsFMZxnBM9M+1mj5mLyU5AHj7INDuwcEoJagsthDkcOSCsC4sekj8SepFthOUIciQsNrsUMld4gk1L57fSslYPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXobXrxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXobXrxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D537C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767215633;
	bh=1LrUszgpy4OAzAl593DesuWXzGGusjDgwuPzgs801nQ=;
	h=To:Subject:From:Date:From;
	b=bXobXrxNfOxuBJ6JNxGUEK6hKDc+k2zQaFtrw1WyxKI9/NSt+7Hdk4MG3D4RlF/sd
	 zMspyFOe9cPgxFGGimMKZjItdy9aKOqjGPTQGMPY49mEBauGDCdhbJh6WxUd5dicS7
	 w2e6b9qLrlAmp0V3IYtxWCKC8ahIcyc9q7UX9SQGmhaL+59W9FI1ye75Op5TEk/RaP
	 ZH1o+cN7AFBUlNwczBm9fw0AFMUXPZ1l+oLGaQOmcGvyFv8S8nZ8BqJULzSXtGEMGX
	 7XCaqgKDlH7eupwjn29dZSVMvwwSY0RTUH+haULdhfjnjAT3OwnG7k7nuMgC8s6sUl
	 789zD8m7v13zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F62CEE57C5
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721563357.6216.17925921726242396961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06fbdb00ac5c9f3049930bbdcc6a9924ed70d1680b18dd5f9f2f46c4abecd99e
Date: Wed, 31 Dec 2025 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767215633
