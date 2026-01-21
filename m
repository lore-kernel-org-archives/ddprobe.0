Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFF8481241
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768999434; cv=none; b=XiK4vpIgogevOKRF0+i7k7/qMHJopGqdo+ue5HEdBUBCK9lQpfiB5sXGX4WTwHFdEtCS1X7B+6wttezor07CSCIAuFM2jMaH884e7Fr3yVl3ndsjCgABW7Mh9Qzah+cmGKYMCpcKq5hPIMpfaP9P5MXsqTD7hIhnc8bu8TRoFso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768999434; c=relaxed/simple;
	bh=Brt1BbH7iKkiqz8gomtah30mP3PBcL3bCQzH4C6Lhgc=;
	h=To:Subject:From:Message-Id:Date; b=CDXtuC2zCT6/ewFMw5s9m8aK5HN9AgZPr7GUEsNa/8QuhVpb3+V6wTDMB+At7quyxrwAXMbVGeD6ym1Pldpc+wO1Uc2orA9ikuRntj/CfeVsynqGECQ8YN6/ZYRKRQAyQxnD+eP81CpoR+/L88NhPqfFQ083KV9uZ4RZN+kN3Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBcIojiB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBcIojiB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FC5C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768999433;
	bh=Brt1BbH7iKkiqz8gomtah30mP3PBcL3bCQzH4C6Lhgc=;
	h=To:Subject:From:Date:From;
	b=gBcIojiBKoYupgB6jtLfueOVaSV2NAYeBZ/QAbUF/h7ldGvXdodAAuJqFK9btu+yB
	 7MBvm60QMZJq9IEWjeC4znzVpYA58QgWaVlcwfOwLK25gkZ0d0cZRnZLkdZlpLUy5q
	 KbUAgZlHroip3TDK/Qdc9W7nyEOjLyf75ynzmH0sf4qM19kf4AzFG1BV+wop/n0kEg
	 t0UFd7tAKcinAK1xT4TZRzjeWOwYt6hv0/3FEkLCaQ119OEAtxSd3bzRSa8mH22XJG
	 QP84T7hjyBQQaXoAWaYDRXghx+bvthDkDP7EcYQgPNavfv7Zr/OvbkAANFAkUyor81
	 NftMDv7pYOi5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906A7C44526
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176899943358.28981.4538817289147426055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aabd0be78e4db86dc2b4e3e3325603fd4a6546ad671239cfc30666144e52ef0
Date: Wed, 21 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768999433
