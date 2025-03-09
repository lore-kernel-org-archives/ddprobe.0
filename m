Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C18F19D8A0
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 22:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741559934; cv=none; b=Zzg0Cz3Srcg2FQKm18IwGFpg3q7skLiyLOTP4YRcc4PZ5NLEPudDC5BGk2LH7oCQGWxLytBaRgyC8DLX0SzL0CBLtCENAfo+X0Y4I/08TPI5OczYj2Mk4i7uiFNu51vl/FzVvp1kLj9bZRqUhFp2K7T/utkn8nAtIwsCZs5FPuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741559934; c=relaxed/simple;
	bh=7dD985KeLpKOs7ieGy1qbWd0/5V8U3k679LIvDDlAKU=;
	h=To:Subject:From:Message-Id:Date; b=YuErQ1EPH2jaGrMtuEWmDcnIGAt7PBEGAK/e7+ZLeVmrR4xkMICaKsEd7/82aHGH6geFWbRxXunq4s/j33QhrCDCFhO85cPoDJPy8/veLQ80b/dCHxayHAwHEcJoCU7UEIE5+cln66NpgUkvhYBanMed2wHJ2yxVaoYa0TTy3T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WH5PYm2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WH5PYm2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA84C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 22:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741559933;
	bh=7dD985KeLpKOs7ieGy1qbWd0/5V8U3k679LIvDDlAKU=;
	h=To:Subject:From:Date:From;
	b=WH5PYm2Yh1klEXl5C31F+wxlXyfETs6DVs0Dn7S3bKBwcDHdibghey8y9ebpg4HmP
	 coKWm7tFyPe5qqEMOAqcLBhPGLfZAQUc1nSr/XuIC4JatBUJkxILZhhi6dJbX47pLf
	 EuXljWRVErLwltkXIucwj2n3LHX7a6GgXaZJk2mLARbadm7gYwG3o5HuMELTEVbu4P
	 gm5vugnmOrI2YHARwJkOSEHZLUtO3BSOxqp/Q/JE3FaEnMAPnovAHf4rwfE5PMNvUi
	 GNLqsonjWLV6nFFFpRtJMWOSAEvX81NfnJcPZBeGzTE81jDGbZ0s/PAiNFx0Kc2NUS
	 pzVve7xfR4VKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969C1C28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 22:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174155993360.12351.3544768344757044246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e51287c695b9fea226bb43a5a856a725ec2e4b24740fa998902dd02b9ee7354
Date: Sun, 09 Mar 2025 22:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741559933
