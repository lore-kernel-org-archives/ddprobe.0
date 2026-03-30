Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1743E53E0B
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774833894; cv=none; b=I4UkkWtBxOFljrOeP1kN62DqW9W2/xFyAUDgybE6ImJHIWEmaI+0H+L2ZLtvO8kICvaIp2VELvpd1Soh0UMe4xL6QpgF7NseG7uFlNBCpTwlC1EY3icgiikbGaJP16S/FFLHIAcs1ymUJa2TqVvgod5edV9oF2o41y/nrOVIS6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774833894; c=relaxed/simple;
	bh=hSRIaRVzRAHar/qNcK5KyRpsfvEoA65QM/+m1oAxMvY=;
	h=To:Subject:From:Message-Id:Date; b=Xz0GGmIHH7EVnSMSt1hvD554vBkZLSomorpEoNA++srg4cj/2bFN5MV4m0fMyEcNbbuv8FPynWbLac+S8//qzr2GLkUUZ0xKd9uWxVhs8ydJXy22BOSjjyUMPK6s/kffMnxtYWTYbNFQ4B9dpwTGCQf6iVRETOT6XNwYK5YucS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g10a38cz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g10a38cz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98FCEC116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774833893;
	bh=hSRIaRVzRAHar/qNcK5KyRpsfvEoA65QM/+m1oAxMvY=;
	h=To:Subject:From:Date:From;
	b=g10a38cz+weoV0RYx+Z4xWn2uJHq+Fd7MPIIVnOvoPb10jHQwXRZn0cJsTqnCpfwd
	 Lv6EsoYbMGNCz0JpRNgTk8ZfMxHyckh4HTPiJBbtqJLWy2B7fSJktLYEHb3U30bEec
	 zpLYm3PH3M4FvfSVkPIZIk7VO52GIk72suDCB15FIBp6sNs/G74cHTSXYYzJIFpBa8
	 uGG0D3apso/zdbLgrBgzeignC/Y6StA3YG9bryggKJvuFXtAJIKMZLBXXT/uto6JGj
	 +EV+lg/WpHaB8zX4RsZtceOtLD3Kp52FPDH/n1Gn5j+WfIKaT9jKiJ10P06fUSe0/m
	 XKALX77Mjht1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920A8FF4927
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483389358.1772.3536858542192808178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7156f1ec0b0e25a44c03859ff11f17aaf21ab15dc3016258c7f8f5ccbc2d4d70
Date: Mon, 30 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774833893
