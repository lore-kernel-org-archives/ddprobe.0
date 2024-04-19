Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A353C8DE
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 19:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713553223; cv=none; b=m0egsVQE3xA6aivy5OeDsKywuLMEAix3vv5MSZuqpFtTsT7vza0dRYaGKrgCAB0KTYja1ptTzh/XVTLOTctuzAcc2AOCxvSr4rOAkmdhHM1MWCOOnxQLMnIZJGimP17b9K/q0QMC3W9JVkoj6TRjBdMfzbkmP5JhAhgmqGACWcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713553223; c=relaxed/simple;
	bh=pSLdMkOZgwdyN9LUeQsTjWONU4Q/SjhiyisVnzczeU8=;
	h=To:Subject:From:Message-Id:Date; b=lBeN1BRhV8++AcTi2mFFS+NvKsKZlEAmT1bSog1ikhJIzHu/aP8ck7qArR2ogRFBpRmZf5oRsHL8l37ZiWNrr8kdt6ZFRehqas7opOiQRio0pdq0z0MnOrLoioINPTSvD2hoYDX7zm0bYMKt/KP9GsD91rOshLKnrTAa0CioONY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6ygQ1MG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6ygQ1MG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D96C116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 19:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713553222;
	bh=pSLdMkOZgwdyN9LUeQsTjWONU4Q/SjhiyisVnzczeU8=;
	h=To:Subject:From:Date:From;
	b=X6ygQ1MGLGN/wEstS6xIGHxDIckKiiDgrRCQVjmai68v5DwUJlKQYRxkC9gz8HR/b
	 I4196ykUnk8M8CMbOijpLk3KLKyqOHJ1BG+nK03f1SFhiHWeRwuHA57k1DIk7ECgT7
	 qILMolUxA30QXzF/8s03Y82u9Uq6SAIhDhg6sYukOuiiQXxWgZWjAR8zeO0TDM8IdB
	 TEvHyaTpzhNmob/lO8z8WYd5/BU5gMbPnc7Do7l08UvDZ3xjmkgOYvmbFVxIIZUF9c
	 /Y6Rlt4lHHg4zbl7HE/aBVCEr09z02Ar6mX5I61zP1+0sIfzEnyTX1PL4AEyoMNSrm
	 XRoYiQnPi3pzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD18FC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 19:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171355322282.18419.1400431715762500582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35fad2b9cbf8ede30112d6b549f19402d920befa2f0076c255bb87cf092e3251
Date: Fri, 19 Apr 2024 19:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713553222
