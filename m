Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C785320297E
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756805393; cv=none; b=iXXsVtgMo874fTeIuAoklMUlNjO3NGyapoFaq+74j4FvKXC+I5X+6pXljbqk2+0G0NcHqjHZkUhI28vmKBwzC/f75u1Da58fkju2Y6guAQOR0Pnae5Gg1LopI4LgunoxYebXPjdlk48HfwGP54IGx28MJ2RmvWCRKVIz2vy/2m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756805393; c=relaxed/simple;
	bh=gvOCu94AwRRLZfS5eYxVEWKlwYyHnyRPIAAgu9OtlC4=;
	h=To:Subject:From:Message-Id:Date; b=rMI7dxv+7z83ik092DaWlFFB74FKkVohLhjNiD6UF7o16sE7gU19gm7jqN78WB3Gt1YUnyaGRC9q2E0c+bmHG2JI/I7HZxHtahuQX+aby64PBtn5MR8ry2r1UZMZLqQDav7L+TyCOVb+Ty9qztC+F0vxqiQ1s4hENT2fubvpOOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S18QwlNy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S18QwlNy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02A0C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756805393;
	bh=gvOCu94AwRRLZfS5eYxVEWKlwYyHnyRPIAAgu9OtlC4=;
	h=To:Subject:From:Date:From;
	b=S18QwlNyvT/JbDEL8ucgXvQPd7qEAe1IqSlAYSs9FwLCSPAH+vmCIQBBk3qkKkc5J
	 vBmyPT1TLR8OhRTPvwZMt3rhsLOZcCUv+ESPbxbb6MeGCZkRdll8pNAm5O13DfilIK
	 SxIcNfw1US8h/ubJCCwIfnKpPTQFOBZXW3i8vHxaQR6s3ZZeI8UEBg+jT6t6af4m43
	 Cdmd4M7QJZnkYiMDWw2iSXYwTcHAYucN0sOugxAmweFQNa9Afl3jtsWH0T734PiagA
	 gQ8xbK2a23+4ViO+vK/DHoN05y9Vh0by1nK4gHXdlxX7uXfTASvgPwE7WTCg3vtMsR
	 jNPTjfTbG1oHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9FFCA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175680539358.21631.17601302484862948854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b6169a9481e7e7be6933550c48875b02d6e42a24b37443394148908e11371b
Date: Tue, 02 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756805393
