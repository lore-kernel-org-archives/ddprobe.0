Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1796815218A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 14:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720706843; cv=none; b=KI/ohnKZjdAyynKySaJZPJPXD9qcisYy7GsgSko3582x0gz1UextzAuOox3KmQ18Mb7TyDnw8g6bms65hyvSMxxOUWvYKJ54lUQ5V4hq3yGVTvSHNdjye8GKti6FpqSL9yj/uv/+SQlQFYNmyLEk24ItiGqUFe2YWxIp1ut6Ifk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720706843; c=relaxed/simple;
	bh=WLMyeIxstsuupNTv4v5eftFw2471ra4MV4JP9uMiYLo=;
	h=To:Subject:From:Message-Id:Date; b=LEIwra5p7ao0QS3PX8YisGh+9MABjwd2SzzLr0RXnNT2+KveVOOca7IVJ8hAH61crsk0hNBiQgrzRX8TFRYVbUnKYFzgaVyjma8uRRFtU7RIo8AozBtLdbdGP8oqNQVc+kQ4Q3VNy8p6IDAC85YqRAMhdDhzC9/KycC3tesRcac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbKz6pJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbKz6pJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E07F0C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 14:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720706842;
	bh=WLMyeIxstsuupNTv4v5eftFw2471ra4MV4JP9uMiYLo=;
	h=To:Subject:From:Date:From;
	b=tbKz6pJnCS2C039A8FG/bBL2IQBCykzGLQASq5YiD2U1wnWjmhV+LgQQt3BLqGtDX
	 ysoGEMC4v3cpsGOWRpcPKCz0douOoeqq7V7+ZFMcUXXaVFfl73zJXn8XoMhC7OHdIr
	 hNNKt5cwdm0F3Io8EML0xwFl634CsKX5HIk2Negg2pA8ifw/ttp15mg5iuquz3y6xC
	 I/sOQAb0r2NzcEzVjBZ1XSt6o/DQOA9BhWrssWMqcjS7rJGRtjulB6SbN2TPq62IPw
	 TS/MBcRRajWhuvHelwZROOQZPbyp99cqLMeAnm6N1yhSTmh2AOd38MRyHIqiCQ1tV0
	 X598hk7CjajDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C113DC3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 14:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172070684278.28978.1938707137668250800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5146d8a989202798a72079c6ee797973cdc28f615cbd2ab3378e4c626f9a4299
Date: Thu, 11 Jul 2024 14:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720706842
