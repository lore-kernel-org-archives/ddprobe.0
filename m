Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A868F62
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714339343; cv=none; b=pthNUAy/JCn4tS9p71QoJ46CSG0cXeWEC5dgv3VVs3+1aSH1YRGCWDVYV1/UWGabheUkX0BoxlaJ4YSWPrTRYh/lvqHRiyxFZhQK2Y/dCU3G4sAKCzhzQsujIQxHpcwE+RevodulcR4tCeTp0G2Yqj1jsvS/B5o8+IWXUrE2TGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714339343; c=relaxed/simple;
	bh=fiQzOclJSLKXuuAnUYeROdDmTuoW/cloHZtME7xkEIU=;
	h=To:Subject:From:Message-Id:Date; b=svi9263iWo9eNS26DldCKM6nS+YgV5sHw9jmw5xvnQ0sfEiNbTMmGNfXA/fCCUychjkkNMl4fqlOPDJt6IRy1Nqwqz2sQtHA0AfuCXp+seu5f30QJjBVPWba7D8IU1QSIx91DaXPQcvldQPFz3mRcThxzWgZOm1QCuMtDvWUtbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vfa7WWyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vfa7WWyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E7BC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714339342;
	bh=fiQzOclJSLKXuuAnUYeROdDmTuoW/cloHZtME7xkEIU=;
	h=To:Subject:From:Date:From;
	b=Vfa7WWyw3f0gMRCZNeWRqYONOBcZy/0z4fLuifAqS5KAm/RNouFtXOgsn2j2ZxJNC
	 eyDN3BPcQi+7x7eO6W0lxr67svNXzVoG8TajU6YRCjlTrgGWWEK/irHNlqV90sOTS1
	 MiGYXH9tg7V8kNUr8UptI1mNFzXmRnvthnIwB1IBJ1j1pHciUdtGx8epRuzPtNzKgx
	 O8+YOofp6ZjO8Nue/KC79lQFxUzk273Iwy8vl7JSC+recStK453ijkDif2gtaQzjIe
	 OXBYcmoRQC0iGDDi5HusMEsVlwyApGzZ1eF9W32Efh/LFp/Fs/I3K5UkHnGDQV8Jth
	 4sAfDI+XKbgrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BEBC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171433934277.10626.10924145376905893211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aacae5de3395497b6799ef15948d3383350be21311bda9dcd9b9ab4ec3e4f6d
Date: Sun, 28 Apr 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714339342
