Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412C4367
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746389395; cv=none; b=KguaSEeQy/s3Kwh0jxf0rk8Yc/aJX/KZPJbft3TJmtZk7fnWaKPCo4htuqYrPBJJ+Xr82qYh5jcU0DOQ6lKiw3coSfSOdxnHTLdVTItp7DD6UW9nMyn6ZBn4S/2ErKsAPf2tyHKpgA+W6VUtaP/oA23+grnSqgoJllDNabktyYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746389395; c=relaxed/simple;
	bh=6KtpXS7dz8zZZXsxmpAs0ts4l6X6HgUe2Viol+4R3LE=;
	h=To:Subject:From:Message-Id:Date; b=K3VgzOq3klHsLZV8PrRB2TUtLtU6IQuD95bMTphjI+B5rusEErKVHGDAN9DoGJO1tq06tUwKQhUk7F3m93dZ1t5Vv5/c62KqvVqcDm9rgH+w/vs3QWqjC5IzTsItytrlUym4n7IAEzNtog0afewdU15Td9Kk/5yX1K3eQDhGvq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fb3bbpxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fb3bbpxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82FAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746389393;
	bh=6KtpXS7dz8zZZXsxmpAs0ts4l6X6HgUe2Viol+4R3LE=;
	h=To:Subject:From:Date:From;
	b=fb3bbpxWc9uRndF2vyBCCJcjzrsvzAXJmC1VMHqgvsqHhk07K3dfWvIDr3qG+uysr
	 5l3iRUJIsWcJG0YsYwg1PRRFdaj9ssOL2RZO5hEN9B3D4/cOcTPEQR4WgHowv/0XsR
	 1EnWdPmzf6B7/NYVsG1IfEIWo2PSHQHwsla5S0QYCmb8dkiaZfvcgsu4vStRBgoBpL
	 DtajlFCNJNYfzALfpx7Jq/pIYd3k9ohK8GAvGIZ3hlv+cP3R9L4m1gyUrYoAmEhiw6
	 /YtE64E/yYF5/BiChKpUtGHqD57W0CoMDrdw+DuwH76Z9lNUOuF0QZJQxt2LGfk7tS
	 VY9VelocLk1TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907DCC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174638939357.17061.2634972183015208911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb56b76cd35149271ce5074f780e61137ed3fde20f9a5667a62a62ba91bf23cb
Date: Sun, 04 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746389393
