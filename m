Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D2277104
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724442354; cv=none; b=kxT6Xk2Ur3T89BBZ01Kac0QGjczMeZ2+uMROOXUQfKlZBJpl5e6QmcomlXxtEcA+z89k1jT5Ch/YuDzSBRM4k/tThgtclIvXzq4Mk2ZoFBZWfX3JX7oar2XiNxh0MmvvnpQPzkF/mr2F8e2BdsEo3KJ7ECeyrCN1FyYWl5i0aDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724442354; c=relaxed/simple;
	bh=PLIVX+Oqgaf40Otg0cHY+T1yLAIK9WIpelyFKw2+8zc=;
	h=To:Subject:From:Message-Id:Date; b=aRyjGiNBAR9zkB+sOAlRH4vgwnnCxRl5+qKJY3LHqP6lPeHwKSWvknWYVzUx2Ja0S9gU1CEMvtgAkPMTJv6jTD2vIU0RYMwooVgAh2IGx6R2Qtf2ZsCeTQnWKp2qK2rG53qLov2Sn1L5+hI9qntRPlKIMCr8O2/88iN7+Zp0lMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSl3Y43E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSl3Y43E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA76C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724442353;
	bh=PLIVX+Oqgaf40Otg0cHY+T1yLAIK9WIpelyFKw2+8zc=;
	h=To:Subject:From:Date:From;
	b=aSl3Y43Ey98RjEht4QAVW3qFfAMjY0nHJbY0XvnFNcyS/AQxuIK4LNGlmqpfZeKPU
	 gcnvKTuhO+KNkLN1LsiIGw+NZEoIBUW62owCk3sPvhSs7Dd/7ZYWS4NoxAW4oWRyRz
	 QooNAMDJWzURWyEIAxnZ+S3srFWkOB4TRjPwMjinajOqxRzxgtxBJiQP5V6hT8pyVx
	 Rq72QzxlNLLbALXGkRcmH+cKSdknSMz9qjkR+VGRg/CXOa7O2l7tG/RHSYdhSxsO2K
	 YF3YNZfcpsdkg+BslgB+F22NDtijxmvZRxEq+ZzZShS/d7sANqKwE6KDMhliesbjsW
	 GpJjKAnrSvMFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79CCC531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172444235363.2515.12005722804495498761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab05abfd65cc63575fb39b227a600171f5776e579c0e12a75a3046a80ee76284
Date: Fri, 23 Aug 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724442353
