Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268FA301483
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755129594; cv=none; b=jhWV5K2E1mvtrA+4YWtRAZUtQirIAC1ZoORkjMPsh20Hq+IsFmbGSiiwZBXodevgpmCYIpsvjqDeCCuvCGvtHcuuOWERhQ1f272HDtNjgf+6pryHg8yU5K6ca0YsiWbJ1VfEKohL24lq6rnyqcqrXxbEezxXxgK6c/vzAOO8lm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755129594; c=relaxed/simple;
	bh=3EqSw/TEJe0bpgXATsBdtgANpmj+c4ofo1eoJjg1YdM=;
	h=To:Subject:From:Message-Id:Date; b=GdQEP82fK7BJ9/YwdTOHu2MzKAEW2pDxMixD0ZxG642AwdvJb85S/K7AB4fXE5KceGv1xChzOv2yh3n8vvSxYik4hog5Q1QP285cqmecSe2xnXCUaIhonTF4N7wQLKzbMeeg3FeH8dOPgcjGuFsUDC0V0kstCktQyhH3v1JTrww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=evuQN5OE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="evuQN5OE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2C4C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755129593;
	bh=3EqSw/TEJe0bpgXATsBdtgANpmj+c4ofo1eoJjg1YdM=;
	h=To:Subject:From:Date:From;
	b=evuQN5OERKVy+I9wAVhkb/WW+Ptj0csrJIdbfAWBH3KfD83e2OUJMJp6H2jcqQAhB
	 pkEHo6eZHqaCvl0Pr9feOseb8lL90ATlf12CBlUo+SddyYnxQTUOBS3Yd067JjX7Rv
	 jo+lv9/0ELGZbhwO5H+RRRA9pvzMnpl/TIxSD5IR+9ha6pI24AsEEBCQ2mXQCgmMQP
	 5Nnfaq3sKvVjZqq2XrH5mdlMoO7GYpcq7iBD/KyZ7Z8lQa1IMFjSPSCk8MNoWptG/y
	 JnX8vtBy1a+RxoPxljgmwqWjTuHSFbQjhDmy6imoAus2nsCp1wq1G2GTL0LIMKZcMt
	 JGodTMCl02Jzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2A9C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175512959357.27376.5097867305890937430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d61f8064adf4a3d5dc024334c90a996e95ff4d47ce33f1a807d2c1a683cac4
Date: Wed, 13 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755129593
