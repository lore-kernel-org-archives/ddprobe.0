Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0AF27456
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743007794; cv=none; b=ZPgA+xrNvFzOxz5qsGEsDaE86/wJV11n1BLK3p38ppvdzOdczrGpdn2Ae+sy/T+ZxDogUy/eJXT42EykDRE1yT68GBRy2VWRUVIyRXk6NbcC+t5HvsIloGWEGutRqqdu9oAlLWP9L88F6RPk9PKC3c6/CtNTLHY1J+QkZVeUmlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743007794; c=relaxed/simple;
	bh=q+FI9X8l1QLjjlKEnbFquRvytU2m1E++ecvGJZq14Xo=;
	h=To:Subject:From:Message-Id:Date; b=eA99wMPO3WmAJuzJ9bYhFi4Vz9yjktkqhYpGkkzb93c/nzOd3GX8GlTQ0G3BsvNZdwIgq/OiwIIS+zzPvHtdDoyk4Xk5ZMp5o214hIPKmjOVDOjh/1Cbju7K25F29JrD2KXDYk3kBUUXWbXdwutZG81B1dtCpv+SH/MMAeZUt1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/7DzDTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/7DzDTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE65C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743007793;
	bh=q+FI9X8l1QLjjlKEnbFquRvytU2m1E++ecvGJZq14Xo=;
	h=To:Subject:From:Date:From;
	b=M/7DzDTmWlmt0jeSU4Zy0BMuELgucG70/z7gE1XG+t8VMuPIL/OTiKSmCZmKtFlPP
	 xqu2TWvYyb7DNUMpmrhx3cLBRh0lGQ4VvLBiMFXX8BsQFQxnHuGKYjxwugH1K4xNdG
	 UcxoJKnKtFgIPUNPeVaHD9pbPiANfvsooQC9UwMtNCanNYxGxKYCgC38YnSuclyHsR
	 wRQAze6C/vuhQurtRVMgkWVIL/ZbaJfY9AdvnutGH774/3O0YeC4QoecDEzoPfJ4tz
	 cre5kmQYudlEWvxnTJ111SfwOko3hDGc42gGhkuEFyxFQ9C6NXjPKqcb6TEXwxXOwy
	 CtpKrjflEj60Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D340C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174300779362.16981.12907221450051012115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f706d6010e137d4c84adcf7c48322a8c1f932a42e4a7d0db0d26e83a9f3394
Date: Wed, 26 Mar 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743007793
