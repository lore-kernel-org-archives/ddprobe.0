Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D78A14659A
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 16:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718038703; cv=none; b=jCgLZHjATEm4qBTin3Al3J/dp6jCLVrOBvLOTle6JdMV+xAIgn/NEGTH5QzRJVbDHg9xrzhqmRQ+9Q0LYVvsK0cnSAVLvo+1nbe6johBT7QPDLQzZQIds61iDn6S9fa5aBx+vS7583DBtrPG7Sbtu9Io6HpWQ4VDFa6onTXHHVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718038703; c=relaxed/simple;
	bh=KMPLOtbgv+A7UT7JNzA+bn6KzIR3fusLjg/JqhigLhQ=;
	h=To:Subject:From:Message-Id:Date; b=Z+6nMUBIUaHAGXpdESJGqkhzEcmzPjMv1ytaAsZf1z7+6I9u8HaXNRPPVsP11nPEO5rfbWC3KfUiSW17RrJDH0poNJJNys4FiUz/0FwNXJqgfS1BPz6QkHAbBRT4d/goLcccWTXGCO2/ep84X3/xJXkL2325h/0dEGZw05Ws7dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEDpcE7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEDpcE7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EC4C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 16:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718038702;
	bh=KMPLOtbgv+A7UT7JNzA+bn6KzIR3fusLjg/JqhigLhQ=;
	h=To:Subject:From:Date:From;
	b=GEDpcE7ysKuyb+10svVufKncupxb3GvSvod24VIsZlq84J4bSIcqRw843sttc8pK6
	 dazcOzpcXCd8Ojx2Nw6CaHegXZ5pA5lSZ1hjYllNxqtOzhADIjZEnww2tW4HSGqqJC
	 aJTHEy19s4HFA0/F0amB0iWHTR+buAfwya//O2TEkzUSLajzWWaMYJGLRXfohAKKG0
	 lJ/FL7rj+Z3VEBepH9ghq4mGzWvyGVtyQEUhKHPxZKfl8lDmOXvH6dL5ZrW3ljt3tu
	 EKoObqMezd7UJerw8Gy2n6jfXtOMJMo4WEOMvJDAHQDJ/g+xQei6bmUNRWSJd7VKPL
	 vdxmOVd7bESPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0560C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 16:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171803870276.28922.15235997917371033985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc63b220995c9d4f36644419bc4c732596278a5dfa5cf90b05f7cf92962cb37
Date: Mon, 10 Jun 2024 16:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718038702
