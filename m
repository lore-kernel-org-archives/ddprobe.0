Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDE033A9C3
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776139054; cv=none; b=fsK+JmM8ZYND2m01uTuhARKKZ4MiN0Ppg6gKGESKqYP7KPIsHFCKZhUhQ7r2RnhLvk0Xuf5TiExC1JSY0wvJdig1iaZ3xBOO2nB5pua3AMdkDYRmCgKG/RbJcFWHRyvBq2npYrIwD2F0sFfI4sTa7gsgymgklHzgZ8qvwc7pl/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776139054; c=relaxed/simple;
	bh=OPDQD/3bIHwZoHN03XfMne5npua5Mx+1CBs2xtLTl04=;
	h=To:Subject:From:Message-Id:Date; b=sN3AOD2GgzIVeHtC8HELGN2a3NuBiEhu72ZmMtNlJgG0kMyBvgwgKXpmaZIdYK8pCRI2R8N37ac16+gtoFVMB28YUEkT1fxEn4ynjQ/ld5vX905aCvOHnQN7SYUetidBjOj6pAbb0mzE5Z57OBz0TeGasw7cSG7mcu/bv6v2isY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCh8Oybq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCh8Oybq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80A9C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776139053;
	bh=OPDQD/3bIHwZoHN03XfMne5npua5Mx+1CBs2xtLTl04=;
	h=To:Subject:From:Date:From;
	b=bCh8OybqCXyAxjfTZ0AiXmbi+blADlr4kW2BNhM83Fywh0m70bEsnyCO7FmJN9Vql
	 FKKwvxmp7Hse3p+SIpP/5sobOGX/YmSMF2VMpIayQh7XAd4QDjiK3qe7C4f+xxnkOH
	 ak/XNUKriASAJXEBLBs1jqnu71VQBfHMkXNIRpVTo4msPS7RB/HoDsnbPdUzMkS43p
	 IJD1thoz6ZzTcyd4i6hOPrQnOrlnpq/vc7nUt/l69JWW2H4aKTW/ZPuifBItgU4zr8
	 0Xyhq+R1NjC7ETxyGPBm+lMsWisR/NS40V/ZCecc4X/REeN9s+l4kOUhyY7mcfni+p
	 D8+cQj9cScyow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B7BF531EA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613905368.980.3341690216280168584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ee9b4ffc6e4a7eb41e7669e6529667875b261f1f4ed2decbdac280478ab2ee
Date: Tue, 14 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776139053
