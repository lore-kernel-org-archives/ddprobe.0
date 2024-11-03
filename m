Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166152572
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730634954; cv=none; b=MZ/xO4ydrdf0n9RLou9vQPhIoibrnfBKW7Z/O69GbO8HOoQDTU/OKl91Q6c7EfGqIXJT5Hfkmvc1anh4vwfHDgs6YqK1AYigPgNwLW5cWIiVlVLJmQyGjG3Vm7SIZ9bf7bR+cbqaEX3wJ85cnK1weDuAjPWPP/Ub5XAdDUM6i6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730634954; c=relaxed/simple;
	bh=gxUsKx+U6f8a6+iVAdfMXUlVxizThCHkAdXXy1VTiqc=;
	h=To:Subject:From:Message-Id:Date; b=ikoXtmVutRTZMyr53cGxkZaq3qQbL58o9g+zPDKJlbEuhuKvYutPfzg0qtRcMRW2ps67Px8dzHLos5p320w7ZZmJZ5JxPOH7Aau4UfkO6V+XabMEvCOBDI2ADVUHDGuOD9o5Ub7EjidXeExn/OhuAMzOJwsXNTq2YidlSSGy2Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mh4Rj0SL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mh4Rj0SL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5B6C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730634953;
	bh=gxUsKx+U6f8a6+iVAdfMXUlVxizThCHkAdXXy1VTiqc=;
	h=To:Subject:From:Date:From;
	b=mh4Rj0SLehAJ/BgRfQt+Kchm3DZGD/+lK60nDw9isRlboJKNe2yngiEpErrsTLjp6
	 +CmEUIsF93coIhVrSFDdLgYiqvkFNs8Eq2KJWeZPiUh4OuF0sCcJR4SK7tHO9a+Ua7
	 RPOGhWlQQVm1QO/csh5vcprzstJ3prBGY3FdR/twDv45Zg27wDYsq2m2KQ8Zfb67QE
	 9EJ5/qGmP5XJ3DVwf5Dcqs4pvgSG0KkjcusMDyYELlnMTQ2ZM7g25Px5r6WpPDLKLl
	 MZpXGdshxm/f+LKHH31rDJv4atBGIaC3zIGW6kd1qSd9LHnUz/dhnrPGz37X2UmT/D
	 7K7k1GslekhfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97970D10C0E
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173063495358.2041.13900760189827370919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f185625a65fa424132d6bc84334c6a3cf69e55a55a3d6fe1c6993f89ea5369
Date: Sun, 03 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730634953
