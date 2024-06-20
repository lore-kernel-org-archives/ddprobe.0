Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E79218E
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718842163; cv=none; b=KVTHF4aGSWAL3fzjpwUcsXmtgsMcPoXucySDtFt/bt4gHnfoX0EHGMNvCNXmDFjdft0FwSQLCiHwlPR7HNkEAfxdMxDmq29nGbC7GKh/Qx7TKj4N8JZU2JMvdI0fMAx0ADjVdvgSA9j1Dyy+Xcl1+2Hs2hx6J9hIaRX0JYaWaiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718842163; c=relaxed/simple;
	bh=22MioocC0CFiXhGtkt1icChYyjxxV7FdF9GzqLcCm2s=;
	h=To:Subject:From:Message-Id:Date; b=t4t+xiOh1uJyAcOVKkchTTXtMT2JpzYJKQkOVT/Q90qUIimUDLtiiP+7ITxbozZ9VjdFAxKLU5nVfx4BzKYHNPYM58oNH6CDZvSKqfQFXCiOKYKXeYN4fMo4s5WO2d7A6b+E+O49MOxMBx4DtYxVGbpeI3xwpVMoDFFdLeYHWiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHuiYMm3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHuiYMm3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6981C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718842162;
	bh=22MioocC0CFiXhGtkt1icChYyjxxV7FdF9GzqLcCm2s=;
	h=To:Subject:From:Date:From;
	b=RHuiYMm3W6pliND1DK26b9ikMDvIj1B3D4IH1Gw0EmQXDAGkEZJmkK88K7IORwUpk
	 AgSpoFRZ13DzNoqMFtZTLddhd/Q04MW3ol+tfOguA/o+oqC0vTju4XoZmsIN53bX3h
	 xRzXDw+LZiZ2mZuoQxN3q2uWzuRhCv9lgQp4Tmbp/rJAm5uZoBbcnBAYDGmexN5WDe
	 KvCcgz6zd6S+j2ikB8Q98z7uofN6UUGlRRfMlXAqC3+LJJp0TGPt0RB+YJo4mL9151
	 aLMxyjmifUX4dbGtLd1ls9c5n7R6cfyZCj36LFuMX6OSK5nwaxI6GOiwoRz2lFFp+k
	 LpEn17StwyhRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A7AC27C53
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171884216278.30097.11106883525278643101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a8717f87f9ca9bbe3158a1e54e13247802323cf88bc3f29042b2527e35aff32
Date: Thu, 20 Jun 2024 00:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718842162
