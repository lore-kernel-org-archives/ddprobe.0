Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C50A2701CB
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770772434; cv=none; b=uf0Mo4JCWSZ4yhOn42yrjVvR33hmhdCFdcxd5eXcQI+iy6GhQrNq+kwu5M1xRKajVVngfSCEdjuplX2MoqKpaInHjd4YMtqlCg4aq1CWeRlD/EHbNRVmLY8POScOhLyy3XAhcpDaRx6rtKmuQflEIKWAYtd5TffeLuqwoQogZRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770772434; c=relaxed/simple;
	bh=7mhilQotWmm8M0vf2MCrEXOOhEqyjlUu3PbGBrU86TQ=;
	h=To:Subject:From:Message-Id:Date; b=WtKjNZl2Cp/DfC5bpoZuF/eLNzIaFiZMyu3FIPgPSbpt8OzbkU8bePdc1UQqChCycPyF90RXcVLnYhGARqcyE0I1x6NqbMt62m15Gfwl4l9MsZlXtl0XLvy/mUNJ74anuWdKJDsIVBe0rNQTXTdTQC+xiL9hJvAAyRg5tHEnp24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asV6Jrx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asV6Jrx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88D6C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770772433;
	bh=7mhilQotWmm8M0vf2MCrEXOOhEqyjlUu3PbGBrU86TQ=;
	h=To:Subject:From:Date:From;
	b=asV6Jrx64AJLN/ZJFguyfiCOEG3TYqPkkD/hKIOjWVYo82aUfQHqyQ3lTEprzSVMn
	 HKd0Z6UPZkqqn7hjLLGnpftxzq6rIGn43KFnUeeDE2XEPUT4We2ow6YevSQiaLH8Ac
	 p6V5w0sVnlmo7MxipTKSth+IRY8ijLOAuDyfkZlKY2mkR8GvnGdOnW3osRsgF6iGnY
	 S+Rvisb8xVrTJOEqIqsRpKqS/V/TT9wAJgjTikwAOZnezR7pkNZ6Uq5AxcKUJU7jTU
	 ptLc8BMPEIqXQHgJP2wUrPhwXoeJhHIcVUcHkNZyzbew6HbYQnGTXUfjI3xRxyNVov
	 MokTDHr8fSjtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A341EEB594A
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077243364.12889.746751520425907167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a09a5da2c73dbe065341570d365bcec4da537e458f01851caf4cda48848337
Date: Wed, 11 Feb 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770772433
