Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E0B1BDD5
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720820363; cv=none; b=YP4WaliyZqXZwFzGc96nNfCh7dba+YLRMs+3Yc595JW/Ggr8/Qaz2HzAC/+dxTdMc7EysX0XEaRpbo2QZL/dmhAgKQQx9Y0XBUmEN8El+MLgRGg/4No2NrQD9nhzPeYRa0JuMIZu8ZxAUAODQVDxc8DMZIDytpD6Lul7/jmrRmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720820363; c=relaxed/simple;
	bh=c1MWtDQmMPWFihERMtHLUX7pP0EwSnFM9ml4hh+Agmk=;
	h=To:Subject:From:Message-Id:Date; b=cvo8rmWq+k5rh8Pwg8CRKF2LCq10AvSe/VV17kL1WReqX4LRuriWIYFBF67K4sYD+6KcoUJHsUmcUEMTdfdHRZ1YtKQ+4YdR9sWfDlQZLXHI3aiZ25VyV/zdzrIkCJF26RFTms/pbYItOX1eZc4gbVuIEjZ/KTBQMGAymg4zeek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRlMhtei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRlMhtei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1EFC4AF09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720820362;
	bh=c1MWtDQmMPWFihERMtHLUX7pP0EwSnFM9ml4hh+Agmk=;
	h=To:Subject:From:Date:From;
	b=TRlMhteicsRrWCFufShXmz3GiROYU8cUlXYOZ90RK3yGPEZPdUvooHfppwpyzT0CM
	 pX0rFNW67LtktJ+kZnjVYDPfvIPbBWeqv+O3Ml8x6oZ0s3bxiylbvdf/3b7s9E501K
	 qJf+Bqyc96hXwZJRJnwWC4qSCb8Eh8OUy5tec1KqDrRIiPsikTbvOdJSUoXVtuOPuy
	 hrWkTKsD5Bx5t5NjfdhV8F+xHb0xAKVzLdqfEKjZdTjNnsrMu5LNrKWXlUJHePsE1E
	 cA4yQ9XVnL462bZ/TnzK2q6M9t1ASDnsrZQszetsf3JWwyO+01JO24JqPgVW0qCDDa
	 pEF8Rx2U6e7HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A6DC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172082036280.11460.53363601792098340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d913241532bfb09776e6bbfcc616af62f45ae6a225f6b7abeb8e950d75fba8
Date: Fri, 12 Jul 2024 21:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720820362
