Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BA32FFDE2
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771974294; cv=none; b=hmYqw2KX1kWFc7JwtACHwj3Lj8zT5ORGXreYseveuz8x4OQrsB+ulDIwCOZaQ6w57BIExxNEdiTct43TY2wWfr+Bq04wj4fZCz23rSgajquPkzGi5mEOaZlQ9e2tIXX02hHQKDXNHQw63DP3HtcIkYnEG21PXCfy+85edggb/Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771974294; c=relaxed/simple;
	bh=16lOf7O3cdkDEMbkYqaPBguIINCD97bdZBWXgak/78M=;
	h=To:Subject:From:Message-Id:Date; b=DcmVEn2kVZRVdl6uEmdRNfh6x43TeHLyWupbrco41xBbNsD5bPbLyiXkbKvSvRLFAH3UKDvBIC2N8Vs+ernCwcJpI6RospzAo2xd4U2YM+titsjX2QBCnU9wG/0XJc7UjIOthXwB0sEUQr1EzoGPu5LBmVXYhykYgjYiOMCLA04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncsl4mIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncsl4mIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1ECC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771974293;
	bh=16lOf7O3cdkDEMbkYqaPBguIINCD97bdZBWXgak/78M=;
	h=To:Subject:From:Date:From;
	b=ncsl4mIW2zKU2fmlzhs3zpo0Bexhdm6gmLr8wPtndWfGEq0vuLvwTxYeWkk8ltzoN
	 r9VEubcj3NAaQLj1iciqMDCzE33aOsYP2jkBbffCo4rcfwpeitJFgX6jizf9z+TT+H
	 I1hyllo2LMGFzT0jXEC/lLAJ4kWMRY0yiM3IcVGZrGpY7j7RF6k13NlWd8FgM8j7Nw
	 SsDRw76p9sW1zT+JbsmduzFvcW4BjwJSJ5/iian/f6D039wMohJaMkVpKP7fkXWWYo
	 uQ5/pu5cQRPjx2B5syJA/q3HzlXwnw8s0SQswhf6M5wTlIKQ0RHYmTkuT3ejXUQV3Y
	 8g1YSvas7l6yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D5AF55429
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197429359.31505.9447227747275213962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cebc88444d5399fcbcce483f2f81f370ae1de12cb8b9b8d04c578d6b08ff35f1
Date: Tue, 24 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771974293
