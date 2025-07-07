Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1357817DFE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751932195; cv=none; b=EBrx3HZrAX29YvL8aDPsEWHaiU2ymBXWG8OJIA33i7BVDi0ZbdcPqmbEg2eVfDGXMykdwvW2uAWn+eiqinn0VqIoEbofJ/AIxDwg4nN8HDGVs6PO8sMZ8kCVLBNGp6Zo4Gh2QeQ+4HAvPTXu1RjOtmdafJtm8ffOAZNdLYuX4ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751932195; c=relaxed/simple;
	bh=EFJ8uICOulx6SoeIvT44D+zWVgHYOZxvUUZItUqGfa4=;
	h=To:Subject:From:Message-Id:Date; b=qsFDzWWVkvKTkTfMNVrZ7O3WBfbKbTrWb4UG98IQUHssZXVkk3CzPEHWsXl6p4uxex5Hz59B1OVoHpihxOWWRtp7TKRrY7MB+3M5iHsVbgcB8U5fulrJJxCwsDlrjUZV2hB4n8afb+stLdrArEc7UtfsN4l3CUJfp70y+hx/oeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqJNwPHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqJNwPHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D43FC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751932193;
	bh=EFJ8uICOulx6SoeIvT44D+zWVgHYOZxvUUZItUqGfa4=;
	h=To:Subject:From:Date:From;
	b=cqJNwPHnXr3lNjDw7nwUi0IZpru2RPGFyl9RxI5mlF7dpG/JqYEvoA1jjHw7wEeDL
	 VbRL6F0e1ylsZSlBuUwbG+m2ZCTrhjp+93vhoSXGCp0Nd78jfWo/FoO9jqIvjyoV09
	 6Ra/kG1xcBnxcL4VMqhsO98bm4GcRMXsMv8GJLrGAXMVFXPM1R2LgcAgs91yDABGnN
	 31mC7FoeuO1DbXuptxjFKMdggfgAVG649b0WaAHCSwPeliV7DIxHVTLtZFLR/LfyML
	 aevG4a9IAJrz+84CM3+NS8KfGsMlbYu5hMKNXLoJp5AtXqgqDNvONz+qkIXdHsQW/J
	 wvdialiXk2Bew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED66C71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193219357.11009.6552876975020648914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c042fdec1e4b936922ae6c37ed2eabffc190ae0e7ead0849b3bacb99aeaf0ed6
Date: Mon, 07 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751932193
