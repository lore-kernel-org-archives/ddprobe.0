Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E31418EFD1
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777258654; cv=none; b=Q2NLlsubR+aOqcO5EAXJGG/6ipgfEdOjvGfZBIuLBQtXCXANthUvPjkUCjiI1b1lJGz2qJpgZuF1LXHDbE49l80TFxLTTdGoikE7+ibwT1DL0ztcwPJKs5DZFvsnPaf7BW2UJfqBMFsri96O0d3m/THaWcDoOGeYah1PZixlwdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777258654; c=relaxed/simple;
	bh=eVqAOExOd8zmmooca/Y6dB2Ko4IO0IPSThurdxjdu8c=;
	h=To:Subject:From:Message-Id:Date; b=YygGUt7qTzI33WYoMyqvswaaHbSLWStL+OaK7VdBcrbX9mVBzYvlgQNH9h1rSJBpoVO9AX9hbiF2QnXHmSm335ToUdxGgI1YvZ6j+lx0DV6oSBOUSwWcO2eXssozCMmka4l/5tECCdwr6moK5mPsBst1BcALyPnK/XP9GhKoE+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzPSo+lK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzPSo+lK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA24EC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777258653;
	bh=eVqAOExOd8zmmooca/Y6dB2Ko4IO0IPSThurdxjdu8c=;
	h=To:Subject:From:Date:From;
	b=GzPSo+lK6Mh8oUQuxNAajXVIX6+3gylOgMB3gtLsP8ZVMZMRBUi9nNxW+EF5Qbt0P
	 dH6Hqk7RWx1SworsvrkEJU7Yp0uhL9csGIsJ1d6y3RYjRt3KZdYC+NZxJNTrBh7yE2
	 LGlm5e9PVWhgQpzCAn9wVSojzsT2VdnK5VylV7H5l/IaqZNJ0CHwKq4tA9YCcbebRx
	 Ioh+sakMQjcSQlkD9l6Mnj/lobT+rJDUjma7lMLStKdKS831o/FBpGU1CwBS/dRXaL
	 +7o/T2YQvPEQP6/QzTzKhbG1QFslFtIP4BAwtpAxIyzxyEMPjr4io+qgzf/uo35r7F
	 0u9BErzPl5Byw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AC0FF885D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725865368.20841.3854395742692580078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6606eeb6f89fe1cdb00ac7ed25b9d53bec3783ba694978c53f0401a2f2ee9d80
Date: Mon, 27 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777258653
