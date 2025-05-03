Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE2B19ABD8
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746266994; cv=none; b=S3QMQFLr0PBQDm00RA56B9YjyKkoQJKegWMypImgtN/foCr+lAVsJueMLnjkzgzpvkeic5NAw9XDw0IOaenyL10gyqPN1b03JzzR5ePQxRNcCeAvQbnL9H74LFV04FLffTM/FY/WWprqdru5/KI1K2Ha5WRUxW9B2CuQ2/cSIKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746266994; c=relaxed/simple;
	bh=A7XkTMwREUe9TBGBYa/j/EKG7IvyJeZtbYvcSuGKwdQ=;
	h=To:Subject:From:Message-Id:Date; b=kNFYJWtacwM5dKJxh2w/MT7QKHoO5smzfaVbKXcILZ3ym1XK8rwYXD1YKQUb1aMr2QPQEVp0ed44jOL7RAFj3td8B9pVBbOzKXzwKLJO/frBtUWTQC44QRrOmK/0rr1vrkGUuYWCxVeUWQuqM78ZmRfDv0icYLovol4pekItMkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/W+Cqjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/W+Cqjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB88C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746266993;
	bh=A7XkTMwREUe9TBGBYa/j/EKG7IvyJeZtbYvcSuGKwdQ=;
	h=To:Subject:From:Date:From;
	b=o/W+CqjpHNsCuZi0ZaG86Y8XXySg46H91ZnkgXFmiWgoCQebHqa5mkLqXZ9qOjv47
	 WSODg3SJkVwG9qGh0ARjHa/Ucyf6FHT5IvmQ5Km8VtFKCCpT5NpJxu1Hk/elF4Fb7V
	 is4RRu/CdK3MCf/GrPPDLec9jjIDyUJiInY3zdqC54TNf4QNvoV7BpIG1lT7t9ScMF
	 AgsAxJvxxKh74jj6RMhQw4aRGz9mwD5YtZhniLJkT1hc7OU91g6DZ9qCfRlT5GYami
	 HWvgu3m/++wuxruLtORA3UAoSwwE7dvfpRwKCrNouTIlN5Hqa9shUdMHEkp2Y0eTCC
	 LnmBx8vnI102g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DBE7C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626699357.3128.6009185938882224336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a04bcef49aa0497a7aede1350d88ff3a13f35e2d009d3a13dc7d421b59d3eb4
Date: Sat, 03 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746266993
