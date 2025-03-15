Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513BE2E338B
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742075994; cv=none; b=gk36Sjj6SOAtGe/WcgYczTQoUIIunrDnyuPDYP0+EL+QywCzXKgDw6Y63BTdseQDCBdWh2Sqh4xm+vKa+/zc5pm2JcS04kwXOt8xa6OoYj4l7DgZFfyYzv8T51ExRrMl0b1xCzxHGxG99H7SgChvuGdIVBZ5OKbY0br43SDtqW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742075994; c=relaxed/simple;
	bh=t6VM8go35DuhrhfAbnYjzvb76SG/y5uxFiLbhAyIQQk=;
	h=To:Subject:From:Message-Id:Date; b=G0nQ6yiH9tWMT5l0OtRzWneSdT33mquReUIML7V7EzwunX7C/aQ5t/fBZ5SN+eyDWxvdG+zoqI3MGCboh32G6vj6M2ravGneo0bO0q9CqgssKDldB8RtPWBpwOvF0CUtdmkZauoR/o1y1tQRGXHtwO697r2gKP+iZnQ8ppkfmUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSY3Jl6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSY3Jl6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF19BC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742075993;
	bh=t6VM8go35DuhrhfAbnYjzvb76SG/y5uxFiLbhAyIQQk=;
	h=To:Subject:From:Date:From;
	b=SSY3Jl6GmEgmb+nJLxyioF218hBidEeWouzq6xg1qaT2EpyvXz0HEfzkkc5c4OIX6
	 YP6cqMnLRtOKAimq1vvLWJh9G0iVmsJhA4btrEVT9mDRUr5KoCua6VpJlV/5gRS6Cc
	 g5lJ+VE77MocDFxv3WTETqUOgGWVrGFw04qyA5TYjIPPEIWhjU9sHc3Clw41+KLP01
	 zokn6lzjpXWkVCSkkbGOiWHiSABG1ZDP1a6BQ3ErFdmHBY8EdfexcR4ioTWQFS21HD
	 lMlo5pN6vK8sHkFBcJjaO0LErkxCStVZVi1w/FsI6Z32bOZwFMcIj2CYNM4aodv/o+
	 /MrJp+mgVj02A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A9FC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174207599359.12350.16306144165619453492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 180e93faedf8e5395b066c3e4f1a53d10b2003201997933f950bdc638a6fa944
Date: Sat, 15 Mar 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742075993
