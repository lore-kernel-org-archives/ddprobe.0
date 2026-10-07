Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E7973A5433
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791385834; cv=none; b=Q57o4Ey3QhyrHzDeincE+1GRu/xhAc2xsC57CfKugrooybYnVQcpd+N60RxFHcqz7TvooSlNmhNCXUB9A0KQa+iHKfRu7aHWfDFOHjuaKGyZYbHh/u7ftn5c3DLx1XciLTbMVMNmlDhpBA3tdXkOxZ2HFjnyrcWnSVg0pxsw8CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791385834; c=relaxed/simple;
	bh=u1l79qNpa/1/4+pQr7Ri1bOs8u5Ck+vi8P531KUrip4=;
	h=To:Subject:From:Message-Id:Date; b=OPIbDupRi8rJmqF6W+lDm76rpmKRZnOTYeDPgAzJOvQIP2NWF+hPyUitp9WW27kRZSzzaam56HyjxYw63zpx2JTASlZjylOQz1CjXkbM37ZWVtNjrRq8Myn828dBtJi6bMkOVGnC89NpJEuowYQt5ik9jq136O19ndQfe7Titws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4bKoEIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4bKoEIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5057C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791385833;
	bh=u1l79qNpa/1/4+pQr7Ri1bOs8u5Ck+vi8P531KUrip4=;
	h=To:Subject:From:Date:From;
	b=B4bKoEINJb6pgglMQsMLuiBfuF5JoY3WDVkKCwH4+JkitPmp6GhUJ77CayxmbqXIe
	 bsiIdWbyu+O6vMGVKF2Tm4XJhoRNu6jAF1MVJ4FPxWfme3FgsAFyY4MGazBTAV9dvd
	 vx0/tKuHNbjqJBgStvNtasGQ5NoH7y5n5YyJaFOfUF5g1TYMz5vFSLrvf/5qa9ZJGu
	 rsqhoSTIzkajImqy7zeZbHNyXpwp5LK0NB1RwCHLoh4tpL00KL6+5+VxvpqAVPD+dE
	 UvSfHrkG9V59iMFu9gxgANwiIpCi4vjwH+VbeLNlbSNS9LqhWww8VYrMzYI6NV39RZ
	 5oOnidGFsTJUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22DDCA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179138583369.7532.9630154333718441067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5f9436773ca878aa8f5215962a23b6e36bd4812580a09fb471395f5d4d3e94
Date: Wed, 07 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791385833
