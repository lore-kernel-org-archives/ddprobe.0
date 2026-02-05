Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F50F3346B7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770271434; cv=none; b=DP4KQqXofwafNvlgTWLqIxnU8sTABBSP4zKk8+OxgnLXXuz6w8FLl2ikXhqSRG8h1/Qmlhr584YslEHQWHYkNsKdp3EpcBLC31wr19QrcaS98vHLYUpkRvdxcSfmyH5UUxoy34JjsS8FC5aXeVANxMUOGdV1HSxWtFFAv6xqUlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770271434; c=relaxed/simple;
	bh=ZWRzAk84hWJNjNjoh/+PYzSSFRmWxe+9We0hCjIrJoE=;
	h=To:Subject:From:Message-Id:Date; b=uE+/V+LycNH7HSPUdxJb80IXjmhvTn4Lft+WwlI6iTUOVmxqUDHw8acDgSxwUlSya1DnX1gdNDuXp1s7uBaSkuf4ctQqrUAoCT4WVniOt4zT8KFk9aL+xx6XBn7qwUsj3lfs8Mu2CCxM/1FnBPM3p5VO7ION7uzKjLdCemlTtSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rq8SglDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rq8SglDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1614C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770271433;
	bh=ZWRzAk84hWJNjNjoh/+PYzSSFRmWxe+9We0hCjIrJoE=;
	h=To:Subject:From:Date:From;
	b=Rq8SglDnJuxslSL2TA2HRwE9NhKe+W3KhvcujkqHjTev2z/HFOOqBLvPOzm1BwRvD
	 6THGyTcc4f7yVPzRd5jITbnql7xzqA5MUmij0XvyDkNeCkJ2Mln3u2yA0gl0u77k1n
	 O2+8nwaJOPnKNgImBH/FxsG2AqxXC8kVRldvskEtXscJp3NnKoYjqs+vMxZ6xfGSEF
	 pQ3hxRK6ZMwleVEVu14ZmmThMBbvUl4eAbg7BDnlwWPv9ynLkIBUnhpQSuI/V5unZi
	 nisJd3d+R+mW6EWIz1qS2QiaXWvjTMaMUT16CbnCcUmPyDFVzpenCoCzdrvLMdXpgX
	 9Piv2dfiOdAHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD55E91263
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027143363.12898.18376829480145820301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129d4a84f37b2dafdcbd38887b98b999c9fbb7f0f4ac0ef4e3326ec801a21668
Date: Thu, 05 Feb 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770271433
