Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99F3713CFAF
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712587096; cv=none; b=QRaXWOYl3yzzwe9+BuFAJWtJrBfj3moHAts/cG7uwCbVpCCabyPs0NGkaRiXcjzhrSEVv+XNg1HMrcsMAZFTp5ZbEcDrBFOic+DXM3Lyzbhq01beyuxT6HsqcV3LTthYxb5Ro40sktzOHBL0R0fBnNZ3/4nXFZ1xuBIhHIQUPSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712587096; c=relaxed/simple;
	bh=zVmJcVn+ThOAQ4jJHMAVZzLotwGxN/wVkWGu/GtBrcE=;
	h=To:Subject:From:Message-Id:Date; b=TUDuV/vMvUWnHPc6CSfNNIP0JMXjSce7uj/JMDV8oZ1KrTwykxpLEF7Y+npuAVubjbdfMke9VdsbU4VPIBRHkk+QV53wDOxSlhMvlxfY4OSOeZS4tydOmVuP+hWu9s5NFjPXraN0e9sUyLDbbUmCQ0a4T9ehyXMAYjnB4d73i1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wb146g3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wb146g3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ADBCC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712587096;
	bh=zVmJcVn+ThOAQ4jJHMAVZzLotwGxN/wVkWGu/GtBrcE=;
	h=To:Subject:From:Date:From;
	b=Wb146g3Tcwh7kyPe6ZkzTBLiZCYcMekoryYunb4TgVDh6ltIp5NyIm9LoQd/2iH91
	 T65G07xJM+SPj9SOOcwsu2t/eLmTsLNId5wUZkG86w9lc/upT6XC1v45YXbjwpNmY2
	 O9j6FyV71tyJT3z46ZkeCOwG2H1fwJ8Emm9M2KA6y7o1DmH24wInh83tBlXiIr3J+S
	 mZrrmvyaPC9tyqpFOURfngPOi2t1j772pnhMStV+/gQMAY82Jd+HK51V91i9tiou7a
	 6PeYq9YadMreM39d/83uEnFukSnIYyU0zzn67IwzecMO7rtGS7ZqB8Iyg6iHs9fm/N
	 LMzPfXHZ8AUAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A98CCD1296
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171258709642.20808.4767642927334302242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e5b2b37059388ea56d099159686dc5cf9fc72509ed949dac9c0a494144a593
Date: Mon, 08 Apr 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712587096
