Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179AB43E9C6
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778519434; cv=none; b=eiG8TbnpnaViwmm59PMHyLiyM36mR6tGI4dWSwbSHKOMXRQjG9j+z4f/YB5zIuolqDbWV4HCLI6LQu3QYL08iUehh4AoaQn9EdL66J9VPJs4dUld2qj8behI2VaSojsqNz3B0T57Xq8V2M89CeUrdXdK32zIbdtWWQhsHdbLtzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778519434; c=relaxed/simple;
	bh=LD70huK+ubwmHUg6ZSARnIMB4WoYrBjCHj0EIVd+OlU=;
	h=To:Subject:From:Message-Id:Date; b=PFhOXjHMgOUvwKm6mrI9ypz6kzkiWRLGJi6PyL7CmBjcGmEThD16yiblz+09tqw2h946dq0Oj2zatN4hcdI4qWeLmJdF+tK6yPgNV8YRn4ni9mInwUrB4J1Uy2RAjL8hz24hyT4CNpQHooYaICiGlRbii1JE/JxQLzAHWf+b3I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPWUHX3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPWUHX3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05BFC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778519433;
	bh=LD70huK+ubwmHUg6ZSARnIMB4WoYrBjCHj0EIVd+OlU=;
	h=To:Subject:From:Date:From;
	b=vPWUHX3wU6ch28K/ATDMV3vIuXjnHR2SFxGeB9Ny+77mNFbFds+TMWYsWb1swQ+rA
	 ejQAgN36nPsz5HnCSTZR8dHYcao50Zo4dOvDEH4zP/DFND0l6mnqn+CPY7u+D/7jQ5
	 eYCp4/Pi/TYRlksXIsIUJF2wlTCJ/98CUBheAHMz/M0sWmYMGyimn1pZBhUlt3zPFD
	 wAEOXL0G+EdzHnWp4R3QrEph/MnHHt3I6MJyu5yWwaNCjRORSigYmf5JzP7S4SD5gU
	 eDcf8YeX07sjf5jGDZHgRCBLKEDlwDarv18bujR3LtCH9IE+m0nZevOH2z+mQHABd9
	 tubW+irqDyGqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B050ACD4840
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177851943371.29072.1671814814790115719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e98e962c6ec16882112260eec886f4a3f4066d65ad5f839cdf0c5a1d11b6a55
Date: Mon, 11 May 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778519433
