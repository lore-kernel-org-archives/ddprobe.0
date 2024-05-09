Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F271175A7
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 17:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715275343; cv=none; b=dIhj4zux8N3G7cshDZ675lKqH8XOR5Fd7m2oT1kRJQfo8Uwcf3wHF54VboQY2d3uvRc0Cqejcqr/E8111ZfLkVck3aBQ1xzSG5WUhdGDCj2S+eI2l2flht3DoVtC3B9EiTV+sAwl6XU944PQ2aSCzcEzAmDyT0XP7kzDCe7yAu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715275343; c=relaxed/simple;
	bh=zkr5M3DqI3HV+n25LJV5EeIXp8eT3ZWEEy35KypDkYM=;
	h=To:Subject:From:Message-Id:Date; b=Nbwdkdi2px3R+iUJ/dcBU80FW2CFlNyuobPAyUI+el0bjWiJ7Bzzs4JtMLhjHPoQYzPqZJgYSkTULZWU/JAQfk+87N1MZRyRnboAiSDpx+vM8TEs3hjf8eW1dOUUEOW/U5yINalJNWADEhS3KOH1i5WPMPaStts6DK/Q5OFmIIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyInjNTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyInjNTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8604C2BBFC
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715275342;
	bh=zkr5M3DqI3HV+n25LJV5EeIXp8eT3ZWEEy35KypDkYM=;
	h=To:Subject:From:Date:From;
	b=qyInjNTkho0nV+6/bcqI/JJf9HhEsW1XBdwKCLoK2qs98aWDm0hvXCf4NHzzfIal1
	 sUISVOskHYFc5lUYmW0e9CAhoI4WHnLx5Rgm2TUPoL1Z98lIqo+l8R9lmwsoVAU0hM
	 ixKP4m2J62xBtRo51Lk6/+6RvYNPVlqtNnsAY6J8XmnwLnKlsZyQWkicHwWBvGsu4u
	 Gx8YYV1qvCiut3nwQY717fJ5WGSlC4Kg/0+jbaBFeQ+u1zyPdI8IgS8Ob1oS+mTaWZ
	 lhhH5nh1f9i/eVaOsQAXf5MWuvO4k041fVz3RlmqB/oCEYy6tAXqv7fFl5Ei0FCB9O
	 IZcUwSHHuSjzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4178C25B10
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171527534279.4955.8967543231175468312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b271268afe00d6fe7d865271face20ac37a209ddcd2fd6a71b04d98f3c9b0c
Date: Thu, 09 May 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715275342
