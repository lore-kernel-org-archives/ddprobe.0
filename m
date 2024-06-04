Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674A68F5D
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 00:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717462523; cv=none; b=UpxIJ07tyl2vjqWDeqYW/NergftLCE+1ib9KEx6LnOMVv4oBrp0cjSx7+FsQIhzuVLNPsvYAWIt1NSBPdd0Txy4Ctcva9GOQOA/qlYBquDBhfGqteorHqjEFDqAejyE31bOeMtmImDpUOyFS1HVE8yccmNCW4nY7NBOFG9I4bLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717462523; c=relaxed/simple;
	bh=V2ebUsIOAQBlNUWQ2ZApP/wsz95UE/dG02rZUWA9+yM=;
	h=To:Subject:From:Message-Id:Date; b=DsZJifeDVbzTNbAMyow3TUqKLSPpB5aBYHyFC0yETRbSePVNcFL5S0nRIer4NNo7CY1y9otrRiCLp4thA+bGINmUhqAZTZk8hpxy7zmAEN9ypLCQOVk8+D0IyCrb91LhgLygOgBzMiUWe/mTOFr8NGITfriSjSf20yvlgSYVtUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVQkusF3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVQkusF3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAB51C4AF09
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 00:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717462523;
	bh=V2ebUsIOAQBlNUWQ2ZApP/wsz95UE/dG02rZUWA9+yM=;
	h=To:Subject:From:Date:From;
	b=WVQkusF3la7WxTbSyJ/UGHvGc86Nu3D5p9cRSKYCq1c8xN0Ti4ukBNjb+hTdzrEHM
	 B2trwuX2SMLZTb4frgCs27jcnaDY68qXOTq8TS+J/y6uWl3N9nH7T28b3D4kcEtel3
	 HhP7ySaSlgQK1l3ci6xJ4b1bZ9v0clZVOytF7x1NmBEYSvrNzBjqqiiOjhcFyS8UW7
	 jPCsYLcMT7JQ4z3JWUJFGRUkwiy+NoSVmssEIGRdBq5gsVF8N0w8NhbcUuBBQ8S1h4
	 dBXoUNzNOYr9y1nAympc2zddWupKKHe9rV75eRKeSqoW30wnVRoViJLW9i/42GlE08
	 ZX3u+HT9bs2FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF4F2C27C50
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 00:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171746252280.20297.12337506045892153459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e06302d128e8b24639847c362043a17b3f2862c0915da0a8f7fc0162ed448a6
Date: Tue, 04 Jun 2024 00:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717462522
