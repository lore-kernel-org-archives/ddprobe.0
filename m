Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E751A01BF
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758637194; cv=none; b=D1vSDWXmNZO12yhPnlubuBBs+s81V88z0dm4FKaFMuBhrHpU1lGsUXhmF4yOusSLH0wN4Afha4tYXFGMFulxKovL8Fe7FOBxK+NqjlQg1cOZkcq1YMzLP4ng3657C/fx5U3nv78O8SE3clwzyUR91hFM2GqnkuH2iUfJJBwVXsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758637194; c=relaxed/simple;
	bh=OaaXqcVH8/4bI5u9J1S/nsJ+9xBe4ooFLPKpvpO1TSY=;
	h=To:Subject:From:Message-Id:Date; b=W24zq8UNOmZNQ5r4Y+HO3ySAOSJ9/xtEeKj+8sqvCXYSdoTQpo9QnkEnD2qsIzYufzYv9OFUiwUb8Yx7Ss7DJYu1S/izigN+buOfB6p3yJWY+jpqkBQVFYb9P573h+XcvI+fUzj9DnZLWUYJoddw8fUnmdprkq0+aAA/qbl+UdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2rE+NUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2rE+NUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08B5C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758637193;
	bh=OaaXqcVH8/4bI5u9J1S/nsJ+9xBe4ooFLPKpvpO1TSY=;
	h=To:Subject:From:Date:From;
	b=s2rE+NUXAanjETQ4Ql9706dREf4xx6TbqsoebrTzQVqzQw225zU8MozV4jGyHN4nk
	 IInqLjDOaM0LF6UI3n6So6F7DE0yzJNltLMfmJskL5OVIRmaJQEJ45WRrZWygYgxYL
	 dz+KZkFXcK3SvKzBOy0USloJHWQlrlny46dv/TYSr1IH9G8rct7Z7DVImTBHAxne7+
	 gAuGcLhpTrFKWD8ly9PwMaTSroZtDiIFZGjgnKEqFNRJxIg6bRCLUziPG1f31VHRdx
	 N2gKaIRA0BXC/wWpuUrQITcnaIvmrnK2V3JDjgOfZj4EeayY/skpA9/vTZoodhDkax
	 dhLm9b3l3THNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B5FCAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175863719358.13735.10159242643326327206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d2f2b6b6c76edab9162ce528399e32e320b6d7d5baf71f29ebf56f7d831606
Date: Tue, 23 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758637193
