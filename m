Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F166319601
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770969894; cv=none; b=BF25jZQUklPy6iadVF0by+MRH9kAxmH06iLDjECKovZgugMG6zvgHlftJ0merz1Pt1ztRKKbhf83D4hbcwrNF7v5zNBYsWGQ8UEC6jAjG9JDcoXx95ezIm4mwAsr5R+5BLPGtwiaDBYzSLhSj1UMGP+6ILTWwveahdaFR/E1q2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770969894; c=relaxed/simple;
	bh=lzWJuicYOsmT9c6v9aXZvRogV302I9k84MSGmOMxZ5s=;
	h=To:Subject:From:Message-Id:Date; b=u8EISHbNf3EIWc0rCM+Uohysh21SxtbdETxWX7rf1e/hK2to2vzeTc85DoIk4jSc3wufYqsMhTZvM6Ze5ACR2WmwpYRHjudPcmo59VErhGJ5D5u9SpiXOn69/A70qf/yOOmqhxcO3aNuv3V9lHuXIGGoZ7PeoYiO9Rvtm+ZO2fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsQMh+fN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsQMh+fN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE133C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770969893;
	bh=lzWJuicYOsmT9c6v9aXZvRogV302I9k84MSGmOMxZ5s=;
	h=To:Subject:From:Date:From;
	b=nsQMh+fNLMaUxC7GNBdEzCkyyzgW7Xetd+g+Eom6od3e34AFvjYwoSJ7EZKlWI0OC
	 n8ZVXCbwJIMca4UF00WCpfGj52e1rWUTv8UjKWcMTPB6QWEAaGp9l7mO2ihWYp5bsT
	 9IxKqwAkmNB/QnDlqQAPdbFC5otRsoGQ6NGUw5N4Rglw39RiAyEcN7hpIcuj62iFI8
	 nYVTBm57BTPjEWIBuUb05P1+6DeVBE2YRsuHwvPn8h+nj5Clea04x3blYf21iMZKtu
	 UjEgjXIf6vS/Ol0nZa+yOZkenE0Cwn/YhhWvjXOr/p4EGiOARLCcH9DiqfltQxlN2T
	 3IVEL1Mt7NmqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B61EF48DC
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096989360.20356.5459474423906670773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b33ef4e2700501c84f3076db095fa5a6dacb5fea39b2a92f273a75b3401fe9
Date: Fri, 13 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770969893
