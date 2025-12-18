Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143E81F30A9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766102034; cv=none; b=Ykyd7NdJE6G44z+2KBMdpyMEJUoQSR12cHfPpqgVvGk7TIoxO99ZbGz6eFZmN+9AY4lFiO+Q7hgBHzd5qUba/UQqQM8alSnfEJ3PGiKJEB9LPID0qHSjtpYvKJvS4fW430xB3EvzWHRhU+9O9QbmQeL7KudHPneaSWC0ymQMQ+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766102034; c=relaxed/simple;
	bh=FrHc5dEqCUng9YckMNmj4rpMZ3/+WYalzZ24mr6ZhZs=;
	h=To:Subject:From:Message-Id:Date; b=AFvD3baB2mBefhOzv0OHFZH8mJjUznnrYVHmfZ67LMaePwdj16jwuJo5cZ9lSb1D3uYUlciU0IegGuiEdd0SqNuGedzTHrM+qNo1fmOi2BtJE03OfIDaVT4clnYexnOofSeFnhfMkDS6bU0GJQt5FGuUfXhsEXw2vPWmy6QBCP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZRdL2iX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZRdL2iX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8117C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766102033;
	bh=FrHc5dEqCUng9YckMNmj4rpMZ3/+WYalzZ24mr6ZhZs=;
	h=To:Subject:From:Date:From;
	b=TZRdL2iXM/BX6UYBlRThktc7tI/RKE5BenzkMe6GA3RHj5FNJnZ1pz3kbR6iZDM5A
	 ZUVTEi4A5DPqVgKRh6ITupqGNZA3QeZNsV+TpCUD4bioNDCfqMx+9AOYIUYa3odcyx
	 zJx8okNZQMITalrBD+JXvHwfMtGhQCpiFdJ4P1lLMHLvIqgYp2mV59WW0XB81k3FK/
	 Db4yEGxwDhizAeYl+o9qW3CQba2lEJfR1YSym7xDXLo3xoiXrrITrQ4fLDp6PflICe
	 npOqXFAA/fOsLCyWNWM5BdG7v0GNlOMZ9xHeukJYzRWu9QHsSpf2NXIQeObrlZE+yv
	 c4r8jSmF1kemw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FE0D711C8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610203359.22869.7996734901231248947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e91ce2b6049773719546bb4a3a9bd7999a71999de72fcddc0c2c4fd1760a5fd
Date: Thu, 18 Dec 2025 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766102033
