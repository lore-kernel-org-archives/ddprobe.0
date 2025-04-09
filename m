Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EE2153BED
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744167594; cv=none; b=s1+x4Bu3iYQJRzNBlUBtO7yx5nY2Jc3viFfiPUhaDq5jdt/eUwreVBlNBtEV3XdRY3lMJMuHFPeu4HvQKarf2M872Jp9+WB6KyfDcmJPp7RkcDRH17r7YUDX97pEEbyQkjjDqouufyhgxvlWqzHhjpc7MJjiZtaaVHKXFZ3Layw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744167594; c=relaxed/simple;
	bh=S5eYp84SGmECvfijNY7nyM/s1FulpinWkoNF/FTkxO4=;
	h=To:Subject:From:Message-Id:Date; b=JAwwx0P50XFUOvBhYT9OGCVC+yq3fSgoQ9bDUdWkfu6ATuOpnqq2+CjwlHaXYUtB79re3vHSxlv/diAd519y6rGpmI7IJ0HToMe2s193oYmAV/fAhwcF/SFDTuWuFXbyxdAN1BGzHCp+t6DvtXerCQFJaO9c98Eyu3sO2h/UN3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGJC/vqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGJC/vqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CADC4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744167593;
	bh=S5eYp84SGmECvfijNY7nyM/s1FulpinWkoNF/FTkxO4=;
	h=To:Subject:From:Date:From;
	b=bGJC/vqdfpeeCwm/+fIcNV752Q6u5maz0FEHwyntcZ69D8ZPhp/SAtka8kxYS6ZDK
	 9NcJEYKmVtNCCm+XTZVtSE6JOe44BPg4kSeFUDsn83Z7SokKozluZhTxyKj0LBOprD
	 O/mzfbFX9dyGLkiwl3mF0IayGbkp9VgLvDN2kiIHo1PzH+jplbsLFhoy8QSqryQp7W
	 v3I74QCLsxJXPKQYXYDws0UlKKTnqIAPXRdCo9duhDCZhinGBrC7OOVGfIpK8NmmmB
	 VobcbtTaO3C6vJYUNAofi+siloJsIcykmECUaqleTD2VUKP05DctUIzKxqof8kmsdY
	 MwS7TDK9zN2Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AB5C36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174416759361.28385.820586811163183362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b3c9034808af6559af61d22eb75dd5d0a1385aff313125e61e0f5e0e04661c
Date: Wed, 09 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744167593
