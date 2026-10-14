Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5920448C8B9
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792019434; cv=none; b=uq7lzlL8136xp+65totQquGYkWuuDvSP8q+NbQCPP2riYPmFy/fqzqY2AKpbJjJFaS9BXip33T/Ha8XekD66+H2E5Vn3NbPT8p1hLFIppllhxJCjks70pmNBsC9xFJJF/bPLog0IvdOyPBB4CwW8F4BIZet61EDyQfhTuysQ6Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792019434; c=relaxed/simple;
	bh=1n9KfIVkJApw7+iqUgErUD6sqf6yrZFPhyHsaB4oChc=;
	h=To:Subject:From:Message-Id:Date; b=kAscVgo28f5M+U1pPpAysa9O7x7hZX7ZoFLBVLumJ1n4L8LI/gcuy5VAKYxWSURovYf6KZsvBfrKLc8DaQla/sdrMXRi2W1Ep0+SM+mhwK8i29+Ykl3GbMVt6k9Dv/68W4MhjoKb0LaAuLVR7LVfqaMYVymdqtqApO/Tx0SpNgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeP8Z13V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeP8Z13V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D197BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792019433;
	bh=1n9KfIVkJApw7+iqUgErUD6sqf6yrZFPhyHsaB4oChc=;
	h=To:Subject:From:Date:From;
	b=JeP8Z13VtKQrBDti6UHswBAnh7HkU/CAume97XrveBPuao/ctsAu7z9Qhg6yAnxyU
	 kP8KjsVpeWI1Hrh9TnNhFuUb1aEEUF0angaj8olbsqNfebeHzqiI7map5zcfdxwc1Y
	 U6jmg6t9m2+d5/eDXXkhCF46/pBWKrUCj5kdbURizhTfOsG4Kqnsg9V4O0OIb46ZD0
	 pD9Gm6pjpSq1tGwL204c7sShAsJVp075grdmDrmONXSRS1DLmRn0+kNUWMkJUsn5Db
	 xwHEMRMM2e0BMHuSJL6ZLIhqr7TOa4bHvzefmXirUzRVjdMz/lCB/Bq6pFIbc+3Lse
	 wy/h28VhTX+ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2A5CC6B2A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179201943369.18837.13182352091883454095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a83cde118d1d5804c89962073f3766843183ab30a66404bf04bb5ea83770cf
Date: Wed, 14 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792019433
