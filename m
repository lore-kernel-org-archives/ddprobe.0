Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCFEF199E9D
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750166393; cv=none; b=st4dDzwaUBovHZQqNav8y6v3SklrkOzHqKg9y2k9dZC5y9dQRgtG164rac/YROmuwAKBdXORXLKuu57mLZKUIU8CKqiK6mgxDZH4A6uA8v2GE8ZjBrD42QFyrDfu2Tg2MdXDfg1BmPlj5PDlmukMhtTKWlb+gSrHHSzSP7baeek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750166393; c=relaxed/simple;
	bh=MoDnrFfvmOpia1OPZx3y4MtQrEDIJiGsWskffQIh8Bo=;
	h=To:Subject:From:Message-Id:Date; b=nh1HmpVPv7IB9VvBvUWZCvhmp6S7sIDzEZCJVfDOdeVRB2T1dl77sexYsxyBAjZBnOc2TclsYPa4vYo+aMHiHI0D9yHwmSiqao8Nvfr2pbP759/vhxHxLbpXY7XGTwU2Lfeau/c6kw+ULlt8J8n/kejY5YLCT+OvyW/rKGY8FX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZ1hp9FB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZ1hp9FB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC2DC4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750166393;
	bh=MoDnrFfvmOpia1OPZx3y4MtQrEDIJiGsWskffQIh8Bo=;
	h=To:Subject:From:Date:From;
	b=RZ1hp9FBofkClisUK+FrV99CNEC6k1qNADIAdWUGEuxh1TWYSuuuOo6SvVeAX4qbj
	 ItF6+rR1/Ii0uOE8i+NmNOa6A09s6454i5zNvnZg4ioebq7rPD/o49hiVsWiugMez1
	 J0O0iiF7K3zZmEDDQSLChUeuVoRTmpla+2HajzSWn9AFq0DjI4eQ6zqm4HAauoJlSR
	 nYxcf1Rps4x3997Emyuon+g6jJl27xVtSv/x4YeUDJOAedt8W0eU2/sUGOKjAKWPWI
	 XB13Hufd8VN+v2v0089JheXx0RNbHLBr/sm5WpYfaiWHCAWObs4X/FHm0taaGAptw3
	 31R/yZNrCOYig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F554C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016639357.9111.11771670031586281475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8cb93aba687021252dbc79af7ea2c099bd38e8daf8763de08a466b531b1529
Date: Tue, 17 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750166393
