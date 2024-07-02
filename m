Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE9D1B5821
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719942323; cv=none; b=tg2oFDihHSoklhGQxY1MJtnqYG+g7+JHaqeuBZb1soAg3LUytXfrz8TQz+CpBWGEIUYcrVDyv9yQhwNrJ8LcvJ4YjA25FwGc6IdJTqiLuRqfxWvUbNOEp9zjnPf5MZ1dsJ8z9z0tKLL5B/5pqPLMIOYKLTy0rUOQXASWoM0VEmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719942323; c=relaxed/simple;
	bh=cRVMpvdmKKNC7ToVXHEpMLjRqerhf1xB2HetHNmOTTA=;
	h=To:Subject:From:Message-Id:Date; b=UxuBFI7WjFLupbi5c78dHqxe6uDkidYWTki7tP7/r5LL/cQeYfZpR1y6bIxohkhW1t8S6fl77+xTLCwnMVCo+egUuvY4Y4+5XlFFiRCYQxwX1uNRNubseNuZY65tMPwh6jxoc1gMZzFDfmhsGmR4GssLFB+GQMXJx72yvL+pLaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvM2J0Vl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvM2J0Vl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEF2DC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719942323;
	bh=cRVMpvdmKKNC7ToVXHEpMLjRqerhf1xB2HetHNmOTTA=;
	h=To:Subject:From:Date:From;
	b=mvM2J0VlhSycDfYn8+9HJOLkBjzXzXSeMSBbPlqjCu+ex4w0Slj5eev2vV9/aZkme
	 ZyTLEjPJHgBNwHr418kQU7kq03cgL/Q27gYPMknmoHHymqsi57bFOXZOY4yfvydNdP
	 D71J1krmVLIenF1xSfqMsMdgBtDjwqO2TUs/+HxBsZAxNaRhoIoboRg3YGt4IRyK3y
	 HC6tG1TwdJgU9sxMJpCJ1Gf0nPbqA0RWEaq26j6SPya87EEIsrBP6uIMVFuPm1JI3e
	 aiWymkO7hGG7+5d3n4rPqilwi/+NpSGUl31KzEdAZBBMQ5A2XXcBqao9fO7q7Nk3Ni
	 6DMCJ9CNev20A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF615C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171994232282.25323.3887689340206921344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3e4e59e749fccdb3b6f809bbeec919e0712bde086200692f88e49c665badc0
Date: Tue, 02 Jul 2024 17:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719942322
