Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3EC24E4D4
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758461993; cv=none; b=LgQH+oYuqp+Gchn5A8WCvLh66W6Ij9Fk8X7YaRfxVhYxAmK1pPc+xbPuYFI1YtB/l7SIhCQvrwaGNC8vj8O6hs0VL3u1bA2D4d+C34Q/fJ8DfaO4wNk9p+oO1mokIFJKRMBT3zXp0ukMvKggM9YaOVGBDw+za2QC2sfYsQehSH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758461993; c=relaxed/simple;
	bh=9MtttkQUClwQFZ1ZNd6g0q2kGQVbmlgCanEFUdiXnQA=;
	h=To:Subject:From:Message-Id:Date; b=tuRzcYiXSqPgtKA17OHLyf/NbYjkGr/jubzH+s+VUSTpE2SFdFAPgwTx6Oq/f+4G5iCvxbv1xijOd85EUZWLLOyyY7mDVM3x1X8qvLsXHxVa8ehokniczbuVZJrh5nwL3t1hneC6ebEoDNN3Kcbuzd16Y5Tx9IEX02yqLd8PZnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsF5iJvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsF5iJvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A611BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758461993;
	bh=9MtttkQUClwQFZ1ZNd6g0q2kGQVbmlgCanEFUdiXnQA=;
	h=To:Subject:From:Date:From;
	b=TsF5iJvu1mSWsywbr8PkkJHPDEvgwXDh1s5cdlRL8sD2ZFiazh+GwjMsnX61wd9gD
	 5052Bk8MCn84kaTLTcT3A/Tp0eCOaIPmdHW+lxtavtSpQVCky6vOHXz3leZFDKyHkx
	 uPdXm32FQ2kCz5R/NXJCg8Wadp9cPHKrnTkUJU46LwpmmmQmGdx9vF+QvzgvA+jX7O
	 1z912avrEozOcswXyPrlzkwaZ7HPyPYHj+blhiOU4in43q+0IcIH+g463Lm67GmkCD
	 wIv2OmxG1bFXIWDvNfJvPRDqBRHc0OI2Tlz/Zf7H0Q+GsM489/CT4JnYZ/4HbPp87a
	 JA6HiN2hIQOEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92476CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846199357.542.13141911962628709354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85642a534dfc3530379eec34cd610f15301546c87d4a5c0f1d226ae8c89a3de3
Date: Sun, 21 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758461993
