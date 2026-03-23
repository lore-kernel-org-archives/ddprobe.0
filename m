Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126503128D7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774310094; cv=none; b=p+/sqGZN4Pgy1r82RqAmIedSiF3q4TUcvSXq2xYM4Us86FmU5mb8hxuDyYB8G6ZAtVzwkC0e+TlWP++G3bzW9d97a6AW1/eHp296IJCyYc5R9mTSYrr/YCkeggw6u7xeaUcfm0bUByiP2I0ZUclWSlp78TVRvUCpaOo2w4PV2BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774310094; c=relaxed/simple;
	bh=xWF+1yQ1iyAf4V/XiP7RQ6NaTJxD3CsPJC6Mfv46mJw=;
	h=To:Subject:From:Message-Id:Date; b=k55mYofOrsWABvITjUi1CXxW1+CRQMbzi14SRB5ktiEoX7j95TQOzrCnLf+/+EnLh/Nug0FFaeodF+kSp4pDAsZ9P22luPEWnsWB0otgqu42iLpxIXmIBQtgRgiR1OwrXw5C6A9ZFihmMI+udwB6j2QWee6HRma588PDL30ibE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTza3k4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTza3k4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A115DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774310093;
	bh=xWF+1yQ1iyAf4V/XiP7RQ6NaTJxD3CsPJC6Mfv46mJw=;
	h=To:Subject:From:Date:From;
	b=UTza3k4kEJ8B4OFeK6kCGKSyNKzU0P1TKGM+lwKjbSzISJd9IRDXOhDmM5Je9kc0R
	 2gnZg8KJASDy4dOtTqAczcaM+utKQWpvVFQQESwzKCrHkAkyGAICG5p1zNOuLJcwdh
	 v4di2gEVYDl08q0GprJC05Auk9E7YGdhkYFNpNeaTeY+j8eyyGrZetHRgYv+TodmTO
	 55T8y0lt6TKQ6mosdVmiCWcrFoYGqT9V3EBjQdga5ZKIHQm/8RCEZkYfqT/WMM1K6U
	 /C7+tBmqP1BLwXIKvaGji68gRlfpTCJgKXh6cAa0XQGCUqnvKzx/C1k11PqWUYZ3Ka
	 ny7xSHsg9/Suw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9119EFC72D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431009358.26164.15897799187249042235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea7150630732137f211b52909145dd3b37c58df3f9e3b1634d624be34888cdb0
Date: Mon, 23 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774310093
