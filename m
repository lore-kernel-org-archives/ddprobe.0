Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA2C1A682F
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775923654; cv=none; b=sxy+xj88LHmBhlyVm8kB57PScj/0kq7gEl+kAFGTb7mECXV4loMRMu4b/HA0nlueB3y8oFjwdU7p2Sx88K96cqDwo0XTcR7wrGNw5f3yzbkgP049ARSRO8jjGcJfdZEzcMoOEdLZiW7LB8sZIS/SsO+/62RT1ybKm++37lahRUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775923654; c=relaxed/simple;
	bh=8k7V+fwqC9LKYa9jKJcFz7jCRAQvEg8t5nmVhXUGZAc=;
	h=To:Subject:From:Message-Id:Date; b=lPyV/n928YJc5Yjm4WR+k4UIyjsVUitdjdb7A2gKJtoKpEUHGsDExXxK7DRIW/X91tANuoXMx0YIi5/x60w4vzfSO8qSsS5OQJirE0ES/Pnzx/wicV0hB5P1dkmiWpDppyceZ4mKF1D4nrQSA4SmojYx2vkwvJy5g8qcIQYoUws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjbGr9za; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjbGr9za"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6EEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775923653;
	bh=8k7V+fwqC9LKYa9jKJcFz7jCRAQvEg8t5nmVhXUGZAc=;
	h=To:Subject:From:Date:From;
	b=UjbGr9zaOVttKbOpSxJFOpNSe388A1/cl1d+ISqtAyndbUwmOkuuPh0NblXqUjnr1
	 nLQmDbEpkr8UZFv7ete+6k4ywhVZcMTO9f3DtA4lA/pwXfu8L1zYMMjCwCJyN1Ss2n
	 tEY2Vf0t2/q3EFsdz0c+y/Zao6393981YdrtC6c86vy6LNN2vsddXR6FKwnlMaM4dk
	 ewM3jHlzINCpG6NqFOnGWRzq3YBOcDAiV3yReCXZ30jy0ESHqkJ6muSgcw2EyOpAdN
	 X9MasPvBbwWVGY46VFs9u6kVXDzDx3gbD1TBQOUIQ8jGpsaMepZ9fRTAFjhsoHbCS6
	 9wHTWOyWACGZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9970F3ED40
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177592365368.29182.6157114018290273966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4876db438f62d56d80043d69d25eb489f102a9bfeb76ffda0b36b600454efb10
Date: Sat, 11 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775923653
