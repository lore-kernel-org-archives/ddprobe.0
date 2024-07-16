Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695CD18EA61
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 13:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721138123; cv=none; b=ssRJhbeGRgzW4a5+VNcbtGCi0lAnQ4WiJ0eYpy4g5QtGrv2zRwQaJEae/npsfFnVR4qnd83fdmN3S9VJDiH7ZeBZrLDhnZr/axD75BFdNlXKAv62l2+Jm6IYHptm3VflUsbLVb8HMDmA3ZX3IwCLHkQhzQiSuEpLan3cE8t6/3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721138123; c=relaxed/simple;
	bh=EBLsTa9Zha5rVfgnnM6t14mguEzwe7NlMc5Cwbl8t+A=;
	h=To:Subject:From:Message-Id:Date; b=dBk3NbOnvRKStpCpM/bPaqdlQb/hAQHvxfJcuKCyUARSO0KHgIjP2fGz385uZiiJwiFQJigyWqJc0RpGsuZK7flBK7B5nEq7/3iH7PZMlidzL8di5BW5P+yK9yPPAKBNGt1fc4boQ8/VclRDBPNfGynFPhMn3WyX5C4ML7HHYAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8QYh7jB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8QYh7jB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E951CC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 13:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721138122;
	bh=EBLsTa9Zha5rVfgnnM6t14mguEzwe7NlMc5Cwbl8t+A=;
	h=To:Subject:From:Date:From;
	b=Q8QYh7jBiatc6tIeiVh80k75uiOgc0zw0rcpN6tKTjOcDRr0/CbrpWTMwTZj9WQw2
	 zCYmFSxXBw/aiUZHotz9BDlMv1BpkWevjVSy5zxynoGwJEgPWqLaTrz/+Ry75/ht54
	 ilxaSrU8DAV7q0IKjk03+0Uu49If9DILT9Nky+rHNSu4JBV7eMUuWhuusi90Q6Jym2
	 n0rlfmzzK57hne0Va8VjNvrZKOIl0g2M0w2WHXaZyitD/D1uxHPA769V2EwSGsyDhy
	 E+xN9JVfUhqyckDiWG1A1gRULd/azrlkg3p76ipGZReZdVqVM02gBnOLNbQ8FYNOgi
	 3gbsZkjmXhq3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE7ACC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 13:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172113812283.26451.12599365185097509030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd8440accd1e2d764127d10a650d826ce6a9a8680e507963d72babb980e34a52
Date: Tue, 16 Jul 2024 13:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721138122
