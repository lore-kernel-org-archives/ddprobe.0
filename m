Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF537FF
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719541463; cv=none; b=UVfx7qKWM5VoDJLzTUEiz3ZhTvXpDdp6qNGKBiWsNTCdjFK6943syzjEKSKZwKp0VNKBjdNPDGg6gx2vx9LzUUxzH9FkpvFxpYh8np+pkIj+74JjH5313vE37qGQiS1Q6MdVncTdCj0qj8lEOCHPxMoAz5+7z3wIT/BYKc7HTAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719541463; c=relaxed/simple;
	bh=A5jG/bqcJHsXiDCaLUKR34gWpLUJ/eDsvy0bBWvGRno=;
	h=To:Subject:From:Message-Id:Date; b=M3ASdcf88EU++ubC5Xxg+dC2DbUn4sVwy2ZCmuJSTjg957VNS6IHhyN1Gp8q0GDDuaMjKHc2dit6LbBEJ+P/pSyHKrp4OXg9ZsGWDqtftZKo/m+hb5elCYTZ/t+1m9pLs57CxbxkODE4MNZdIvUHUgyc1JtsXPGmDlbI9DQoppk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+S2yOAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+S2yOAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA87C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719541462;
	bh=A5jG/bqcJHsXiDCaLUKR34gWpLUJ/eDsvy0bBWvGRno=;
	h=To:Subject:From:Date:From;
	b=A+S2yOAfnlLqiCt2OpUbaEiXkc6z/TR3oRWtuEMkpHZrCNaLCe7lbK0w6WeVCr6o0
	 Y/hkEobdKwdTZn8acUljCX1B2I2fLglLcJ9JaO4aVwWiz7GO9RkdyH4aZm003zhnW4
	 CF66mwBm86RAOc2q9OuW2MP1MjMbT/XPMhC2CxeGcfZK5Dqb9Vs2WaJM0Qk5YJT7KL
	 UwoF/9zqRC6H7IW0aByBsWURNyKFo5mBujGnaWwOUAMqu1l7E02Du/VH2wG3ypHnD5
	 yQ9ZgCKTA6O7cOfaqcPbKpgJnBVf1Ms76xgUpOhfXvjqpiIaALAizohnCMaHPFPbyc
	 f5XtZ7+Ar76ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC2AC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171954146275.22881.7947016673568405431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb1729aecd7a7163dde9b5563a86f7c23a59cd72a265662ce38e66d2ebd1b5e
Date: Fri, 28 Jun 2024 02:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719541462
