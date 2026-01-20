Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56654279FC
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768911833; cv=none; b=aspHyozscpnb7Era/SSih+PLzCuuiMZhMKBSGwGpL7/xlgg1qRPT28aNLRg7jUoj/3vb7Zl5Z+SOI5UJsXoqEI3gp6z8he6S9q0CUo5igXXIXtMCLGBVGjbUP+HgF67QQmL0S1D5RN1MZB052U1cfG6zD4L5J5uMFlRDorUtup4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768911833; c=relaxed/simple;
	bh=HS23GGDGbCg6cH3aayx+HZycx1z/pbCoRmX0JBIf7NQ=;
	h=To:Subject:From:Message-Id:Date; b=jrQsVzquEjU4BsJQqypklK2MOSgWhi4mb4JzH0s6pYLeh8JOrWXMG+2PSBcx7y7VS9rppb53AZZ2y+Obd4icuh4XWeP2+OJpZip34GZ8ryq5ynoz05HutpfAiEzvzh4x4j4/4OufBYjrR27h5h2NSoCdenua2ML1ITn0B9U4sd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sh1QgWnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sh1QgWnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FA6C19422
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768911833;
	bh=HS23GGDGbCg6cH3aayx+HZycx1z/pbCoRmX0JBIf7NQ=;
	h=To:Subject:From:Date:From;
	b=Sh1QgWnXK6mWXUKuNRgkCTdSSDrOIPWB4UugR3I0+BD3ui0ne94rTnlVjJxXN5qyH
	 k5WbQKFn9eZnfx5RpSnfThMNhzFYJF/BqdwntGo0cinT1soTOQraa2reuZ2vIvF02v
	 zRT3SMbjVo8tdn61P7eKlURAjyJBtadQXVX6eVIW/tYIHEz929B5Mn25eSaaqyifci
	 1UJQhmN/7EQ+j+dCIeS64KRL7PpzCkw9IxgwEmGMOZuhcAlT9H1b2wBJrbvL87S/d8
	 Ntr69CmVb0exOrX5IoLzYQAXsUocAx8SWVUG7OWBC+JbbTnt+VPcLqLlu3QmpfDYpF
	 EKq3Ys4PlUT5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AF6D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891183361.25699.5269847642786260630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c2d13639da803350c922fd2192dde629e289a806e7eb1d7ceae5cbb4b2f326
Date: Tue, 20 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768911833
