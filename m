Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B3F2D0606
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773405894; cv=none; b=ZzouhHzEq4HlTrD0lBh2kDKBOcYWkj7O/3A9Vc0Ha/rY3P/GNd5CLqd8TF/+noHnejmkTk/oDBwt6DX7B8AFWbApQn2dKXzMbslHengXwWcBdTIVER63I6NOsLvx7dt1Y+ywAMiD0oyw7NXQwbBnDoisof/8PMHNHgJyYqWXO9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773405894; c=relaxed/simple;
	bh=h2M+2D9+TFYEDY2zBjHeZPTaLeugkyFffh321QrNN1c=;
	h=To:Subject:From:Message-Id:Date; b=LBY8mdu3I3WTfl1KgC0bP2H05ib0u8tetldu+pxCrT91xXsJwPbpVLlQthPlpubS+xN0BS+6Z7VvoC6cInwoGhF5fpeLR1KKkZJ1zfD9m39yWWEdPtLLo3DUMuIvqVYU7A9USoYuAzn4kxA/DQrE4iYSUX9/4BFlCGwBFTKBFUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qb4Y0KKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qb4Y0KKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F5FC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773405893;
	bh=h2M+2D9+TFYEDY2zBjHeZPTaLeugkyFffh321QrNN1c=;
	h=To:Subject:From:Date:From;
	b=Qb4Y0KKR2mhTqCGLcAla/JoFD0aA2BLasRjV5CYTfV+jEXhpB7VidDzprLhoYtSiB
	 LFewSVuEF9Z2HEJjqxVmfWA4JV6VJBbIdLwnWKBXBnuwcoFlc3OJqQjmC1QS9Jy+2T
	 BeReGKKbjus88waJEpNdQGyJQvqREhXXrtA50j+443PJ4QsmxMaB3f3oZpXD2VM4QO
	 oEhD4bqTx5r8GuqT6fpuOZezv6WJHFY1OqniUBcKcdo9nqSJHFezwElYhH0d047d9P
	 MWaEsp7tUgSFxXbtCL5ElA9B5AfwtXsQvPr95Jykd751JMa1EUGDodQiIyt85Iaq9z
	 bZyqpfrxic0MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9180D105F78C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177340589358.20076.13991424896194149952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52789e65031d2272f689e8418ea4df3670ea404658ecad9685183ebe26c342e
Date: Fri, 13 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773405893
