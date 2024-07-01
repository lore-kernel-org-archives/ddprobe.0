Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8053428F4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719805463; cv=none; b=OCt8RBrYLALfN5F1OeoLU+6eVpP1fOTM31AFuMIZ7HK4s0bg433Wpywbse5XcRXFNXEmVivQvpBQlter4YUCW8hotbMiJhqPe0DJaEehCC/WEbNixpFsNQsfnL/yGh1xpfw6SKCp2WX+EpOYr4317T9vwgG4L7S/npVrzZb3QZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719805463; c=relaxed/simple;
	bh=HZ3jO7AxptGebc13aRI+ZJ4L5pPomvlwbv2n7Jk6LcA=;
	h=To:Subject:From:Message-Id:Date; b=Y73oSK1QvACers8er5vWgq0tkkACI/2BYcfqKdaEw/zaBatJim/yGTcqIx62CkK/fBmoAaQBxDlt+F/o6Uxm7M41pIYfVYp7mGmSIJ85StvqLDljJbrSn33PRUEtZ9/HtCT5JRr4gw+0k2FkwDHk4BSKstRhiHunfFqKbu8O6jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p72e+9gj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p72e+9gj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD59EC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719805462;
	bh=HZ3jO7AxptGebc13aRI+ZJ4L5pPomvlwbv2n7Jk6LcA=;
	h=To:Subject:From:Date:From;
	b=p72e+9gjbj65KlAl/7nPzcqVmvQDYBXVqfPRYoHZGDyFJSmf7aL1DPms1k/jSYo1H
	 ZB9X2dXVGXhdgjE8wonJu2wf9vTZ0eApiinUsIdAFDB3cRCcxZHjQsHtOnqjJSEPN3
	 GDGE9K6C0qsMInHk8taJCVRnIE4KSWCU3P/dHwF0uEbhjF1WNTCJerwR43lpHqXY0C
	 WYEPe3Ti0MxUzivaahl3wXFvpSpQItyfzpLTgR7WCnMRvDu1RdY+j8Pb5ENT1F4dqj
	 HRhk7U3h0DDK0hTXBI/3Tru7LCk6TZ0u3dOawbnmAL9yttlGnIeKguwye3y3g4rNue
	 rtcMhSQMC7SZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6871C3065A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980546280.18691.1107412325014651189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d0d5a27b338aca8501db81d7c3e8e96ea82973b814fe7e4fdf8f9e80dfa4e7
Date: Mon, 01 Jul 2024 03:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719805462
