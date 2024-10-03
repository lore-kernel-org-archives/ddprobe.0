Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D21E187323
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727978154; cv=none; b=Ac62vXPfFM9HVAmLA+GP43iNNqvghV4n3TAC6bBFFtcWb0B6NSLc3bFqUvo1b7knVo0Mr+OvqImWcK4/gE3Pokm5SL9hulHVg7aB1i/B6mPLCRwHBCRCGZu1jVrO6giSGlgfQ6mNqhu0KwEoiJeG8Rr4NJFLln44YXenHN6T0cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727978154; c=relaxed/simple;
	bh=+mAC25FQYMQqE4T3JuvvfpNgydNAUbq0NY74hqICRFE=;
	h=To:Subject:From:Message-Id:Date; b=nyLk+3F0xfGQNEJfWCTQWELkTdY88A+Uam/BlSxlBVuJGB6Lwyv6nVbRsb0LdmVGQIACKBg1PE2GXW8vnz5MpQsuCmdzlO8U6LIan/RhLs13hHWZaiTRNOGRirxl3SUDjBDCQvYd1VXaEH4L8Xvi9E4rlt/E/Qg2Cbl8lKn5icA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKK/RTDk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKK/RTDk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE88CC4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727978153;
	bh=+mAC25FQYMQqE4T3JuvvfpNgydNAUbq0NY74hqICRFE=;
	h=To:Subject:From:Date:From;
	b=MKK/RTDkVtnL2bCHIBMhjZ8G/G+s19FW83GctqfjnYtFXwqJHjaAPAMIaMDTYp47a
	 nnuF0mUbzBo4GpgQYKi5yduMLcpmz/CABybYXPZ2YswJEDW5e5YC+8JEgY8HbZgIVs
	 ococrD5x5SaO1x63yAcqWir6M1rlI3taeToy71TbUdwTKRVD1EAWgYovGrhxIYp2T4
	 CvNpnBMfAuiuKIZtv+sWRAEmrDNwmOhjKEqukIi+nN7aiicod82FvVdoi1AlDwJY4T
	 pWhZgiRUabEHtKAt/heyFWZefkSZvtuccVOWU4jc3/YeV8AGlk8/gi7ronPEXXPxUm
	 CE4n999IsbtcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985FDCF34BC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172797815359.2468.7653595867818389058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506f97cbfa103c205abec7e0c974e0a39b154e7fee8dd240f3bd1826bea76340
Date: Thu, 03 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727978153
