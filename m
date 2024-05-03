Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435BF139CF1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 07:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714722743; cv=none; b=JSfP9ORiAmC5NVkYBs/kSJeW1u5rkI2L1OHFbdBWnxhEPmBKo8nsccnh1F4LBdVMwyiCUfHdNHHm4jyS1C8tEOyLf9BogSlgXKm6lxqawidogS3488YnCoDnErDIIdHVMzc/gE2U/nadkDwfRvQFpLlG+ooiu1b2DZC2YI5SfsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714722743; c=relaxed/simple;
	bh=cxFcbb9a6ZXHvlTGg+WuvQna8u23xL8klF80QRAnpwI=;
	h=To:Subject:From:Message-Id:Date; b=qpGuh7L+428EFYQ2iP5wI1DjCzC6Dm1OkoRuJ5a3lSrTjalMo9Ie4ggDgobomNUJxAkO7VzNt8nLt6c4W4weGyeRGRPWAIuDwytQbPuB8BHI3uHwRiV6WJj6akpgv8ztEEnsbgomy9awdeIPRGVvxTCKQ1zlJTjEHTCovqo2Mbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLgIr8/N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLgIr8/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D995AC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714722742;
	bh=cxFcbb9a6ZXHvlTGg+WuvQna8u23xL8klF80QRAnpwI=;
	h=To:Subject:From:Date:From;
	b=eLgIr8/N08iXxvmijjNK7piZm5ZrWbZVJBSt1Jg46bgU8k0bKwcZ2Uz/FOvkFnoJu
	 J7Z81LkZ1T0AUjh7mjgZYwYdd+bEWVLSg1nmB7jD6t2FofbGkKXvoZqzlroq9Dn/3j
	 i234BHLdo5XQVafpwnaU2rKUSR9SxK0VU95SSpHd+f9MWsQNA4GpOjO0UaDphcwsHR
	 t6JvwP7+L3Majeu9e26bBPDgWPyGvmogSCRljtuIqIDecs82YoVq3ACDhOkEoUovmn
	 LGMvFSrTh4EFm1H1Jlu+Tv5Ubb08dyzqaU2n/K3ohVQTcf7tpvBgoAExkYa2ni0jwn
	 phOXWIRxdJWhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C65C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171472274279.15458.11495392761447129475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b97989823fdcafd057c8a03a97d18c017561628b962ada18438d60eda261cf09
Date: Fri, 03 May 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714722742
