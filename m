Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CE5207A32
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788153634; cv=none; b=mgee+dgErs7koOzmWh9tKpNBgFN25btxNRqiEd8/Fx4eKqyFa1K00SUQB8E+2hgfCLA1lseILN2161R6UK0CUbOcNTfDhNWcJ8FPwcQvFF0tyuikrriZHwNzNmPwLlyUrKgV540IDmiFI25jeMUg6ddAaKp37jSDKP8rApnFmqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788153634; c=relaxed/simple;
	bh=qMVTs6Qq2wKbsGEoOL6zoI9I7Aed1oDXd3y5SPNJFRA=;
	h=To:Subject:From:Message-Id:Date; b=jLa+GyN16KF2DdBOzIi+giDonWwr7mqTqOM95ncg6C4vQWE16sBtVO51M06ZY9GxISiq0f6u0tFWVe0EQZ65U6SRYjhqgscoMP5MC/zrSj6p2QIf0OLcUwYY5fQ4le7tLYRewzAEsWKhGDKHoZ3kP7BkRM8Gn5y45/fYt/IVIG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glPCdQ4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glPCdQ4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6840C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788153633;
	bh=qMVTs6Qq2wKbsGEoOL6zoI9I7Aed1oDXd3y5SPNJFRA=;
	h=To:Subject:From:Date:From;
	b=glPCdQ4TqBHrAEjsscDtnIiC95UYnX79tl9BbuyEx171RbjsqWD6SZMpW+IAJzOkC
	 l7S+vi6jjfjbKoGm2DoasCOBTFhxtfXOt/4x1flnhfB+fdCCnUQSbHRB32P0LaRiXC
	 05ceKcLRaXDuDeFj9IUZJ0J6o1IDW+nxECx6DDk4v2QXWQFqzXiAoGIPp58hkSD44N
	 WXf2dDb5QKIxlFdns9em8TodUqy8dAxE938bV5v9lKi7v2XXI0+7XyHaNieriHQxHT
	 nmTAhTsoH7DJpeg4UbpQUnaBAqFIMlFj6cGVMQIpDlwBJnG8KaxORWH3yurjM7/4z5
	 E+xizkLWSE7lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3F6C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815363369.19939.5031698610153095872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f495e6fede6c5c11c760691dc1a68e158edadba904330b8cc0fc78b49eee9cd
Date: Mon, 31 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788153633
