Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A5415E217
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 16:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714665743; cv=none; b=s4bCD+dOYdixksLwkL+m2WA6vE8xfCHzMtLGGKdppJxDMkT0ln6QPdc/Pm5UWCdFQ8aLN7GTXXgJPiwrAwJDShfEDuxYHYsV/iQzosvlTKaDhcQLv9Dv/fdHhvWDpaA+xdUCPwdqX32K3VtAyC54Zg/XpBpavLuJt5OwjNpEgEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714665743; c=relaxed/simple;
	bh=BjpYOSbnC6vsSAvsLzWv5HOsYOPj0UmM46tn214aOSE=;
	h=To:Subject:From:Message-Id:Date; b=hBgiVgprPZUg94NE1bRseIoT5jMaNKN65fzLnfiwbsha3eZsYZ93DglM9b1VJW4WdLSM8b4PhTI3J7dcSczzjU3u0e8aeqEpxASjvzDb14KSR37QNBx24X+P/vbFN499S5zkAoyJmiyT/3FeRMHlURSMAVZMzX+zOwdVx1TSz20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJSDsnrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJSDsnrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEF3C4AF65
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 16:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714665742;
	bh=BjpYOSbnC6vsSAvsLzWv5HOsYOPj0UmM46tn214aOSE=;
	h=To:Subject:From:Date:From;
	b=ZJSDsnrkaCEhIDso57NO0kk3TEakrN5I+daBexu8sL5jyMku460NEyeEpLWFVtE71
	 q3SdsHj+IwH8JkwW4kKn2bluO0szoMK0mGacxQEnXCsvGWyc5HVbLeX0tdgRpgCYWT
	 TYuHKu0Oa9BO364YlHdpIo7TPOVkl6nSDUxMaE0h+MaH+Fu3reArtKiSPHtNZEaZbI
	 JUBsphUXxw6pCm6DeIpV7AoIhkWEFP9ettwkPe5nULx+JK0mrodFwqcClYoDn/D3lu
	 55+FxFG41DdSoCK+jhOBwGT5gFvYACJ7x7YP5GBBAgBJAxQ9YPg29aVyfINmsq/snF
	 3v22aYMDnUAcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB2BC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 16:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171466574277.5987.16957003475441989801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec0d464fe9e5318eeaff389868913e4d3b17ab0b14d40f53287cce05f66c10e
Date: Thu, 02 May 2024 16:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714665742
