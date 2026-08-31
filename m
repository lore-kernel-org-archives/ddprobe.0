Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2486948821D
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788193234; cv=none; b=COBaIOHcht3mEHI5fx/iZ9nbhK5mLvewf4GZuCc2mUIKzccrBEO/W2VVOpIv7v8DQIp74MBTiRKwGQv2e4rELY1MVY+20c7LXGmRrW7lqmcl0GQZpddWgq5H7Jv1npqXb1neBjdXVpMHrwtlzNZVIXDtOUDIRjSpBxlwIoBhlBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788193234; c=relaxed/simple;
	bh=Bs2oIjpjLvliHXKK9O9y2q5pz2Vn0lpuc5HDYdUW4ns=;
	h=To:Subject:From:Message-Id:Date; b=NbsDJRPyEaz5yIYGfo1ciRcjq/1n3EyfM46znq9trYB5amrs/PUlBTZ9Z5nbto1KAcZHqEYGFcpAbYQbRjlhp1gaJJfNNq6DZBHcLoe3e2wk9+OjJbNsCh47acad9zL5Y6hlhyCTdkQ3wqo/9kqPiVbD/bUIG+200JxcmAhAs/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4++MYDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4++MYDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4D9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788193233;
	bh=Bs2oIjpjLvliHXKK9O9y2q5pz2Vn0lpuc5HDYdUW4ns=;
	h=To:Subject:From:Date:From;
	b=m4++MYDW7efjcU8lfsc684ad5E/69WxCXZFuJNLsTbdawWdTmhYuxqaYZzcyS857K
	 tzi+hADwsZ++avO0XNZzWUIlN0BE0oGPc4yHSbmjPuJbRB6+36+fgJ08n2QJdfdcOm
	 eEvcmJLE4wtE+KAKAhpdRPyKg1Srd6Bc8SSg2hlN8Y694KOauaesIyzG2aych1spxC
	 Xc6iejF58G2cd9EpUY5TcjwTzoxPOgDeo6XjzziztNnmPuxa1wtzBBepDlYFypoZEW
	 2FCLmSA/0pDrK8AycnO+EZc3crCEHMsHsYQBPNYQ0mK0m5g1Q3J06XOzoc6M7f36p4
	 u0CBm7OBgp/rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFA7C624A4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819323368.21548.90612042683086301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f814d583f0764538be9643070b9c25be783ff7f6756797b0b707a78f8e011cf6
Date: Mon, 31 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788193233
