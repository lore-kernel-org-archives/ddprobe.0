Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DE028A1DD
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753786794; cv=none; b=sTLwlPs/X4UeOTrjzrz3umS/aBr9pTbVPd6NYxn5X9KFECVDNFCQKgrwITr0X7XmQ0p7IlDHFblDjudNJYzzGEIugYvcDvgcTAB941o10u6jjzsc+A0/1mNSXdt5FzCDyle9D5B7rJRflkh7+hP5X6rDshax4PRubBSuKl/jFJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753786794; c=relaxed/simple;
	bh=qsfD+Qs1GZiLMHdYsAvmxltBnEkMiOsosrTRX3sgQnw=;
	h=To:Subject:From:Message-Id:Date; b=mN06shpXqqm+uflGz7BYD/vfp549FMOeNb+WNHlNtd7A4YgQHfAHpGC4TDYQWC6HLIdQBAVGNUej/E88OUmkHjxNA2Um5kiwp3rjEt1IxPjir3pdd7c0EMRx9tn5JA+j9qiauLPSRumXnEYgakJS6l90G0znPRuRCKPAcEY5eOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2RmUK46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2RmUK46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C35BC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753786793;
	bh=qsfD+Qs1GZiLMHdYsAvmxltBnEkMiOsosrTRX3sgQnw=;
	h=To:Subject:From:Date:From;
	b=e2RmUK46o/3Ai5U71lAJ0NclvPmZ4Nzqh0eO4k2Nx8f0haLjnPICwJ70XCu8QP1jX
	 3YWd8843VIBcA/1gxwkPwQ34dgltGDTyFY8HhR9nbMP1fmvZ/nTiKwTn5lBlNcsR05
	 a8rLV64Wo42lwsbb/QDD3I08kV2tGVD9r6KJcY5/idJ2DDNwpWiW2HTbgVCijIYsBh
	 f+CEdSF/JJLvo4+XWrVXBNonz3iqOoQpxydL9emj1LaRq3B71ZPFV+/8ESty7wxDxA
	 daQfyA7pwcnvAlvJaFi0uY+1JEzU7f9XBPJh3mMFDQiuYXEBUDokLXUTDMxXJ3qdmo
	 /4ehsCAVnkCJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E59DC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378679357.28660.4728362465491281480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 393e42c905ce264aaf06eda5e0b70593d544830c82cb5a989895b9a4504e6c1d
Date: Tue, 29 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753786793
