Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BE023ABBF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781455594; cv=none; b=bksjBQPogRDOmeVKD817qdW+fIDaAedlboaD4F0YiT9HrivTICIcJaLD9TDZ/kt9avUt9H0swEL127vb1erj7o9EWawmFV+DMs6XU/2NbHaIz/xUBmVJzJsFPC/0UnnYlSFddYs/YO9JHahBZ3a7Rk83kD231L2B11yg2TRgaJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781455594; c=relaxed/simple;
	bh=FFjlGsWyS9ZxoiDEMMeKaW96/tLv2+EUj0N93FPtUxY=;
	h=To:Subject:From:Message-Id:Date; b=CbBlQty6kbIPwmL/uoZ2asT+O5zE0VpCIbIyzUiJ62bm1e8SEylw+ZhmXzHnoMiicBCl5GkTyKG4FZC9yczRD7vSaM+G8RBXXxIs0Ak/q15ZYmJNx/A0xFROJEf1pmtwhSZi5KdA00/Pi57wMgBtgNASOar4EFVvdM7XomV1Inw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxTOSIf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxTOSIf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C540AC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781455593;
	bh=FFjlGsWyS9ZxoiDEMMeKaW96/tLv2+EUj0N93FPtUxY=;
	h=To:Subject:From:Date:From;
	b=qxTOSIf0Xp3ufwbXuCKqf6jKHviKcXo2pXYmUSfWWS8z39Ez4PBLcEx20IH/PT9ZS
	 2KygmmBJLyPjO0AERu8jUaqHjJt3wVYUJ4LjnMi674xESV+W3C6Vyh/B9IIECtNT2k
	 TA3pIZZgO2BExmoR0Q8sgo1NIqtrzAeFSMz3iKDpxDwDIhYVx07cBGJHPQ7DZxWtjD
	 mSsjD1Leo76wJDuR7OffRrlDzX35MOcv0ndwOHLwjJWlcaRixbT/jnd+5Nzzg4iOTH
	 nzgpIOdV3rjyhZDSlsDwpHpXIGfxADIbte8ZyMG+D6jjPyVBwW66RoXQzqvo8DKhl6
	 L1kM0Zregmsvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EE1CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145559368.20960.6159092218402596512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2de2a1e9eea1a48300c4b9dd85817068cfd3e4ad8fd2a6a5af2ff375bc2cfaa
Date: Sun, 14 Jun 2026 16:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781455593
