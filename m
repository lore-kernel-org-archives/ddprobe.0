Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3387D41AAC
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752188394; cv=none; b=qyT1/HSRsa7uRN1ludwMj9GcwKENobduiRH2wZ5mskIcX31N5QUrnc3TbgTJtrJl5VpKBpHgWiSiF/xaQHVbWeZ0ZSoA5x0LFXPUTPOPRMNpCI1bOkDJWvJuP6VhfH2gB+2g5Ts/ooRhwoc2A94cUw8TaBIbB2U0Y2hcHsllwKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752188394; c=relaxed/simple;
	bh=kTS7z1dhQxkgvT/X14mIkZ8XKEvjN0jFc4uHm5gcHMo=;
	h=To:Subject:From:Message-Id:Date; b=T5BOuR6cSRs5TDdSjBK2GCMbXFljjYAJiPKYMlObjfWYt7MnI0xwllbwqXmg1eZPLOm5cEUdfZaEBFmWZ1Hdy4KUPRk24GvbczMpswfU9d+gtt+kzoBtrvQf2U8/E/atBoYTyxL1MhXzubv5t2GVZHS81b3Nrug36IkBnJLyLWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeK9B93G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeK9B93G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A301CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752188393;
	bh=kTS7z1dhQxkgvT/X14mIkZ8XKEvjN0jFc4uHm5gcHMo=;
	h=To:Subject:From:Date:From;
	b=QeK9B93Gb5F3M0whqcPwj4ZMUgJOKb8M2z24bYZtfGWDr08tXbPCYs9RHvJ+8rS3y
	 yPwRHKt8TJ9LuF6Bj3+8Pjm+kqK0naC7cJjUOoXxfkKcZ4EgIMD/UCXhNKU1f6B2Fr
	 uaegI142PMMqPYnJrALb7ftxNRKuia+sGqEkBN7L14+EhakhMMK2XfktPB2na3OUZn
	 jZv8Q2pYMVipJGgEkIasFrUWQjt9+Qw418jdxBIVVhF2bXDNcyR2TB2TWBXurMzUv+
	 E1sB/7/h1KCNnRo+KyoMrT1a0OfsAbi49hQEOW0GphtdBurV27PMRqUB4RMpB9eOjM
	 /I4yjgDmtwQIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ED7C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175218839358.15076.8513946657697636045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f5b9c2d045ab861a6803d7f0bbf46ce24b747914d20d2daea762ce4388bec1d
Date: Thu, 10 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752188393
