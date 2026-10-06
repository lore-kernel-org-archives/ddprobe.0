Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484E53806AD
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791325234; cv=none; b=AFg2a5zN+lU3jeKYL2vjjERFeF8Aw/e7M7yRGeHSkWWnuK4HQyN9fdb5qT7L+WOsloKafgw7/WfLBrh8RdIvkGrjFqgBzri31GMNsRRgLnu83YYrmByixy6+u7ApzQ2tenw74ldhKdaocc+Bh0Vmcr8oTSrm+mjCwAINrK0w6yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791325234; c=relaxed/simple;
	bh=AFHz+F0i6Q+jjmbqlw7rxxvwkAl8BKa+cpyLUhXy3FE=;
	h=To:Subject:From:Message-Id:Date; b=f3mqQHa7lWIlF9OJ9q7uuHWwf84mYY4kLnNeDB46xxJ91vupBQi6upkBcBdZq+bnq2HKnaVxo4mLYYqDraHN3dyOo92ih9sjMyMBasdbDbm9wRoigq2WGfwEcV3EkAwJRBHxz6KSRoCLseq+bCuMAwHmVchU7Vrbp27IM6ZUq2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acOFkCtW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acOFkCtW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD427C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791325233;
	bh=AFHz+F0i6Q+jjmbqlw7rxxvwkAl8BKa+cpyLUhXy3FE=;
	h=To:Subject:From:Date:From;
	b=acOFkCtWZwMjpDEiJ/B4pY9Wn166Bwimm/1jCSnU6jNhKrc59jpQiNPe+zVZWVCi6
	 4n0aDbHy39dCOa8TJBUqIMtw7ILtHV+sZKs59m9eFlaeHdn7D1so5eCoKUBerdSxnF
	 DLs8sFF394zG/w+E68uG9WNiU898wUh9HQHjqb6yp5zrKzB7XiACKNgDM8JTn5pEA0
	 RTpKcmbnx2L3EJdvfLhk9U9d2LOBXPXDLiNLGpCgj7ye9fv4sKvihSjsTrIo0qXFRK
	 pliT7PpecgdojpVjeEFPKmmJE8uZ5OD/BC2ycbqd0dknwMpnToILEdQQ8Biuhr5uXI
	 VMSKS+kiE5Giw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FDDCA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179132523368.11239.6794048568027552123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55fa973a866b3c1a898366e1cc74aa7700e85277391a021a3d054d2fcb96b5ff
Date: Tue, 06 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791325233
