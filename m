Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236D22FB997
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769087034; cv=none; b=NtG3OQTuo6E5vVNh0X47C8zC60pbBIZ0SD+cImf6uIfLcOZLUnE9652jrftcBwD07hP49REfAb8IX4T6jVDdPHr0tklR4+KvbIlck/hXgDUILx59pEdD//UOrvigbXMO/nh6XOvuwP4BxzMZGZ4JRMUkikb7yku4NUg12NNn6Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769087034; c=relaxed/simple;
	bh=MpexiXiRAcyBOhPv1RbZg5V2LmD2SCzz1WHGO0hO/24=;
	h=To:Subject:From:Message-Id:Date; b=Zi7FpUJ6UCN3h3ilavzbl1/Zg+HsmQppn4TOiLT3P6GC/HFrI4DqCMDXo4/scUPQ/FbdIWf3wtvOD/sGn7WYYTYaNIb1KI8KnFSHdBT23WkanhriZW+UjmQnGaMuk0PZAaoXKW9SmVkMdmO553lp35jL5tlk4AXGmOHcFVHCbkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECfKu481; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECfKu481"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A305FC116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769087033;
	bh=MpexiXiRAcyBOhPv1RbZg5V2LmD2SCzz1WHGO0hO/24=;
	h=To:Subject:From:Date:From;
	b=ECfKu481Jtk9a5tQKwxK4+JnnBN7mQAb/CtQDg7OM3l6ASCYOmzbBCIv8HQnI7QJu
	 sJUZtlSqerVe6OXAOttWpdUEcyE1wOj51k+B8LQAYr4M3rhQtbQUpcN+SmlCXc6+sz
	 2/jiKALwMkSom9YP8p1yruMHsQMUXJsVbNvpjc7Kao/8a8suO90a+1iqhfl9XMWbmt
	 Ud8CT85F2NQkiUEaiSAKGU7zE2nv7M017mCemLKDySKCAI4BR8kSmgx/NLEU8MFvLc
	 fqa9xZnmfi+sC2udWhKT7YBBL/VST0rzC7bl8FQggzTR21fr4IipUM4wsN3quYPdPa
	 PKE38aL6N/Qbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9026ED3EE60
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176908703358.29696.14802550450484608113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23fd756e2af3fea7b0b7d1ec7109902ae52b3e26abdc3c30a8600c5ee4a747c
Date: Thu, 22 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769087033
