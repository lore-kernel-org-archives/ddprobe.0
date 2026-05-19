Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7A73932CE
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779226834; cv=none; b=uq0v+MpRa9xtGolGYAC+9srRT8a5fiKdf9k30ohRrub1oo/vIkYggfd7KuyXjF1RHdUhbwUSJY1v6xpnTSlIYytxWCjm1kBXxeU0CICCQBB6kkWuc3lCoO80Fx02JSQarjajujIkPupArOFC+DMkEZ2rQGWB5VWsbfQbRjC2DDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779226834; c=relaxed/simple;
	bh=fnt93C+3oaThdLN+k4/767Ryr3612Af++Fy6/nfb6NQ=;
	h=To:Subject:From:Message-Id:Date; b=UQSycRgwvPoq8QRfQL0OAfHq93f7Fb6yP8dHC9NArejIWfXfghQ9a0q2l7/kntAePoMxfhf5DitRnyBbmTgTlpw4VLftdKVGyxQB0dLWvbC7ZilGAwG3q+Eq/3YnYN3Eq/pb6Y8SysASrlT+IV2QW/aqTN+qmlP7v4uRFYGd5c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChnKcUrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChnKcUrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CDFC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779226833;
	bh=fnt93C+3oaThdLN+k4/767Ryr3612Af++Fy6/nfb6NQ=;
	h=To:Subject:From:Date:From;
	b=ChnKcUrEE8sdHE3kK6BCiXKxfymXksBbNnXd2wt8PjLNumKSLGKpPlXTuGNczgPus
	 qO5NIJig/QOSj/fEgf09eFYCyMXH5geQALnwnGjp2kXxRv4CzkOA9erBeFLDn1lq6L
	 vQD9L16TTKRO4ke0SN4Nw9l6eFGasUR1/zU5djeaCZK4WKBbmi3UR/85+k9Xkqi7kO
	 oKuDuSDROy8mXPjy35SAoUjGwrgBhSBbQ8rdSKHYG6JvMLKOT3AvarQEmiTSq3+OkB
	 n5Cx7mxzh6Py5Zg3w+phbUseDvnrU3eDpGWdMurt+kr/MB18HmGaKq8Gy0nwvaoNpZ
	 tlSvF5iSsJrwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4ECCD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922683368.12404.11864293488873958471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bdcca8908c6845b08fbfbe98f6832755efec780ff86e05897fd041081a438e8
Date: Tue, 19 May 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779226833
