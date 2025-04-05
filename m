Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370B618C03D
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743820794; cv=none; b=lVBSjqx492p3/Qjz8dSyF8cDc4KsIPAvUjPQgSbUmHC/82t1/Hh/KVMwJUehn6s7f21rkNXqW1b2OzZw7S0aME/6V+qq5E00Ogsx9tYMGEcBL7/ISSJDC3jxGalHfjUtohzx6fYcAc+jVmILe+c/FuiDfR2Wf174ua3MwkAaPgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743820794; c=relaxed/simple;
	bh=JxHfBVH/Bk0NXDZzSKgQmEv6B7X2GOZxs1Rc3s7Gb0A=;
	h=To:Subject:From:Message-Id:Date; b=rtYHbB93KnlXgL+dZnrKV2VXz/s1mSf+eWJka3zES5fQKOHobXDGudiBacIMmmSjhJP6iPs46ihbVBKKB6unEtw9uz/jkaub1O1ZA4ryrlDXfyzAR8LfCCnkXWMpHqF7zMGTqjTP6fBKgA1ts/CG6ZXNXYnsW3dSUOFpwt/pJy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeGN0uDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeGN0uDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF81C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743820793;
	bh=JxHfBVH/Bk0NXDZzSKgQmEv6B7X2GOZxs1Rc3s7Gb0A=;
	h=To:Subject:From:Date:From;
	b=QeGN0uDL30f1tT+J7XI9lgqPc5HxKsJnFb+fp56xM26kF3pyB67h317/PBcP2h/h9
	 qAUYaA9o0S8LUOTIUq7kh8Gacyz3MZiqprkRWPPI/lfXyj/d8YJNWX/sBbPBO+TtoG
	 0Q+Dv4O80hRL8XK5R5PssYF5MsbEgnmOP57YW9hP+9kdxZeysGABo+s9D/iELQboXo
	 WYBqtWPuCVFOxhzm/2zfHkUKNRecMAp0o0VEf2RsBmFPah1o/PqBNaQmnCi7kUaGi5
	 zzaNKjgAGUKvsDG45dnrBSgOBKoThIWsbX24J1ln4W4PTZe5hMoBaGnkp0ts3tSLkx
	 Co8A+hV2EPQwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975F9C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174382079358.16595.14526574808696458295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7769a9440b3245c338ac822574568807f3c5fe17be1c5a83503ca49adcc7b339
Date: Sat, 05 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743820793
