Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3D93093D7
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755193794; cv=none; b=rckEJ+tVwAyoaYpZGJPX4SMruIDUj4gxnI52iw1yg7BU0cnAeVhdNqtF7dZnSFzBECl0IXgr3OWZQW/xTEdx/A7kC5pW8+Pik2vBH8f8QYFCEPoXoHEhrUoxXIyS0LKhR3UqFmeXkFLP+3BAsPhwxit+95JGJRHbugRyaiWpgNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755193794; c=relaxed/simple;
	bh=XYV78oT49fmPIJU3bM/ZdwuFbERfCWNbf/jxl83mMSI=;
	h=To:Subject:From:Message-Id:Date; b=a6Khy5EIn31DFZWTFRnax/Lhk0tK3cLvWEQyOllmQiRTURwKNSM6vF3RXQVr1xd0UINwR7wtGHGGGqoiQKcqLu1+VvSRzCCEHmw+qGE4Exd0PKzCrc1VwWwnKQeZDwuPPZNvp582Xz2FFxYr6oYqNm1eFR0LmOnBJ7A+iBHj5Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+ebGXHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+ebGXHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFBEC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755193793;
	bh=XYV78oT49fmPIJU3bM/ZdwuFbERfCWNbf/jxl83mMSI=;
	h=To:Subject:From:Date:From;
	b=M+ebGXHUzLw7eYkzZjRRgM0kXoAq2xQUOvLlM3JGfk5EuhmAdXxO1miXvUXH5DQPC
	 3uaboL8JG49L6G+eshSjvhmwcYXbQos/Mt1nmnkqGUpheJjvtAEoPrQ928h01qFpwm
	 0MFSBiVYFwuGdZ5uE3Jtg1eqYt3iBytuQUslWE0mDvzOGTaidTITXRHJcjFIVzazEx
	 92z+M1zyBns6J34VJTdLdwREEui7hcqwmvq96K/7Q/vr8dI36zIvpO+ZfPdBPYMLRG
	 ttabzmmoBH3mIWfL4A+HxOPfuFJ8e9kFRO0rQi0pn85CyIfJamEIsh2RqWL43tCzkI
	 dgvxweON9P/uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB05CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519379357.7026.9261308209586779204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a685daaca62b7e47b7d3fbc06feef4977a3cf47784a03d35d57b29eaf3327e
Date: Thu, 14 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755193793
