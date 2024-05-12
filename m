Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528232119
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 00:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715472143; cv=none; b=Ptf0WPM4WwWaSR9KxHalnE3agH4BSSsqCm76y/vVF7zpjbfxL8oHaWNb2lDcdXcmV6CPNPHSgCeDBfeqPJsfroRfo5QUv7J1iHvsy2m2u6vJfjHCDqA/YNXiSVn1kU4hJ0O+AYbtcMo22yrI9bwGAb6RuXRpMYLEFRdakma0LJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715472143; c=relaxed/simple;
	bh=r+py/+27zw8uEzKEpdWpwWCLjvRJu5/cyStjkdPiITk=;
	h=To:Subject:From:Message-Id:Date; b=l0gxMUga3PtQo+LDNVWQvFYJ8D8SerzTb4gkeVzCmpVmOAMYkbro874JjofW1t22D5g/11wui+2iYLvBg1uOM2iifv7WdUjGp2drkfnBLbK1ex87jyvpvOLvWo15hE1toX+fjiRd2dxeDbpr1Y8oTTahfjnHUu8wFyHgSoo9rLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6erWhN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6erWhN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD53DC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 00:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715472142;
	bh=r+py/+27zw8uEzKEpdWpwWCLjvRJu5/cyStjkdPiITk=;
	h=To:Subject:From:Date:From;
	b=q6erWhN8zf+lgW6wxHJSbG0HSSySM40ASzzzuNfhLvutaXhmNpJhHr1QEjtaD19c1
	 KLfifXt1u4EoN52X6M1aYtPVtuw40qF2MOB0omn8pcYeEzF9gLZ54cQUyJD10iuMVb
	 2s+o4kc2CcTrKoJY6IlBDzuD0SwxCZVyTfChxU1qEt4rwuNygjzWbhD2F7a7AZRQHB
	 2bMyM/2VZkE/VTAClhuLPpn4LU6myrPQU2ocuaIgx7FK4tA1c/X2klhdeSBqJBs/nd
	 Ma8yX42jURM8kGhfHPqwHQNYZ3CvzT6+e4InP21jIKebL79s3umc4MEBzXEzSJYarg
	 zNT2nI1/wdLfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C392DC25B5F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 00:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171547214277.2307.17722746875390187473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3691e419eef73f810bf20f7123e55d6c740413b7056d16011cb26e019a4082c
Date: Sun, 12 May 2024 00:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715472142
