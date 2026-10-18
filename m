Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A29F2AD0C
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792365634; cv=none; b=BzEtG42r3SH5qPvXeLEuTjDoyNIG0CliQ0ekkXrsDN0ToZllu5P8X5u8CLatTcvhL/TliR8vtRGzIYCK6bF+DmnCuRk4G4IS1E5jv1+So8gUIuZ4YG8k0WIxXU67qZTvy9cXtIQqru2+OicdzrTqiinRgSPWJKDmm3RbQok7Vvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792365634; c=relaxed/simple;
	bh=x2VJaUF89/xVrK6LEz/BqkX60Hqvdy2zrkoGvdi3k7E=;
	h=To:Subject:From:Message-Id:Date; b=UYHxxA/He7kAUDggFsBNmnHKrY0Zil0QiYOHU6CIlG1RU/CHdJWxggyAedDxg6Cpy0uv6IChrW6IxsU2Sa+vXfN44ul836GiPq1PMhIeeI+R4Q+WUujyAIZh8NbUtS1E7UqgPPxDZ8nOp2BUCnKWt9YSoeuY8d39ivjZd0jNyLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFwivnHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFwivnHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B44C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792365633;
	bh=x2VJaUF89/xVrK6LEz/BqkX60Hqvdy2zrkoGvdi3k7E=;
	h=To:Subject:From:Date:From;
	b=PFwivnHA6tKj9tmKBQISbglXwp1EOVI6WlsV1cgZHNFzAWmLgqVIQ/6ezliU7r6YO
	 ZhdgZ4pw06eJ4XvW/fmgPY2XdFvGXSqeinVYK/at/J/1kcNxlwHGL7EsgcxFRMlijx
	 zKJyNy0GvJOBImcKVhB0+dCh20H0+3Ig+Nmaqn/y1FDSxvhx2fA5B7FlZ8zdc4Xo1D
	 uOPDW7y+UWMaPIKsgvvp0PQ8SLkEXvOyYTIFS0JyN65J6BaN4TqXK9hPY+KkQH81s1
	 +o2YqnOCf/4KcqY4f5bW+jH8zkechgttxznno67zZE61dqOrJ3AIEoXtWzQGMJAwct
	 sgK7DHWW6PEVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47E6CCF2D4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236563370.11946.13656117364258640077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06809d4bd53ee1e97be9827db46b433f8a58104792bbd4a705481f1ba7facfc4
Date: Sun, 18 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792365633
