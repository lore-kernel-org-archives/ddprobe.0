Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DD48468
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732935954; cv=none; b=k0koVye/s5mpsEb9qFLnwTW87Lvuax0/mzagabJ1V9/SlId+YilQwsRCY3c5wXMGlImN055byvqsGQuDgpe26UL3Mn29DsfoenfTLsRrMyKKLQGiHhYeBzqaxOzxGnys7zwOfrzd9FWRBX6YsuCqNIghAVqWyd9gm9g3TwHTq34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732935954; c=relaxed/simple;
	bh=eX1cdEbG8rcfH01YiWFH5RnYeG78txHkWU3NHgMR0s0=;
	h=To:Subject:From:Message-Id:Date; b=Dphf53NMio950eLsLKYmuiKJfFJFnkmjEy2xKGRWbi+8B044rud4jF5gASIwzvqj+aPIMOuRCzHwjr3f8padHA8gcFRcDJ409hdw/xl2Q+lcRrg8BIvEtqJHB/Iu7PeVORufxKuYr2IOHHog2OWJHiusG35xYTfFofK8cgOzT5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CA+KCKPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CA+KCKPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB80EC4CECF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732935953;
	bh=eX1cdEbG8rcfH01YiWFH5RnYeG78txHkWU3NHgMR0s0=;
	h=To:Subject:From:Date:From;
	b=CA+KCKPwztGPVEvaXhalWrOF2PNzrfUFHeuRlj79M5lCmzNsZzOOAJ/n9jwjXFeT+
	 UWlXABLrIrKDizDTCAPFLlcau6WCdVTW/1ezZhKxcCXYU5FH1ELQLI0SuF15juvIdJ
	 NNQLcxjaxZThFZcJgNb2mVTJy9+A3qY6kW5GYyVJmoYVvUzkAmRO+UAGw5nqTji0dL
	 h6syo/LDg8OTRx9TnNfAWoq0uXhBwh1MzlyjsE7kMlkhl8C9ApnSSCWLX8yg61aGlm
	 of1AYPMB2t3Gsbtgnb4x9zVQp/QNyUf1DNx8Mt6ngtHX3qkzcmEESZ+MGV2iwJNApq
	 Eixlm6GTTdDBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985B7D735EB
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173293595360.4259.5485204500894057244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932c182ccc368141a1a5c61ac0f2e09eb7d01174d8d2f5fcc14e92a6c44347df
Date: Sat, 30 Nov 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732935953
