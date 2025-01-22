Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304341BDCF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737552954; cv=none; b=jS5ES1WAZ54Y9+Lo5EJdTW1QljHfoTF9G4Si1xkIH6BDJqF9eQGBUcb9fRawBc6u+lK5njBgTTj78+zbiXK7iRuH2fe6OQ0p7nM8UEAI5Vqfg4uRlJRILepg6q5N9BEGW646QeTNG1M5aewfx8hhNorDr8U5H7VyYhyG9gH9lpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737552954; c=relaxed/simple;
	bh=w4ngNBxj7MapcdlJFYqdDWT5CPb+R9axMmVdYn34Dx8=;
	h=To:Subject:From:Message-Id:Date; b=uqeFJvPdRdoRt2+zeqrI7JPdM/+BUFmQYWmwR3zkAKdeuik8hxRYp6XQSzfgt1BsodroFs1lF4AJwY5CUQBKMBWJfq2cTMD8ppEA7tFJ1jGAoXaPhoc8l2qR3kp6xGW1gwcQ4+BcTcZLQFhXLQZjPpVM44DHjh/3ZP6zX/WAN90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ov4UopGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ov4UopGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DAAC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737552953;
	bh=w4ngNBxj7MapcdlJFYqdDWT5CPb+R9axMmVdYn34Dx8=;
	h=To:Subject:From:Date:From;
	b=ov4UopGr6mJIT3QRJySgYQOJ8+ml84vPP6jt8A4M+pVUpGYIzlDVzsUQJ4IDxi/oE
	 vBZCiawnE8SfhT89unIQZzFfE3cMk/sFuG3JNjKbC2BH/nC4e9kVTqDFTl1RsrNO+e
	 sR3+Lai4jB80I3YjvQSH0YarUvt7Wk8f0y37zcT2s2vVvgZte84XrpLtg6+8616W9U
	 XUF3ePCo+ms7/LY+bjAyjutolFtWViCWzcXh1pXXzmwUjtqwtlxXbyb+LZQyqTq/Hj
	 V8vQ0d4orsOydkzQ9bmDmV5+iQImED87BvoWhHjzgboUBm+62f7gHUeyAwDrIXORmC
	 vYPCopBwwP6MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980CBC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173755295361.9349.13769054795074596267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ed4e5953e7e9d173784b1eb4fad91016afc75e3552c319b819f384c5941ad9
Date: Wed, 22 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737552953
