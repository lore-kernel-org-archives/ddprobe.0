Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335FF27702
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735017354; cv=none; b=gsJcygkC4BY1Ewtp3clNst8bRgBa2f0t6NwTzc2Ommh/OECWFFNrNiAQrFX5QX9IYNMsYoVPPcVcYet5bt0Efx6h80fYzkylh+RggiuXLoQhqLjVtv/KK+6xQOl9V0PeRDyUgmzTpI8GPXURFMs9E3JkP7QaFG/jowfrtt3lRj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735017354; c=relaxed/simple;
	bh=/+OPVKjeNBSOPup6/cCgkF84Mpm6uRGOb+gLX/ET5yM=;
	h=To:Subject:From:Message-Id:Date; b=ljsDP5nDafnC7gf1pn7QJL5HeAKidB50NwRKJ0H8I5V5z2gPXSsLnnVcVtcoQHNMY1A6dqtiCcac6zO64e8TKwI/+E83OyGpqJ84GZiM4d7ySWca4FdrDj5LSRCBvA9hrSJGR1D4UEoNEsR2SQgsd6hwmvW4+12RLGsyeXCisyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBXFtdDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBXFtdDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20E6C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735017353;
	bh=/+OPVKjeNBSOPup6/cCgkF84Mpm6uRGOb+gLX/ET5yM=;
	h=To:Subject:From:Date:From;
	b=BBXFtdDB693WlLojFcbVdUATPrYVrI5EVm3htiB+8tDotyAnQMgd/Kli/PAyV4alC
	 koUfgMVGlV5Xkyv1H2Fyj/bl8Ycm6Nbsh1QDpUt3rBg5l46CXG4kLeMNjoCawHRF1L
	 +0zeeuVcmwB8Xbc2uhdRkYahjxMJVClP7DjKIm+zhywv2cIPO59dxhw4t93ZIVHXSg
	 CIYrtLqGytgg2rM0D2ecGGIT3sozlohJ+2oZsPgqdAcpjVSh/6xs9D5niqvgDvfGOB
	 lxcAIX8GkAaO9hEqaY3SWaSjymNSvAqAh3T+DpX+f43u4foEch5BgG4lQPOmy2tY0L
	 MNHOgZdysJWPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983EEE77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173501735359.7524.4296948064367436776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a202ed026b4e67e2fb5a8ae54234163f4b9e1a565f2648802c215afc3866d56
Date: Tue, 24 Dec 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735017353
