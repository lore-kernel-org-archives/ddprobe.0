Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DD03A784A
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779691358; cv=none; b=AsRXjW9h+1ELgHYptC2Ocen8xKxNWxfDuyMRkcK//S6LciCd9eGCYgqUuvKPWyhCcaI3/I92Wki4Jh2y+YRP6o0W5AOyy5lj4pKcKBpuR5qQYkEdqZLLesoHTC3+lXXUAYsNpbFnY9xb3EJr10wzmA7SZg9FRwPXUxIK1EpQ3V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779691358; c=relaxed/simple;
	bh=b5DwtTEvCkOpkJb/G1CHUKfk+UEhYjaTXnojRkTPn0Y=;
	h=To:Subject:From:Message-Id:Date; b=MLlkv8IRtaMMVuvFiiff9ekntP2wUrjk6LI9Nv+vrdpc1MGfsG/yu+LUwMb7Pr9ldVfTH2TnHZpZlddCm7gfzKkQ5diPgNgpnNCDyUATqzmaJ0kc8XYEpM/KCacBuPmiXcv+1CLEffUZbF4hLWArBckPd19TMoDI7MnXSYwQN3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kC+ytWSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kC+ytWSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB82DC4AF09
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779691353;
	bh=b5DwtTEvCkOpkJb/G1CHUKfk+UEhYjaTXnojRkTPn0Y=;
	h=To:Subject:From:Date:From;
	b=kC+ytWSXw0pOadZmjHTB5IPJQ1+TYPZldmLDfDfNzSwNVvKFTUBK0iMBk8xAi5F9V
	 sXpdXxZqYIEDfimbG9N4VAPO6/4/jqa2QOZmrdKR2u5Rod4xClFqR3lum/tOB0ei+D
	 ZfBbymB5EYtOrRLg6yc+/gHpyA13EPV+ILvOou3RqGM7q4eX4fQOQhpQMkzU/C2gBZ
	 +NTHRuPDSUoNLNYO+knzyir6NQC1rfnNO2kYurrudgwNkt00OPhul1FoFCmiwrdIIp
	 U9uDH08mplgq9bPvh875gs8PGi8igwfLTt0yV35DGpAi9P2qKY3Dk92NlLUf+a1Kn8
	 xpuwYhR30fszQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F15CD5BCF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969135371.23149.17363024283790617346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb206c49c37f18d381c8768091a9d777c50c0028fb954635c80ddfe34b98c3f
Date: Mon, 25 May 2026 06:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779691353
