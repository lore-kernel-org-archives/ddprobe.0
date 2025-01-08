Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108982594BE
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736362554; cv=none; b=Dv6GCOgH5U3NKGChq30c+p+RkD5JEdGqzh8gnzhthoSPGBP2wGuGmMwIurPYJLao8gLF1K4Qzi0+MgqUzkufsGp7mRtiUiykVq4bNGQNZo2dQC2jvdpFcR8rZUDyhif+ZYVbYkA2h/V5GwMgukssKdMnzVuI6MCw2OEwCgA6dqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736362554; c=relaxed/simple;
	bh=//ZAop5rQZsOL98VlN+0rpj6Vld+Nv1JBtVx22wl90A=;
	h=To:Subject:From:Message-Id:Date; b=IdzlvOGnMj/FfazTWbzDw0zHkJYlo8TeTpkMiLMywjvtpYX/9na60H83f7cu+jJ0S+kRRmin6ZoPn6SEyiu9FzoNetR+kzCTjFdVspVQ7lh6wsroVN16kGEi55QWjmH1P7aQUKC1hI8B8vr2JRrqsT4rWMMLHzPxcqM8HOqflDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+kaDkBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+kaDkBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0897C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736362553;
	bh=//ZAop5rQZsOL98VlN+0rpj6Vld+Nv1JBtVx22wl90A=;
	h=To:Subject:From:Date:From;
	b=u+kaDkBGLgeqJfk/rRQadJNGQd7jIzStE5Bsog0Tuk4wSTJ8Dr53WXjRmD735+VYK
	 Mo0lmxnLmoZfv3Y/1LhQBlcMrHuIr5TwTFbeamdXRujXS+zP0IBcxdkvpa7nUK4e17
	 0El4ie32FUOF22jgo7acQC9+rnOqEbjABAd6R3c1UoDAShk5rFXKtM1F5O6ECCFT+w
	 8pCEwp8A6+g60nEwVTk7/q9sMnJBN1VeWy2MwuSxtJK7I/gjyZ8KcSMBNjJ7o5VKEE
	 DPulEgCouGYL/DdXDQjw/OG1TV0N1TPF12JuHWzmcBRr+FJJ4THLrYxok7bufxwIzO
	 wY0TTeixEELkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB9CE77199
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173636255358.6727.15546512862188306763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462a96883c40cc318d77ead2bc16188b1531eda043d8cebfdfe3b63479ab7097
Date: Wed, 08 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736362553
