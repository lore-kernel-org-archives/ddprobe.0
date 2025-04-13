Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AF540C03
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744520994; cv=none; b=KGuLF8tYRljQv3TGfieP4nMjCL3oaqahQXNp4Tn1iXv/sPaH7LUmxIbgfx//JKKfPGZys0Ul8uSbmaoObqUXaq1flQ9Mut9jMe1zDk9iiRmut/obWEldPbJV4mtB1eDMWkBwNSmG9TsqiCMjiqY+fZzF8Mgy+BC48ExHJY11nv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744520994; c=relaxed/simple;
	bh=7dk6FpuLfhVpxnH/KR1G7BSQMTiep92v3y49ttOZ6qo=;
	h=To:Subject:From:Message-Id:Date; b=bVCg4Tp5mXYqjjNn7bmEl7y0S8MJo+xRcae7hFruoaCMa+sz3zqkdLwOg/4CKWg8gNOZlR4mmskWBeGXYuZ/5K0any4yUcQK8hjkDYP+CxQH9Hh+Q2xkYaNSg32h5+O8VeJGFj40FXomyVjVu84oHqOd12LslznS/gXddNGyvec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGvlaN5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGvlaN5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F14C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744520993;
	bh=7dk6FpuLfhVpxnH/KR1G7BSQMTiep92v3y49ttOZ6qo=;
	h=To:Subject:From:Date:From;
	b=mGvlaN5GyaunBy/Vfq1wKmByK23lPq6Kz7o3mqwkKxs3sLr7BlySBJ+jfYrpyq3NR
	 0/SN33d/sLfYFMJHnv9sCy6/pnxjy5gpvQuMiRAAcsAV05MEFCqz/DBm+HkITdyzLF
	 ER/hy6DnyalyDMj+q7KiyegmUG/MEnLL60ej/nG/szis5EsleED4UfB7+/zKlzRdlj
	 vYaINAezGNxXhlzLJAwywwisbiVBYIuraigYN5n8/MmYPbPXjotmMJI3AWer97YZGw
	 ajERlym5nXKoYNbeE7jSkdf7HKbxdR3iAZaeZr2Qou4MoQ4SUjpnb5BfJ2fA8dWAVA
	 Sgcx+VV3FtiUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F99DC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174452099358.14199.2397166465865948005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e78ad0ecc1187bcd29de2404e26c4bbf2d4ac444ac0174683141ec55cbbbd679
Date: Sun, 13 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744520993
