Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED9E22C6EB
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733534154; cv=none; b=BgyckUaLrdCsCfLv3gVlJJZwaAExDzMt2o0DbZh7uTuWEhXbNAosFwE5W1NHoUCuq1IbBig1n5Rm0xlfTbXf99Wu9iz3B4gitwE3r6nG0uoG6XIhbCJPkTPPywdt8/Nu58iJkIs/rpB4FhdLbYCx5eJd9Bg1Na97PiApVe4EwEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733534154; c=relaxed/simple;
	bh=fDhKqsvRkOkc3o6NoYGsHluXv2MDY4Ydqhs9jvbCnoU=;
	h=To:Subject:From:Message-Id:Date; b=gDtXDOI6HVLNjhVDhQLcgHdz1O2CfWcHJVRHAzH0VmqeLotD+XboSZR8aE0e/8Idh5UrIPWTg/QVNvaFB/K2dOOVPgD8lld/FoZZGDOjozJqxk6WDp3/bhgD/7/FsI0vVBUyV+i7j5pMLWXXysGUuFrWUgX6PGTwItwj8TsNisU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlVqaMkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlVqaMkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAFBC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733534153;
	bh=fDhKqsvRkOkc3o6NoYGsHluXv2MDY4Ydqhs9jvbCnoU=;
	h=To:Subject:From:Date:From;
	b=tlVqaMkGx2+Yfn21X1u9eDC+JfWRetOzKRplMYwt3QIkgjprjZjZ3Jdhtx+IlvB5k
	 egZTlqU9RF40mmUu7CIeIcnkgStYnwSNfrR2bt4meqwmP/oMHD83/Lao+yZE3LWVWp
	 wvMARn9/GMFXRz0r1KyThsKDOws350mVYM4nGuVPpcj/VSichih8R8yHs0ug1Pw7UJ
	 GxgnYbVL1VpwdYDAewJ0x06n1FFK4vmUye6JRTNpRagggQmu9TRXUUp1zDQL7W2qGv
	 +d9+BNWD/pMLJoiGTHv4kCYjB9EMTsZupmoBgM+wZ6kYnxuAFZHklc7IBTWYT1J2YD
	 rozyN2e6oD+bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9909FE77173
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173353415361.16591.6494072991446533951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5342fd964786a1309c54ba67ed6828f26191c30c10ec1bcb68cc474932a5d35
Date: Sat, 07 Dec 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733534153
