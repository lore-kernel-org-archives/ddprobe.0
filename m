Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625668495
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720995023; cv=none; b=nBcXDQ+usYIdMG+hglHFHumcqK4YJTNM06VR0jA7acT7g0JRdyR6IhjSZwXACCiD4JQtpyKqFAMhYdttW9Wd2Tro+oIUtlH/IQkxyPgBAQG2F+RHbmsFXUZW1uHz751xQcZnPYcrf5RqVZ9t8F0wv29ZJs+FlvP8XInSuvSFeoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720995023; c=relaxed/simple;
	bh=1oGiKVRhxMYydbiytBekp5jYTuhpZnM8tqS6DUccXoU=;
	h=To:Subject:From:Message-Id:Date; b=pckG1NlyIyHgac/arYP7SfAvrsL2FEYpRM4HUCCm9PV24hKCcaCHZsYC5SNZaPyTyhu2BFSZ1ZPAQ/qQxY+ZL0TDrZHUxnQx8khEVEcU7jK/jRbgb8HeEHG9PNHEMHIH+X+9VACYuun6gK8N++feW0NPxmmwGhJtRzDPT12RCvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+bALfmm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+bALfmm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF828C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720995022;
	bh=1oGiKVRhxMYydbiytBekp5jYTuhpZnM8tqS6DUccXoU=;
	h=To:Subject:From:Date:From;
	b=Y+bALfmmoIztFO+DiSexjgdmFpZ3JwcA4g8AQdFaEtVLnuWkAtTXLgRjLpwPP5gVf
	 z2rqBh0lB5G7mhHXMs6D2WPZ/WQL2Ua8uZXqV826iaiSHzoE0QXX8ETxH9AzDm4ZyT
	 aRKpou9WzO+covh3erz0ndDhzso/4sDBc9F+3oFNwGNWpDgK+t7+n+BZXWcqWu4Sqv
	 YWzi1kZkwUw3AvHcBBjBPi5acbw38kxRdHE8BNWPJrUT8Q1gX8zFOW1tnmC+V4Ffin
	 yjO40JISKYFc6n/elhKncUiDdP7QzmCfUa1nXLWHL3E78vrOXjRLLZVUpz97T4m7UZ
	 DvaOlIlFPCSbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69E8C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172099502276.25222.14901377243119933978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81f4abc927b17a22f3d00dcf8b945cbed7cd3dc06262289d0e10ac59ec8520c
Date: Sun, 14 Jul 2024 22:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720995022
