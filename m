Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2039918872F
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732542354; cv=none; b=Z5h07JcOfdE8tkoB4/5sEGMo9Ldo8JNINPdVZsiuFYsTZw1FlG8SqwbWqK6HTA+ztYGfCr8gW4pNTDVTZ7+vzUpNm2qrMcMv5oI306pLXZZt98c1G3DaX4ABvxcT3MxwbGg0Qkq9WHK0gA0dAZHeTOMVsNmnbGBjcGxZ9WjWpmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732542354; c=relaxed/simple;
	bh=WcU1lk+qXVwTXHfyXH8I+LEXG1KcAn+NLnrMXZCo1Q0=;
	h=To:Subject:From:Message-Id:Date; b=MJESMsQ+M6SKNUodePUdSxcVm2GqdqgaX/RLUx8ZUsRjZ1Ko0peYqOyO5c/mN6evQtrXSZMA2bRLPjYLnVGxgEIaXhzJRVcw4a9EyXHqxsNm7QPJaGudpyL9g5Lr2rjidlup/nzWethwQcc0YTQCgZyoYHkhaNwJruwCtflWKxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bu7SM+Hx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bu7SM+Hx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55F3C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732542353;
	bh=WcU1lk+qXVwTXHfyXH8I+LEXG1KcAn+NLnrMXZCo1Q0=;
	h=To:Subject:From:Date:From;
	b=bu7SM+HxmHzv8ey9q/hAXeoq+hLe3JHLdjbMQz1TevqXmSEmh7mihnvDeeRj6I2SA
	 4p386dQO1MXrojKUNeNnhidjz8KWebbV94AyUdbmzmw8d2P6H6+CyXzrMcsC0hgwgs
	 1PWFHAaA3dU+3CIJMXb8h9QLaVjkZJ2t3ja0h2Wi6Ai2Qza/X8+EGQQzj38qy18aJd
	 3H6MsqD+3VodjxVSs+ZeNNHmGSbKIEsaiVvBcf7f1fATYQMDWUU1v3EA0nAe5EXl5D
	 zwukxYPP1ySXwWSVqq/F84F/Iopz8VgKe4eNjFFtAK+T0D75GAoD6SXNCS7OhvzBBI
	 LFuDCpZItB74g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938D2D58D4C
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173254235359.14310.17798248654243458366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7581522198fd471a16a956f3ccd31786623455836adb8afa5f79de2da733db5c
Date: Mon, 25 Nov 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732542353
