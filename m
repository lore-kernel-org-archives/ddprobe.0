Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E7DEDB
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720404983; cv=none; b=nXTMztRLczLhCtBQe6tDv/g3FBZ+UBYKp/uuSDM3hvXxIk2Ftina7V/xygk8tjyYJ+rY1YLpIMcNzUi786DZPtV5jrc10xRnufVOHilcVXPVneZI4h2lG3P1ahBI4M9+QpNxsJKFrARyeK79HXkxNTpKKGKE0YSM1WZEIv94jX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720404983; c=relaxed/simple;
	bh=mQD17nBy8pxaQWadtAtXIU1RCoEiy1zb7W9RYikPpto=;
	h=To:Subject:From:Message-Id:Date; b=LYe/i66ET6qUVCh3pYzpWVTcdiRXvQYauxfLgbxy/7I2EicnRC2sUhmeVUeKeQV8qSaPN3O1x+XVZBQWEqluSi3XV/zSU6/nGjVJ/3ZA3mfG/M7UN3CZyVxCQXhSgxGA7hdHZcuLhYjnq37o4YivJIf1D0KAXggkzlDNgKUS13c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTKroJ6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTKroJ6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4E1C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720404982;
	bh=mQD17nBy8pxaQWadtAtXIU1RCoEiy1zb7W9RYikPpto=;
	h=To:Subject:From:Date:From;
	b=GTKroJ6c48vYl2Cda17oNe+Q14MUO+Ofb5WjsTQgDirpEg+rPv8Zyhw5wd9EDUemQ
	 l7HoffXPxBKvahcaeVThmCQpvAsHZqdYvP8IfT1E9AsSCgSEYX6M8Pju3ceT0HrsCz
	 reBtHw+6ZmLenhIqJ6m/M5kLRDcam5+r6g8wBmaR21ZY3BMrwhQvNfI/W82IjWP7Ui
	 ResD4Pzre31LDTVM1QQ6Q1/O6Ut07pxtEmS3uX4aBvbL+f/7Rep+rJELUsPAEI42Gp
	 sdjF+vcpAaVNCPggM5I7pwAvzxyMO8Slyq9oigP05SHGWCE2C5uMPHAUdSFNOFmK3H
	 vUrnTlu3IqN7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E7DC38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172040498276.26537.10022036219622167660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667129e3e0acef399a6bec1ca894df0454ca74109301f2f22837b11c7809f8c5
Date: Mon, 08 Jul 2024 02:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720404982
