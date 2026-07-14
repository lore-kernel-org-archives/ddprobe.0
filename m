Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607074D90CE
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784050114; cv=none; b=KdaBVEvL+InRzaltKUKuLfIMovXj6CZu9z9FtmVCD5ezbP/s1c01pgT9KZPhV0+keddKAWz9mt/Mb1pPoBK9iNOJXMZHsZf+0jQvbv3klET+6XNoYMJ2y0LesaIkgVzwQRCpPvySVdM11oIQSr2XCwbmkyyJg1jvuqIML3W2ny4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784050114; c=relaxed/simple;
	bh=frPFGD85sNJLVSwe25mU7Z4f+FfDYtlguWaXWOO0fIg=;
	h=To:Subject:From:Message-Id:Date; b=a6BlcXFHV4aU1/mBXcVKIXCv+N7NioazY/7+pQqt46W0hPRmMhj4h6GKFWU1Hv9/AYlip76gBC9irPwl53YzR8IyXdhgpL7b8RXx096ushHPC0WPMQku+KV8FsJwGQka4kTVKu4f2n0sxDuURLTQWMHvR4ChcRlZPqv+E46YG9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7POjw7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7POjw7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2FDC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784050113;
	bh=frPFGD85sNJLVSwe25mU7Z4f+FfDYtlguWaXWOO0fIg=;
	h=To:Subject:From:Date:From;
	b=r7POjw7BUsdcrySalgy3BOTEI6CfpBG0oQ2jasgm7bFZkyiTflGnvp4uFgiqLKiKS
	 diSI4fpH8tfxiYPr9VWpy+jJ4ZE5/6XONdnqx9igT149u+BmK+ZH7nwFxBeuGIKKAk
	 u52O0+8rFAWS23Twjo/qoYsc4nMoirZoVsv2SnP6+F14dGPGmGl3Ac5nJcBAwIDLHe
	 ezzn7GozUyMYTuXavxZljju5UwjQ4MZ7aH8IL93VJyk9kB2R8QkC77UnQt083YsTSm
	 0XoXIHL5qrleZzK289I4aECZ7qHfyPVZpPuuT5PuyDbQ+AGFT05+XTbfaTuMRJGgFr
	 kinDMngcOTb5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B4FC4450A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405011373.12519.11246719078116051749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956b3696fd6e2a5f7fe5902f8fa7a9e17aa0137ed300d6716c15bc8d700aba4e
Date: Tue, 14 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784050113
