Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4272745C
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772756094; cv=none; b=iP3pHV/HEreA7z6G5lZOkX6CMxYbtahz1X7zwXnNfTjGllIj7145wNnZ8/+GYQb7cNKPR9I+5kOBt8T6dQbZdElmEz7DRPQSMbpuY/Y6iEinkRLos7VH/RZ8dnNBeDwB4/9a3sAmFqVp1cHRpHu490tz1BtwL6HZAW/Qhyy7wt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772756094; c=relaxed/simple;
	bh=w9XYLb6bm0SGuK/NEmY3lhMHA5dM7tE8mvIkrOgNTuI=;
	h=To:Subject:From:Message-Id:Date; b=EQ/Y2Vss+SnE1RqkuiJ9Q0gPU1po0FTA/NdtfX5xcb7wStQUCL8YpkvJUvyCn625adA7cP+TnQac0bZy8Swt8w1aY63nWCvHdQLPSl89w7boNpmAlVGiWavvnimeqj1+aj4dsSnBPAvZrr3KwQ4B2iLVJsFXzeMRx32yXyKK5WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Htb0xlbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Htb0xlbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79C5C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772756093;
	bh=w9XYLb6bm0SGuK/NEmY3lhMHA5dM7tE8mvIkrOgNTuI=;
	h=To:Subject:From:Date:From;
	b=Htb0xlbopGxWgU14WM84Tgey+/E2e75O1e9y7KjOFfbCn3r43q2Ikl60nmBJxTmkJ
	 JSY7MUZ4ubn1bROMsF8J1pQOybB/XxMp3qGaDC5BVvzXJOX+VBERny8zdluiWTp63h
	 aSzQ8lvTf50T4mTkcGh19pLqFvbx6G0RQ1j2jvbCiv8g5W7sZvGTopi469vucN9L76
	 g60MAta6EhXAsMPyWCKu1QoklSPO1p7JmEF+U9genbS3+ge8Bwloql4qW7BSuqRXUF
	 vxbbT3zyklDACjsZ+neK9ErldxKnYv9YcUh/aXIOtF64ZIFsm3dpeBN8L2itsnmWVW
	 24s2BpbX3bRJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9462FF513E9
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275609358.11379.16467126956274484574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c642444d6c4064b53263ac0416a0142598ea1562e4e263313508dff9df7aec12
Date: Fri, 06 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772756093
