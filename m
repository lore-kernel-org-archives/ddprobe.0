Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653B21F8691
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789018234; cv=none; b=PD0u4lHLsX7/M3yu5O9u834qF1AycVifGS3zMCfXiCg2id8lkAsSwKVEaLu/U/9tj9UATtYFd2CXTWcIXLU5FaAg55JN03BM0XEGXAGq85NNByApceU6Do4lR1TCA7rbvPw/KhlbFM7Aq+SCNHGMAhaTu7GGc7IOW6mdLxw/x6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789018234; c=relaxed/simple;
	bh=O1Ytw+WRDmjj+dB4GZ11g6khxcYnWj7LHy3vnwK6h80=;
	h=To:Subject:From:Message-Id:Date; b=hu519L93wawYwiPURhvqHbOS8VVV7U9UAWy4p4A4UzgF62mQp2qtcQ9z+9OZwainX3PiEFRAB98qmUqwLZQQmZBy3TH3ZuUnaQwvGFl/Dq4X1OkGg1lfQHsIblFZr9YZY3U8abbCUEBbsA16C1jz5yP/emrVsbXDeh2gYX7P+Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5QjwD2G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5QjwD2G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE069C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789018233;
	bh=O1Ytw+WRDmjj+dB4GZ11g6khxcYnWj7LHy3vnwK6h80=;
	h=To:Subject:From:Date:From;
	b=J5QjwD2Gr2e3KNHd5D5nXzC0CTJtfMSOelCtJ1eO/kH8RtrmC6DbB3XKKye8FAV3L
	 SKJ4g+MoccCCN/8BnHoWAbDRThoGxrB4n55KfMQGxZC7HJqIGUZy8Qf3YJcfjVsHXa
	 M3cQSgOdOtmh/1WY7O2gD5RHF8LmGBlBzIhQHA7tdRuNlOYK+ivM22e0HzNO9QxMrV
	 4UtOhqQ23VFrhEs6J+G5CJxVwGS24UnXvwEpY7RIlWy+3tdHUxd4IfwwwBrX+OqoVb
	 ZoHLBFQ2f/qnAcyN5LmBpIpm+Z8NOnoyuLhVt8S0mH8VAeYl5woBgKjgu9kXxGRSQf
	 Zf59HQKJLoQHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC52C79FB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178901823368.12013.10072746883177564640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa4e781df314764d2f3329ae427c09eb65b97b8e9b17751d1fd46d39f6dc7a72
Date: Thu, 10 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789018233
