Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2181233F8B4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776461854; cv=none; b=ifsajJ/4CDs4t52I1LfurYXlHPmXhGqabc1GDf0xexeO8pTO/x0yFj1bKTcNPom5t2WeJuOM3EMk0dcDlHensyRbE7/HVR+OKgnQrYyJNV2i0QM2qkOyEZPAixXi4Cf4e8kq+rxAUVOreOrUshERNNrStPREDYdtvceLIcCWs6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776461854; c=relaxed/simple;
	bh=ZnWzBA0r+K6wesL90nuiokbIP4txwDeY+IcFS73FhGA=;
	h=To:Subject:From:Message-Id:Date; b=SCy8f75k5Wc59HQHeqfsG493ZlVldmndryYMxGM8Z8RAmJaFFMHK/GtrAfvKDJ082+0KraDKCoETlCxHH7kzLznPxaU28gr1ad2cYZc4fMdkjagEgngrDsxz9L02hXxiYhXHA6z/NPgNQ35ayrVh6tTS1m9o9ssdwzxhYUbWTTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+JZf26H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+JZf26H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AE0C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776461853;
	bh=ZnWzBA0r+K6wesL90nuiokbIP4txwDeY+IcFS73FhGA=;
	h=To:Subject:From:Date:From;
	b=b+JZf26H3ViUNB0ZaTD0L65omb2adfrJ+3fCNQdFvneQnfWN4XAXVmKT/ZKloM4Ks
	 RLhumZN3sUNew6KnZ8ogmc/w6XRcnDo5oCLCPrifeiltAWNfOh7Sc3I5nmqPsuVNbu
	 T3yej2Qinj8P2vAXLMe8WIt+4cvgIkAv6kTMEr3bY9S1Smjqg9fh0cAlI04ONIp9yx
	 9tnC1iWLw5OPArSKvNcT5wC/q6ULbI9BnPdEn0Pa2EYAH0S70N91bNf40osfh3msZ2
	 gujkT1LYwBawI7RsI2BiTp6ZSU58m00fiGkQqy8x4LrcFM1sWpd9Pa1vtwmk4n3wlJ
	 CtJU1DPPIGdGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB1CF99C6A
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646185368.10972.14487602636890981644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e78923e090121eba3d92aba613b391742f8f0d6221d49a2052ebac909f4d3154
Date: Fri, 17 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776461853
