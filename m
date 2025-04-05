Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56755383
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743828595; cv=none; b=oI7qvGiGicfPqn7ZFd++AjPX2OZgB4NPxt7p/+f0aR/D9tFWeWWscbRb1LSy0Ch8nrl09XYEFdDRKp4fP+qo0JbuqAkAz0JwWevjAKlKejjVnc4xJLLT6eiI0DkZaUhtEqLbQ/zG215y+/kpr6HmpvfdUCflCdxlDUlGJXj4wEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743828595; c=relaxed/simple;
	bh=fVCiUMpq1l4ThYCP05lPGsiNuIENDrUPhuw+EVPX4S8=;
	h=To:Subject:From:Message-Id:Date; b=YrSATz1BPxg/GkMgf4LzJ8onraQv27sw1u6xcpEX8xet1tJcmYJe+2uMyejwTXvY3YPUA2W+PiHbYVNDYWcO9M+KKe+ioALSij/Qrqb4WUbH/43wbkC/6qobB98qUMkdbB0bZ9JMvEAyV/IPrU9JJY1GeuA9TUIIRYCXUL5Tn3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0GHdVeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0GHdVeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B367CC4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743828593;
	bh=fVCiUMpq1l4ThYCP05lPGsiNuIENDrUPhuw+EVPX4S8=;
	h=To:Subject:From:Date:From;
	b=P0GHdVeqtlJ9LwGznsDFNf1nw/xBJG41DDdGnoQjEPIdckpi2tw75hfQkWQs7UfG1
	 5cqJ3DU0A5oRlv9KY+Vforo1uUT7DgTTGfUyeqiwEtpDnhR6/C/q76pf179fwDc9KD
	 5DX4nsRBmCr41gTinCIhS+mdCH61vOBz434RSGaCfsQ0l3mmo+ZdIhur2rmIj9g5qi
	 kmdZ+iujodkpH1c3VrkHu7HCEph7wysfWOC6N/8RBdkuuYdouVh+VzJTOED5TVAorn
	 X5Gjr0paZr091NWfOhAw9JYyyKyroBV6X1CigQy5BdszpAP+pNm4MHwW60g/ZFHtnl
	 jC86mPFdU6bMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4A6C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174382859362.6649.17894629058927890553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7203b2cfe8fe753d035075d816c955ad4d656dccff4a0f73e1cede29aae2e52
Date: Sat, 05 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743828593
