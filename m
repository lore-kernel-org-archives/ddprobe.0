Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4A228A3E1
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749546594; cv=none; b=e4OevP2NKRYkRSC1JFalW1tXbP4Cc0KV3hIazgSrHMkzo4hLa5fLoPMinmA9XVMsRG+MBpIy7QhkzAqTNM59LahQeqh4txqs5YHImd/C34lTCAyDmo7/CwWN8HsaJhRzJT5/WmC6Ka7/bliCmOOwdvpKQmJZm/gfzC8o3JcH218=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749546594; c=relaxed/simple;
	bh=3SSwW6xqAhbDQLNyMobcFqyf9tYbEN5BPoOSAmQQhBw=;
	h=To:Subject:From:Message-Id:Date; b=SBQBuKA+rBiFMmA1fd2f4o6a0/QwD8msFuhgBdy3aC+4x4Px8ljUzLj07Qz3dMnPgmW246rBmBaBHRniCaN91lPpGl22DqKRi+Da3WztwteSgMR2hpyXDP05R2MOyNsncNKlnXxbd4Adiw855I9owMZuNaBI1HHGmhyzxf2sdBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjkWUt7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjkWUt7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D335C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749546593;
	bh=3SSwW6xqAhbDQLNyMobcFqyf9tYbEN5BPoOSAmQQhBw=;
	h=To:Subject:From:Date:From;
	b=FjkWUt7L34uaoBuwUgphhlBJ3C81eVAbA+OkCVsPXA2rpUccjl53ITrxfgxjNd7BI
	 QKkgWy5V1JpGWHSqDXGysjAPbIAkM8+04PRB67UvikQTH64ZY6dhF825/KlpPuMQx8
	 xsieQ/A2c0/WjZ/X+4dURCUvr2w2YKAY4oaElQ0J638PyCf+Ml8GOb97ZKMkPjeu3+
	 peMqWdmhL1lp1hzY7p0Zj65CbH/Q9tFxAm4INYvbRwhyNHeakw6g0V5s5nVO01LhLn
	 EluBaacMZNs9Ml/Y61p26sH0wjW3hr66+sVkV+krUIHz+2pB655gscn/uENWdHpeLU
	 Q7i56mcOrxz3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E90EC5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174954659357.25145.9674501430318710798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fecdd214095ffeb3da28081112be1f81245a0b79b313a2029949947412d4c06b
Date: Tue, 10 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749546593
