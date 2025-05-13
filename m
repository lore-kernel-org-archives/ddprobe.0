Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429021624DE
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747118995; cv=none; b=jOWdk2qrLiw16JSFqX/2YSs/v37YR4FfvgUOmRc025sqn4o5L5Dcidux94RNWCWJLRcS+l5pEyNOFl58nOcWSSyWdCRCEoRKcLauVAn0kgrdgbvd/sizfnkUFivisBCFZBa23QxPaBAK78X4squzhVYRhsd+xLwk0C5qD+myxbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747118995; c=relaxed/simple;
	bh=4DH/TToIMMSJ1nSuvCY3IpYUCelQmx6vdN4/A3PCnW4=;
	h=To:Subject:From:Message-Id:Date; b=lYxh7/dk8MXvwMYNK+EYaxUyJzaZrZtUnn8O7EWZjxecHZJBy0+WTzJvxe070zM+6eg+xvK5mQly7hJlYL74RNtM1gG/EehxAwE1w8kqH4rfhKegZoibR4giCCkRI3h9LR4ysgO2cVumfk5Qkjhtceab6WI08hoLf0zL/jcQJWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b94abKF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b94abKF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2060C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747118993;
	bh=4DH/TToIMMSJ1nSuvCY3IpYUCelQmx6vdN4/A3PCnW4=;
	h=To:Subject:From:Date:From;
	b=b94abKF/7smfYWeII7I+12g2iLl1/2ssOLjSgrZSbdqxcN564oLT5lvtNbmUZrVZg
	 alV+I0Sa9qvkzXAlOO8kpiRWlqezwzFjl0TE882826vVDJgGOUbkSSh5+U+lzwoB+i
	 TkJ+ECN5fTiNRYLHepfITDlVvP7aLb/efJ7Hd7zkVo4URMUpv6muvH1SOf8/J/aRel
	 Ix7febmJ43w13ihB+I+O0L2GhIVoZi3tr7VBmo0NYa4ofDtWJCp6o1tp/jiYLo7Tuf
	 tjcBwagR6KEoL9vg/Kq5WgZ0+zGG5rpjQzzBGOkrMBfQ+iYheJIROqAp2Lq0hJ4bhN
	 9eRnmIkm/ZZpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F029C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174711899357.32316.2697642549899231803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee9fd8d1ddfe1af033a66182974cefe058b893938a6cd644f063814ef2c62656
Date: Tue, 13 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747118993
