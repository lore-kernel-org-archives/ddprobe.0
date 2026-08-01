Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610ED30E0D5
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785562834; cv=none; b=kxEmNNpx0gpU/Vsmyku9eOrbGQMN8TIA50MLw1Kari3Nt/yW1PF0Os42ONCv/tKa+bWhXBuAzky3P/KB8tZaADi+9gRAsWA6S3Oa/lYK5pbI8KAmH2JXvJU0/M2J3/5Itc5vb1jrfrhiBW/WxxsSCZpdWUYzriLWouN5nWuoYFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785562834; c=relaxed/simple;
	bh=6I1a2yZ81s4Cizc+eQMxuZvE7USUQbs5VM0THQFpwpg=;
	h=To:Subject:From:Message-Id:Date; b=IQTYuMGtGdfY0/fktIfGt3ruM+aetNmslgAe32MPI41cljpSX2JkaWOrbsZXQ9Se1PO0sGilxP42f/j0hN0aVwlDAHy1q76s6t6opwgQ27d8CzX0r+SKSCAK7bb6LMg1gWvKh3XmJqneSe279ECAVhbHbBX+tlBjVcIC1iJBZrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ogj0BeXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ogj0BeXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C44C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785562833;
	bh=6I1a2yZ81s4Cizc+eQMxuZvE7USUQbs5VM0THQFpwpg=;
	h=To:Subject:From:Date:From;
	b=Ogj0BeXZhs3d7xaHO2mXSmERLfXpX27HmpwzhKrNdH+4005Ie//2ZK4TDBo3G3ETh
	 8WvQ0PxcPSACkFJK+CyoQ7vLiHd79SGP3lM+2LhR2tu6kNhev+7YV281Wz1sCCsU5B
	 vRB10fT8K2JSDtH1yQ3tE037M1I1aqbzKr1Mdo61vRCagDqdI0chg+mG5J4pM4Wt11
	 lAoJ73WkneI5MBOSx3bYlszqKXtQLq8wkZYKy4Q//RDQ+f6eM779e4xAx1443fRpN+
	 VJJ2FILCXZn+i+dmIp/YJ5nfG2P6We9UN1MVZ3/NqA+Pq0q072b5/O9nrFMLyEd4mm
	 LDK3pVez42NXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB44EC54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178556283368.28659.15791115424008438140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b6dfb58615259a91f321f31642661e4bf786c473007300052481e89a17d9e9
Date: Sat, 01 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785562833
