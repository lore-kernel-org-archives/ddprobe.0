Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB8C2CCB7
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 16:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717172663; cv=none; b=o4u+uZzI+KlVYFpvfATmfwvfmyb5gnxT4ikcncACinUhtDjz4C994zKnuCZw/JFoU6Uh+QaEvqUDaHeUZp4Yk2wkwoGnJdmyLhVeO7rkVM/qDQjYqs2a6+ZCUNmL/8lKsWNljWvxUC2rKDUEo+X4kfhYfmDS5d+rtpFdYs+pRYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717172663; c=relaxed/simple;
	bh=irMWEknk137rrN4DEh5Vz+C4nsJbKzLlpk5ZuC3FSU4=;
	h=To:Subject:From:Message-Id:Date; b=NyE1m1na/tfXNFI2jOWPgVW26+2SRxeullCyZpPWXVp70XiVqaEh22cENwDZlufW2MLKXaPis6yt2J7Nuo6vGu1Di9t/lr7gA+luDtKmYxSDFhbwcc2kqsh3p5To9urb2dl499O2pyk1uQiCQnsecIJ0rACHHAuMbqOEpT376gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBRTASyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBRTASyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D10C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 16:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717172662;
	bh=irMWEknk137rrN4DEh5Vz+C4nsJbKzLlpk5ZuC3FSU4=;
	h=To:Subject:From:Date:From;
	b=tBRTASyXDWmxAbvSfeI+UB4PM3ZPWXaNDUWQ973u4opcM0pGA3+bmIq4YrdE2vsWD
	 WEW/n+3ZEbCoYREEAUsHGK25QvBSDMBn7hxXMg6W3Ix7gDyhsxCrThaI9gO41oydt1
	 MmQWvNUPliJ7qofEBmd7zU6NvuXRqdCxaWoufa0SP59DDgIfflH0TgkOYUA/D7LIWD
	 3GTWBXxCLPhvCQKEiQsqjNUq2YJIw0TBSPa70iY1x1bDPl+rMH8YWNB5v01I1HyO5D
	 MyxpXA3bK3Y77YVOwQkdqV1g7oIlzvH+4yo0uS+MN0t2fY2KqCTdntGLbxdoixO+lW
	 Z8xJUTbpoTyCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDA44C25B7E
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 16:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171717266283.3974.12729792817866583648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eddb8ecc3f9d1a7be75f7bb3ca15ad997cd50854817e339919fdf66b8b441314
Date: Fri, 31 May 2024 16:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717172662
