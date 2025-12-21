Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF7B1C01
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766278434; cv=none; b=orIyAYLo4wS2MzAga6Ww/F7Rx9oP7xb4geB2dxqsse+RgaTLVwnIfaxf3wrihxb9kICppdqGn9HAUwLYKiYGVYlQeF88p2uJkk8Hw4dbs92X/eUqgZ1v+mqvq6CNdr7xgSf8NjDiYEijL+rsPRR5u9yC+MPjqM3oRBNgEEwNE60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766278434; c=relaxed/simple;
	bh=vw+GUQ0/sBtyDemBBfaXipvt4Fjh7eXE4eABx9wnDQw=;
	h=To:Subject:From:Message-Id:Date; b=MUDVVoNxlgFOfpMqH+ObCkuX8juT+3KUXnDVTDEE9eQXWauVDuWmkYtXyluYEFE3rCm7Rwj6E1of3cANB7bVb0B90N5fIGJX3+JYnvFS1oG1Jss9iNB5cJsDVuRPvOeNxnWuj9XroOVO3BFvV5U9CvODIq25Lha6VjZ3SNzJd34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mweqO0X3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mweqO0X3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E23C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766278433;
	bh=vw+GUQ0/sBtyDemBBfaXipvt4Fjh7eXE4eABx9wnDQw=;
	h=To:Subject:From:Date:From;
	b=mweqO0X3wRIXzPu+ruWtxtTUfV+89SRN0uJ96n1mchcZYUqQv1StWtpwjyAValX3a
	 Nbw/u5z7kxaQ/Ku0nGUF7qDXh/De1NpAWtN7ZeQ9nvT9E7mLlyeQBWZSgLqN11Znbw
	 mfufsF4CsEJZXn+kxQNvg4lE7jfHRLumpm8KtToANiSHxDD4575XseWS11BWVuVYFX
	 NMpSo1ZyogRqaRY8j5tjW9g9zfZ3STPuOMMRuikOC0p/a3cd5WuE6ABv8LB6fljd+l
	 Kwa5nuVuzSd6/lG8tPJWTmZAEWyItCWpvftExfP1uG+wjdXFeQriCT8RRm6U4JCXNJ
	 q653VblXnCFiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB7E67495
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627843358.3321.16248401761509605711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b854024414e25845cb40854804018838748e940a453d9e835f3aa235fb5b26fc
Date: Sun, 21 Dec 2025 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766278433
