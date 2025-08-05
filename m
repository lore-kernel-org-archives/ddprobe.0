Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C66243964
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754390994; cv=none; b=D37NJ36bFCdo3S/pYTQFF2EIsCpKDK9xBdB2avMaa8p5VpKp/uFEDWZyIL1CrFtNlu/G0IOuz5VYQJYo3lDFfkdjK/lpGSZ0ZyYrxDAZvui+UnTpnDHUW6zmMrau6ppD6z4LbmE74QlJJqIpKPC4hel7r3ntWNJArN+GPlNcW5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754390994; c=relaxed/simple;
	bh=kXgydm5cSkgmZ40JHAaLKVbp2kruZ2yVOIHDPvDN0iY=;
	h=To:Subject:From:Message-Id:Date; b=akLwwB8tLzkLAA+ENiyyZAPhcsd6R+MF8M/fi2gGXN2aeFdL5qNJEQqESrnLQklFIdV7o+HK7AGzTwEaydvh0hOPQcJQoBM/uw9/rAJacAQDxdgDQcntmfqvPjuI7RB8hVepia/3Dsg51ZO/yBgNU5T+PZWC5vMfZ5haOTuSaMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRdYxccX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRdYxccX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C73BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754390993;
	bh=kXgydm5cSkgmZ40JHAaLKVbp2kruZ2yVOIHDPvDN0iY=;
	h=To:Subject:From:Date:From;
	b=jRdYxccXUe+4NR9ZqivednhI3iR7TvzcqmfLvG1OjRi7zrFEy4PRtewt6W+Ksz953
	 31lakHKSmgu4c86NLWYax9460fFBU7DMPltBsfSlbTp/4uJ3Jl5FzQKBrmPgi0uibT
	 vsjcP0NGbev7OK3qI66m/81xO77FjkH78LFavlPwVpnypU+wYz488y3LQI/KYRba+N
	 8Wrb+Aiuboio8uVkVFB7MNlFEJjPmEZfNSdVE4jRASUqIS0syPFW+7vA0LJOvY3krH
	 oWTmwSk6sjwsj8ds8Lcfl6Sy/OGBsuBpD8nhgjNq3ZFiTDPr2nV1nbkrWzUEBPVEo7
	 FZSxnmn78qyYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F407C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439099357.16624.5298369883739960453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f6a143d342fa8114f3f6a9b70aee67037f9693c50cdb60c98d0eaf6b8a13a9e
Date: Tue, 05 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754390993
