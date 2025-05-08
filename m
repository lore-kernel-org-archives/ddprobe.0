Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343D778F32
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746722995; cv=none; b=q0L2woAjPJu/C/evTd/JP0vvy0YURT7dOYwAzDu1Gxh9XQ6IiaogrcBv1IrR8urNz3/3X9j50/tjDyse2rgIWWPeOnibmIiigA6/MfeSeXlboKi/dgAJUWo3+F6o3lGKq9t9lYy1haX0MOjGUJtkVa7rS/Loq2JJ1UcjGK2U2lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746722995; c=relaxed/simple;
	bh=YJw+Iy92F6ZZUobTXoH5iuTt91DpW2HQcwx6lgeXhVA=;
	h=To:Subject:From:Message-Id:Date; b=ZEt9ldWhDqIsRAncB6HkXXcKVhAsen1KHvH90TFiDKROSUJF7kfoPxXJDdaGrAqTCngBUWGDjzw6Vx/LegaL/PkJq4DbBeXPR8V4QstHzxihp3LTdnGOWS68RN985VLSbaiDsPkeadXnKZC2JVT20FpDO/NywsbVtRnlTE88QkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gh/gAtis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gh/gAtis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A874EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746722993;
	bh=YJw+Iy92F6ZZUobTXoH5iuTt91DpW2HQcwx6lgeXhVA=;
	h=To:Subject:From:Date:From;
	b=gh/gAtismgazVl9T3LjXiDZAMUejc8Hlmzf8Y6SbCLc7rk6F5BBh7jB04Mk2Ax4tB
	 kW46vFfsQOiWY9kGIkOexyJcmL6UfGgbsjso3S3J9jp6/Y5wkLEubsuTOQcd1fx9NE
	 YS5kN0grd22cT2TjrVck0m2BjVFbo80Cdqi6ubtyql+PurdGytVpkvIRvGkwidFD6Y
	 27RBaXHxsypDbPNMMfEAwDpLsDykrTN2cuLfc5dROeHCHOvJUucx08Du3Hi4yuaPUz
	 kjukTsyGGZgoq1r0V4SXfnATRf3HaW2Qk8+QZuE+T/qRiBnKsIQhcRn8aw5SGYohoP
	 tfGpyAl/ruWtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949E4C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174672299357.28558.373466908025828890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70b6def58854abbf15e27bdf4004831a5453222ac99dde103d04ccee98dad6f
Date: Thu, 08 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746722993
