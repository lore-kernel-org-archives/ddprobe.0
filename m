Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160F61CA84
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727121954; cv=none; b=gEmzEJI5XtcR2V1zdHaI1PI5TyJQO0Rxlm/bbMDUMycuyAD6BnaMAlwy9RfztcdaS+Ne0Ozt6nimmlGK3JnEtZFWqJPouJEA1FJlpKfwcMBx8of5PwAPIReFwVkaOb8omYlSR/eJwnyRj2Vs50xIMrtI80NYJH/wSXbkTwmM0/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727121954; c=relaxed/simple;
	bh=lajGQA8dcDnbO4bD8d5mnpq4CeLh3AaP5zZKeA/hU+M=;
	h=To:Subject:From:Message-Id:Date; b=sCXKNxlTkKtPbJLBCJSeSznLf2VGRd6ZkBRNYAhrvVO4aKFTKylHDF0PqpFUaxGYT28hl+jRUtqgNyhc8CoFBkOE6Zw4zqNKvxtsXfdRyzoxbWcDxzKREpZAtVwEA1DPQkGOw6uJoXZx+JlfeZ9VDvZMZoGPeHGHQedRqbLfL58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUUL1+dE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUUL1+dE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A465BC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727121953;
	bh=lajGQA8dcDnbO4bD8d5mnpq4CeLh3AaP5zZKeA/hU+M=;
	h=To:Subject:From:Date:From;
	b=CUUL1+dEPAhd83MYaa3+Y/9erfo7AvdRT3kkkMeRWveN0gHIEe/y2d4XN4+OCSSsY
	 S1FuNojyeqs8A/tnwUAfrjlfKf/Jq+g9dOwLg6ZSwYhdoXnY6aTBeGrdCb456cCS+d
	 xL7AoX8FAvDTzvRhD88790x1lNQz6QcI2R8Z2bCrF5GglrAmwPL0PkqkO6G60tBP/v
	 GzpDOhSVSgmu6DjJ5qONkCzxsvd7yTfdY4GEDuO84DCU6kcPxETymqxy0bSwmK4unb
	 gIJekOao+Jy0xHuE6gJBde/MArg1QfjDNNeLbJ+dq/28YLk+0Thgx5CkoPK40yXTh+
	 tyzvm2bH19QmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F202CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172712195357.19949.11367252748062354863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d100a1bf547a42319b93f3a2fb507e13c1240824751941a0bf805b48bc3de4
Date: Mon, 23 Sep 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727121953
