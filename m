Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2A71A8408
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735939554; cv=none; b=rzIKlA1GRZ0tVC7Z+m7yjwGQEt5zwVrA/R6zTuyohVzg2jxnZZx6BOHpGLib/BZE3ZKfBOY6kWjQaRL3uCO/KlQfv7s5ll4dBHNLrv33F0YIBEUdAnoeAHn8uiUOjgSDtpVDdslpw0eahgN03ksJnPmOpefcVSWWZEvqINJxJwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735939554; c=relaxed/simple;
	bh=Maec9UT2kSOlRvY2Xmbx1RXdyUzgO6S+fSYr5TsJHbw=;
	h=To:Subject:From:Message-Id:Date; b=NcDREVTsSD/uNxJmLq9rbbZa0CRQr8M4BLYcMGXI1uCnrKP5jB39xAPrftrOVm3yCdMNn9SBiXJE2xnwELB0ef+EOZrLFDcfy1oUydvvux9FReLcUmWk9ccUEm9AljtXM934lmCQtHC5FyaGOjqHP+YNiT9LKMpaAR0B2/fZRKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oe2sl1k/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oe2sl1k/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEC4C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735939553;
	bh=Maec9UT2kSOlRvY2Xmbx1RXdyUzgO6S+fSYr5TsJHbw=;
	h=To:Subject:From:Date:From;
	b=Oe2sl1k/LB1p9wEqyc25uBn1FroSDOz04uvu+zhH+9TrhOBezSMlH2HP5a9dyS5Ev
	 wOICEIGXJrAEuX6eDBM68S9oaN6d6QRclfWLCvhvHFd6Xr/3oi4G00euoN0i3myrug
	 hBUn+j2VFjBRhE29ASaJiLdsKXK8gNf8nffPfarExbu+GMy2cqaiFw4339Or+S653w
	 F3vcNwAGaHY8ji6yA90QDw9M35FX2JnB3ft/XrIv4g7JbU0NYrekc6bSXhrE+RBtZX
	 OlmsVX8OT1fabdkLkL9fz2QspuMGODDdVPCku77jhHyCWhLvqHc8JxaVts+7pSwEQ1
	 +C0b4WO7cIz5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99608E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173593955360.5419.4915546127002791630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50eb0e5435a7d6b6d5cc937957f37ac8d0dd2533931e9990a010acd4656f7b2d
Date: Fri, 03 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735939553
