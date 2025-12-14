Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292A94369A
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765676574; cv=none; b=mK0v4vUJ1cjKI3GeSC8j5npKZbKfo5uyfJYQH2ljevaQfeZ5zMVwXqs7G3BPKwA+Iw2I+CzLDXBuy+98LDcvIi5lf6022X5HNAw1OuxCs0oEPm4HanEGGjJqAPSlIO2+58xIdTz6c2GOsmRkrui6DmCsIVM/9f6d4GVwKed8KA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765676574; c=relaxed/simple;
	bh=4jh+sv+/eB+LaCPkpc2EfwYbdt4HA8WJN0Tdrevtcg0=;
	h=To:Subject:From:Message-Id:Date; b=uUTTKtty696sj9T+reTGOrRIEJBFjKs1EG8JYsfuVNsxManLky9aE3KAiOKBcfMv8yf4cpFuPN7rN1p4F0D7nwv1o4zKhXdye02pxKXQ1sGQPOB7oAmh8vfeC6Pd43beh6Bj4jFnPziRM0UiijUU40rgy8WwsrRZ3p2SPtKzUBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPmq9tyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPmq9tyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CC1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765676573;
	bh=4jh+sv+/eB+LaCPkpc2EfwYbdt4HA8WJN0Tdrevtcg0=;
	h=To:Subject:From:Date:From;
	b=bPmq9tyuQUx7el73r6R4OMn1gL7wEQqzckqJ9Q9zc/Kt5KNUSAVsv32P40BrNe/Ew
	 kFtpAsR8UMsiTiy51Te4ZWGH+oZ+gSNudY88odbpbbw+VDU2JUef7srKnvLgzx8Ht1
	 pCHbhqLZ0DZn/oGCNfccx5Xqw33/UAbWuU3B9ZlnN1KJsx1DjSiqxqPmZJqKOugwVX
	 w6pTbD9qhmWGAwNmSK9rxlKqbCIkMVKNZlqjr78+T4mMtFwaQ+7gYYlC4TOkiELUiB
	 wHSSpziMIxwgB44txrW0DFlOCGYxuA5cM6sIoXyc16VKNnbUpmihv6p+4IalrUNmfa
	 MlsKuGRCTw1tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943D4D5B160
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176567657358.3878.16882381857024998344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e3908d18a0019137763d48204dea66f892af335719b5cb059e3167e6afea5a0
Date: Sun, 14 Dec 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765676573
