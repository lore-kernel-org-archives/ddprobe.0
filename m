Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA2A33F7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736660154; cv=none; b=ByIgeH5heUwoFkGkXFjOR28tAYyv1aGCT+MHwAU5kfG4UwiYvmmO9aDO4pbTnnzsa5lX8sc8Rpwpqi048arlv8GsfVCahs4BRhKJnaHfSG51rza1PbwBwA7JlIk3D04x00+3ZmVtpSc+tyszS8bZNrDcEDbtAZWADo2/L9/LV9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736660154; c=relaxed/simple;
	bh=i7gDxXR5Tuh8VeIpet1vIQwhfPlGOyoWHPf264DG9iU=;
	h=To:Subject:From:Message-Id:Date; b=HSTHVhIRS2FNUQJUJK7YsE1LtCNnSIydVqrs6diZP7PFPIvgDCT/G5lvCmDzCdBsR6XBBdVG+TkFilubdLxFPEcTA3XmT8Zaz89vF/+WuMA6Ma+Hm+HBJeLJ2Zd/DyqoSQd7MitqVmXs8ti8tDcoKACVj54ulkbZG0Ty4KcO0RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEYcJGuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEYcJGuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50FBC4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736660153;
	bh=i7gDxXR5Tuh8VeIpet1vIQwhfPlGOyoWHPf264DG9iU=;
	h=To:Subject:From:Date:From;
	b=EEYcJGuLYtCojmpYEuy0W+26CSLtYwUfmZZvLFzALp1llak2lbPTg/IFBOpJlTvd0
	 Eh0CPglC82Ix5VkXXhAonPaX8gGkzwAs4qu2QifingfzJ1c+2RXr3qNj1RNr0you3x
	 w4jMmeVNIpABrhXT29+9GhEX8bFhWWl8BBAHW655jHefk0KvUwIBreqO88knFtTpGE
	 bC+2ddn7s37IyShtHv28/GgG/1MrN75xcceNRr+JADZllHUNrPNa8e+5lybLbVDt+b
	 TO85LKCazfjh9cC698ucU37Ngh9OeuoOhTFgYF2nKeHAno9CEG/zW6Agu5tXDNUUPw
	 Ie/Ju9vxlFtgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A93E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173666015358.29582.7933190950822396401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a468aed9c0bbb3fd3fde68fb963d9c6d76bf98fc6c4b06d515c653424f391647
Date: Sun, 12 Jan 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736660153
