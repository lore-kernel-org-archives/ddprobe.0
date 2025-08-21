Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B6636CDE1
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755781194; cv=none; b=LSctBPh7f1cDkCpYK0IzzR5CYiaQ6DljAbkWY/3gWe+dmaJWuFICHwBSwl3LQ+quMBeHZmM3T4q70hGzGd83Lzktkcmv++opKjXLXq5nV1vbaO7UVNEuMfIuGdhAr1pIVgxiE8N8PlZ/e0ISPiSVe0sASG91L2pp+hpuvncc7t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755781194; c=relaxed/simple;
	bh=uQ00WCoEMuqGgSWN4Cj9HL/4mr8qs6PIkQqrzSscOeI=;
	h=To:Subject:From:Message-Id:Date; b=uo1g28egP6gigRNsurSjzoNVwmforZfcWviYH7dbvulwEzt/k6d7IESjlAtIHSSYYz+KwJ2KtxW0Hm5/K3catmmfgAs0ksMeWf3V9SMa/RxZTfzTTRhSMlqXRa6J3Ru1BO+nUYfYa0ZpfNpPGMsGv2GxuqWekaeSS3PD6ibgzyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuRNhiiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuRNhiiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4FCC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755781193;
	bh=uQ00WCoEMuqGgSWN4Cj9HL/4mr8qs6PIkQqrzSscOeI=;
	h=To:Subject:From:Date:From;
	b=BuRNhiiUgbTkRl/jP0sejSFHYpJ5AJ8hkQoDh744Svu6iBy8feOUf62/8Qq1eNujH
	 SVPkJZ/41zuPNRCque6LyC9uoWGe5KEgVGmT7ynk2RupMx3XZbCa94WLY5hk2JxXtO
	 B6V7P47J75Uuu+VtPcTINlDAFegixryPK1wlfx+U73zrVM7RGQNXBMlrIhnKDpGDOd
	 FbADVxTOoP3B+Hqi3ke4vgHAeV2xh56+1+5uNPxA3fj73k/NzQpdMAXN3mQ+oPT3bi
	 53iN9xu5e4H/v6ZDwc9DLqnaJLakSRpmzLl+3dlH4zLOCV9qQYvtH92RWXoRYM4Qle
	 xXohEZ2EBElrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90028CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175578119358.6933.1298128368103849787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f1bca72f083e74a32a75ca48ab5e95b6b78931badffbcfb8a9c1a9146af22c
Date: Thu, 21 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755781193
