Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159202E093A
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774094094; cv=none; b=kW0Iqhmu+LivV1Wy5CJRR/SH1Mf2nsHDvylIsfFQJ1PtoK3Lprd6FDsh1VDj3cE2DaguJOCUC+5sxPm5bNBvGhq6XdHDllLcUY4SBn2Rx5r3DhjMnKtwGCIdBUsEE75bBJFK791ul68MOmTJYR1/R1PzTdCFzrGUSPx+C9ta0D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774094094; c=relaxed/simple;
	bh=58AVRZVomOmoa+83L7Cv+ePjKGp8p555EVSSx0NhUyw=;
	h=To:Subject:From:Message-Id:Date; b=XVcTNEZ2qsF6ahj54DxDvGrjyML8eQHlHEzaXXEI+xLSwdOkL+ucYMsnRZ/zSjL5kX0SIE46sd/c3bH7q8Ea6qnKK2kDvzqpvQFr2b/z66cmf3n6/IpCq9zqN00G885JpweKle7o6g8I+FKlnr7h5uyWgG5ugP3Fs6Kq8j6ebRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3xnbYk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3xnbYk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A500DC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774094093;
	bh=58AVRZVomOmoa+83L7Cv+ePjKGp8p555EVSSx0NhUyw=;
	h=To:Subject:From:Date:From;
	b=b3xnbYk7UUhTJYyD0UuRzuugzOiJ1boe0dYwM+rIyJ055WP8M04YWOZ3Mb1GIJtt5
	 KKyHL3oyM6imvHsHylOrmf7vEfeSDiIqY8hwpdetCEt+ESzyCXRJFMBxVAPFBJ9NB/
	 SRL+QKXQBzhvGQXZhiHSDqP1RAq2/xqWvSy3SM726q/TeUDZftic7Qslf4+xbQTtqX
	 GbHxyBGtr1eciJbkMiB5h6AQRgMJr6VNUbJIdCCiEExdHYfczT5SEJKh2+m3vU34Y+
	 9i18uUrnpw++Rgbtsve4S1Su0x0gRjgAc3MlYQ4UoM7mziWtzeBPM9UqlhYHXiXlcy
	 SgTmCO1Wdv/6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94735109446E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177409409357.3531.4241634207948178196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34c967cf3cad6b8d10d4497a5520b6ad2e7aa972e641cf56922a92f789b7a029
Date: Sat, 21 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774094093
