Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B4A366
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728605155; cv=none; b=MhTcosQ///ZZDfNxBrJ1NnyVg53GKuf6oWUR4v582luJ4FDjX684EIaKtkH10Z3UTSiiz1S5PRjP8m36RUnwMQHEvvvjKv+hDwodP7ZjVBUbgrsDXh3FWCN857AZornBAvmoej18d6Cj5N2nb+ba88I9DUqqUhuRQ3QvPvBjRqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728605155; c=relaxed/simple;
	bh=EEozLd1EhqPkSG+poyJbVRRl5xfKoYsvNUiDUHWb2F8=;
	h=To:Subject:From:Message-Id:Date; b=F/ouIex2WujVbw9SuveB1OoRliQIZ9cYMl4Fh0PLStMMgwAcio5v5JUpsLlB4YwToM/wgLpkMn38IUPI+/SA0dRRTcuFZPMt4Gzui94GEe9LUROn3+amAkn3ptsTk0JiYx6+pmwmuoPYwnF4MA4ITUtyZXqSE266DkxqQKpIC4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=affmHqOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="affmHqOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC79FC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728605154;
	bh=EEozLd1EhqPkSG+poyJbVRRl5xfKoYsvNUiDUHWb2F8=;
	h=To:Subject:From:Date:From;
	b=affmHqOiBZSkNcVS3EbuZfBZJysv5hUB0IyL9Img95RFRxXFRX428+bZNlJ83RDik
	 YUavV+rFm6gSVmIWrAl/vXidANXX4grzhqSV0/ORnW2aI6Kvx/qc9yxOB60IHRmWeE
	 ryc9HQByx7kJG3XcNW0GXY//OzELz2bclNuIkyIz+Yf+c1/F8UpAjI6G8K2EjUx8Dy
	 ADU28gDXZm1oj3zBByXgk8mB95NJ9wslCUadY2IhduOOT5/C3hBEG4c/LhUNEhcpoZ
	 T1uO5UF6SJJVY4LUnLJAyH4FBqgLFHJN8gTtpZ0uGEq5Ppogz+9LX9GLxbxPWis06F
	 ALrY+0poS7eaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F87D2444F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172860515363.14431.16453089351997847863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30dc96b51c057b777137975b1faf1a8a33819a07b2ad16322a6e084ba1d07ee
Date: Fri, 11 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728605153
