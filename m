Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199A4186E58
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731012354; cv=none; b=tnlAoN9WpXyKuEYKeRZBezsPDryKJUyNwRYS2ZYKsycxhKPH7yOaLXycVBWImzgBffkIUDFVN37hltjlG92ekGc2lZF+gzxGLcdeMHrwcRIqD2IojaMvDYrNu7pNZ2P97fZcXAXXrcjYRLFasjs4oD9RernYknsdnEX61i/nKYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731012354; c=relaxed/simple;
	bh=+DqnGHxyDyKU4PN56fDi9xROiD57XsKCGOIftNJbpDw=;
	h=To:Subject:From:Message-Id:Date; b=QSr3KHVoxZwtqcJcwRbKsX9Ma7OPu+PHG7tqy4lg8F/hWMEIzeiMj/cw4DKi7HQoyTPbb8OxFlIxK9du/Vx8IPIbBnIdABdKrztrWEUgUfrkdkOOzaXDws6LDK+b4sjHZgMnOTpUwB63AxKdJDptFu0mIs8SOpAqe6dvb702ATs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcpB8seV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcpB8seV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4360C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731012353;
	bh=+DqnGHxyDyKU4PN56fDi9xROiD57XsKCGOIftNJbpDw=;
	h=To:Subject:From:Date:From;
	b=ZcpB8seVNUS/wGgIdtpXPfpkmCOCxMdf4H6bVv2coxEwhXxrNjdIUXvPLjrbASHYK
	 Bm5I8bvNH5TO1j+MjPys8IKxjLAigEwsO+BxNsY5K49py5v4od6nUOpprxomZrj2fO
	 rquZHpwoQ4Fah3joQZEjjAm2loscD1SQe+0RxhRv5kjYmP3MM3keMhDevODHrnzBxb
	 Jfa+N4ZQGI/u/ufYAH5iKTSFW8sLUQ279rhtzojWGDEQwY/FuCAT5lJu099k6UBKvv
	 bCBNpG4VBH264GkkSMoaogRraKTv1qP1P5rFseyuTyiuvVxLGeEScrNgYx/Zwq6hH3
	 QegUyEJAt4wVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957C1D5D689
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173101235359.3522.13318331852642848280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28de9cbd29e1f5602dcfe310101b75f93bebc04a04e52fcfd57ca1ff7526c0a
Date: Thu, 07 Nov 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731012353
