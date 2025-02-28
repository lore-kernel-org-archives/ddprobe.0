Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4249E23F396
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740775134; cv=none; b=Rm95jMK67e4SJASsYx3RNLZ5mLcHZxwQiSRrZ2VUJtMW8zi1L/glK3BozL5drd2AkCely6YZ4z9dK/amR6xc6BJUTmxz/HOZVSq5c6JcLyYWzB+s8H6lx9W+9ZswxSKBOOLOlyndFq9xMTRIpk3DnKMmAAdUpr827AhaEMgMVrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740775134; c=relaxed/simple;
	bh=z1oFqKkUfZV1w5DTjh1DAdxTyrndw0WOtbcW7xW/YoU=;
	h=To:Subject:From:Message-Id:Date; b=thUp929cI4a03TyyDP+VCPjYVAacNmctoAggrsxvePSstmfvpPSLbhvW/Pb1rz9GZDlRvvr5XYpRxPcqY5FNan418WyYuoB3nZhY+D1lukjz76k4gb+hBEdXxVCQudhNz5DLcBYlAPm1mqEqDgFRjRwxueqKNLpOeDuPRrLbo80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MT97K0UC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MT97K0UC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA947C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 20:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740775133;
	bh=z1oFqKkUfZV1w5DTjh1DAdxTyrndw0WOtbcW7xW/YoU=;
	h=To:Subject:From:Date:From;
	b=MT97K0UCmWAJ/Sv+Ns9GrKhGMf9oCQQuEBPhJX3NjRTxNpLiHrxDZ3G0TShNQtC99
	 gK1yjWGF6hxetKkIOSW+bVjXtOAGg97K63pznqMMvLQZKqytD9LwA/H5X/uOSQFfN3
	 +YitjE9TLQR7RWgE1eHFCLMoGfA1YsXl9T0DhdFgY+tLkXbX4PkBMy9EHmVVXte7+8
	 LXF6rPbzYHAue02I+8B/dGhSiZKgxSUPigGl1uIW0pvYB0+wQtvi2vr9VHnTFYkY2J
	 MtBZRyF/AXBMkSwNxwpEcJ2zL+PiDlEUwNV+ZNMGyAj1aQbaanORV6Jgu5eyeDWQ7V
	 p7XxSJgtUz+sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988F1C282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 20:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174077513361.21451.8685715175895816984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc775b4fe72b07401a6cd99adadaa7a1e3e44337469a85cc493806b865f8dba4
Date: Fri, 28 Feb 2025 20:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740775133
