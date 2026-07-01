Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0883A34DB52
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782941314; cv=none; b=jV9XaX3Qqo2WiB34qSZtUdE47pdeFpXIVJPEBZyqAl0xNL5xcjMcupfUEIDkNHJ4mQUXzH2dqo0zcNtAxJI/+PBCar4Z2UEbvjSZWeQNPHgiQii4nQi89+BH4FVtaR3eD4Cse04CAB5h4Iic/lBaAsMe+QHXS2yVKUavv8RV24w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782941314; c=relaxed/simple;
	bh=QQYgejQ3w9kyVlG4irKOYtiBsQBvTDAPmayh1Y/cTlI=;
	h=To:Subject:From:Message-Id:Date; b=LSGsRTHlcDgRGhe3Rus6uAgkLxV3zdayCL1jQD1bDs2WxxJsE/Wrxlcx7ZZgD7mEGfq/yAB7hNog7SFaSwj365I/ky/63L5ho7OKyV+aFmZGB9m1iuVm+yhXvlT31zGWorhkKjpKu7san3wOl0glRXUGg0/A1Cx78oeoOe/mfSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RC8JcCqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RC8JcCqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80FDC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782941313;
	bh=QQYgejQ3w9kyVlG4irKOYtiBsQBvTDAPmayh1Y/cTlI=;
	h=To:Subject:From:Date:From;
	b=RC8JcCqiq1974ugK9W8B+3LSZaqHzVKFSrxM5LZzcxbDlLtFt2V4yUMA7Q7hGKWjd
	 dVvuaUdZSJSzvTcszZyid2UHZH/9yk/GvXu7sOYxzlhPqIv0Ebn7uALBl/GhNB84hJ
	 YUvFT/k+F0qx00QRz8r7j2CRcJuWMdMy3ukcId0ge1I1cxbjEMgSbYj3l7O6r9gf/R
	 l/br919Arp498W/7YVtEnV/Ef5B08AHWSWWkUlB9I/tOtekL56F2QSK3pfSJhXgqHe
	 Oz3ZEIIqRfG8bESCZ23HRwgkVoawIUSKp4JNaqff2SAw+Yk2nF9U/pAHHWxgevkQQx
	 4N7FYuX2X6n5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD62C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294131368.16550.12025921772235759950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c1c1d38153a025af6b066092dde7c03ac2a12096ae1588b0e2b0a02a101afe2
Date: Wed, 01 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782941313
