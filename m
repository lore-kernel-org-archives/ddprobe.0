Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2302F2727FD
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758646194; cv=none; b=jHRSzsNkPx5xn4V/4kWRaT6+sjP63qNJO6gYDZYXlsF9KHEChxH/DJjHEmkk60AnfKyAEbp+lOBYtRueOVck06N1svR3iqqnG6luOu1SZ9L3ZtzEFlwbjZuXaOcdvg8BkYRXYZU0FVDUdFMHhDLiPYYSBYL6bztWC4hRA0ZYyCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758646194; c=relaxed/simple;
	bh=EuOFnulg4CVK/+wz5NPpmaV3ds9EjDNZr2y3JT7Jw10=;
	h=To:Subject:From:Message-Id:Date; b=MqY4DytjhiGSoIo9B9yasgKHx8RsrAHo8LPtn+bK0PDQ/fjORQM6azFvxD2j423Cmnxp24OdHlZBcsw1RoJYEBVAkFMcCHgOSKbxp6PJUwT2tbbdNOWVw73w8Ml3MsP+8iMOsHro1AD0+9rxKoi+ahCgKMqq4KwZwhyG2sJ/xnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YC/d5vdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YC/d5vdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AABC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758646193;
	bh=EuOFnulg4CVK/+wz5NPpmaV3ds9EjDNZr2y3JT7Jw10=;
	h=To:Subject:From:Date:From;
	b=YC/d5vdV49cIlOwAoEwfVmzXG1zVvhm92IZeg5TTOsRpaJwDLAOfiagyZU0exPcfN
	 WQrEXeOiD7P5XYVkVB5BHTn+pkr4rVxJbcyp5vGbPFg25ki7vunXCnVDTMBGZKN1iy
	 jA1S4Ec3aUoY5K3XZStRVKoI7+9imWCuu9pLnTFrPD9SxkhTH3L70DpmPFYlI4N9Ue
	 VWchCJ+iuToeMNT2hQRk1E/CNq2n5yBiWM3hZdeWDjOyhY/jEfDZ++1yQWp7NRCTRv
	 cxwxB4jsXy2hANW24+iRiZHE7+16MO/CB8b3t/GddtArxp/hfC+9oLZLutJsY9Zkg7
	 UPitXrSOk+UOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929BFCAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864619359.22369.6286786373569830679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9ff1d2d86f965bade1963b4d20f53e426d4a977a53122ebbcc8d454181ed5c
Date: Tue, 23 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758646193
