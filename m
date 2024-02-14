Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACB41AADC
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707912497; cv=none; b=GcAXnyEF+HwH/hFuYEexjvBxbu1fuHDsTKfft302UZ87dWrKFJp6evijSMbmfZXQK3mWEBs6Ey32uq/3seHRpWQ0pSJTsAkjNJ6Uo79QcNbtLD2A8ghqv5NsfMBfP+UP8fnNDTlL/8EUPeN1k6dlYEKsgXkxVUcxfvU6n9hr3c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707912497; c=relaxed/simple;
	bh=PnKCW8/PZOGY393zIvmOPKk9n9iEUrAAkPM61XbqHJA=;
	h=To:Subject:From:Message-Id:Date; b=PY013ukDJATYOctKB+72YzC/U4xUxzOmdhSbV3XjUrazVQ34QaaGRkj03pmh0DejrkpTTeVtOYVyOnnstQGJOVzDcoJlN/F8H2YPrTBo5OJNHx3sBhYKE2VHc0QIFry1x5SkWma+FbfBrp0xWJIViuDRTJ6kntRS8y9i3t4MjRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9x4ER7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9x4ER7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C5B0C433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707912496;
	bh=PnKCW8/PZOGY393zIvmOPKk9n9iEUrAAkPM61XbqHJA=;
	h=To:Subject:From:Date:From;
	b=H9x4ER7F6VKoVmY5swmgkTk50pi95/0tsLp4Lk8QuLK65XPaUeis6DHeprsHYrEuy
	 fda2ulTGgeBl30xDmrb+mRFlX7/phpbC7Nh56tL/P3tO+mk6Us5hHDqdSmMdY2BbZH
	 b76Q/U//8BZ5O5ewbmTxot7Jn8usngA+LuxMsgoIsSsP1Z5uFZWhk3iP8nGhqjQ/tl
	 Mx1Ag0RJ0uY4JDa3HmjuJM/7TJL5VJOs1p9MwcX9ERsA0VeZGByCQ6g0uETjSLODoh
	 NLR+mvFfR3BcWaTByCHwVaWP4Nw/JOPJoU3furqcBNrCuarNgkcSv80MOqQ+N+KKtL
	 8HhS+sbUExD1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 616B3C48BC3
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170791249639.31187.3299862316272470315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 748e04c181adc7ccce48c6136f45e03e27417dd09008460433f8861b05516ebe
Date: Wed, 14 Feb 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707912496
