Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550B517332C
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754150394; cv=none; b=TB+TftrSizhxa6DrJbQ9las2ay1Qe+50bi5QGwW/AlvPs410/k2xczJm4KyxXaO/doGBOjkDpGBpBPdkbyKdFxyyVaETq0bU65J8zr6Ba6EXg9wBr5T0oCN9CL47bSNacVuX7TBaH9H+32wT4Z430BuT2NU3m8xbzQ2HqKlQ5fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754150394; c=relaxed/simple;
	bh=pmnGt6WyxsBigWBhsoH+fDi8mXmZ1WOrOx09I5h06CQ=;
	h=To:Subject:From:Message-Id:Date; b=UDNZHshwZJXbjwikkuWhW4W5ZnjCsUCoeanSUBMkEC3yekzNUQ3aDV89jIx+KhJXbQYbGZBQS+AjoXjjLe5OMMIOG3vD0bcNQc6yd7S5EV3652hZLnSoFYrZ0IDDxUvbzjVeeohIfbXpSYPx4l2zWDicE6htkGzZSAZ5O7UyoJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnY3m0Pn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnY3m0Pn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A88C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754150393;
	bh=pmnGt6WyxsBigWBhsoH+fDi8mXmZ1WOrOx09I5h06CQ=;
	h=To:Subject:From:Date:From;
	b=GnY3m0PnWckdKS/+mJmOqKurNxPWhJ2SkSFKxbJckjrUFLXGpuq51IKw3JfXInJa2
	 0SGwenpzgDU73oXzOVO57AwUDCCAO7fsKXVRvNkuYI8DUt5wYbJ+UD4cffSbb/Pp6k
	 oHk8Silp1F6VW1JHGnySbfIuM4e7JJ80ncWr2aTRzrUTz57uqB8dKWJnxgqMUgcstO
	 az8goebIE9bGLm0SLeuAjm7q+vbFfyu1sC96yVyDZDlsaJp5ClmBnYdRuM4IdoDxgE
	 6aY5ukmjpkvRle1BunLuFYqqo5uTShoLFU888hVil57uWtay8qM5LQ6Mv36astz67W
	 5SbNWnVKx6t7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912A3C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415039357.26683.9116020097476710091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f817a6896cc48666d7be757de3deacee0f530dfb85970f8309f0c310c13f87f7
Date: Sat, 02 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754150393
