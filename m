Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4442D28032E
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747244395; cv=none; b=bYSBV78rBdh0Q6H45fbT8W+hzfc9Y+62bE3T8t3lFVirTPcFWi0rjMosNN92GjEmXtnzzjCPBkl8AAYmAV86QwcP8a5aSPkgJz44YqVCk6Y0AdZxh7tYadcgIIMtsQWzkDeaG0Tj1wiwzX5Kd0kEl5u/H9SU4526+1fU3SduvkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747244395; c=relaxed/simple;
	bh=FP8wPYnI+Jj/T5QiTXA/1P/iTe7kd3tpblRPf3q+hSs=;
	h=To:Subject:From:Message-Id:Date; b=TgIKnEYqKJIHlLtIq//UH9WhOyiOWHm8TEGVJpe6TjYQu2moFjCqcU6g4VHEAPb/NE9iG3o7tcgwaWb7mr/mDzoZ0w/YugQiMX7vTm5t2XOcpmoNtGYpfW9pKWanpy0oDbDdrqNzgabrRmR0tZvMmpg1Z4sYAHYd8Vq1e/mjnqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIXiqe/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIXiqe/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20AAC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747244393;
	bh=FP8wPYnI+Jj/T5QiTXA/1P/iTe7kd3tpblRPf3q+hSs=;
	h=To:Subject:From:Date:From;
	b=fIXiqe/ySShrQDMri+jIRh2BEjDyVor8u2J138qgMQTeDlK4vmopfZXz4DYtKjg6f
	 +3IH8fr7LOLMzinQnPyw6qKX+nWwHGZV7fTTrziBe4kSpS0fsRK/0RAHew9JOU2TI/
	 UuRr+1l8tCZlKJ5giteqV72K+HgBnZQnMQzbKLsocNOOEulmwjJKapPVbXHn5EfjkJ
	 schdL+TVfLFr5yh4GLbRPcctEi721SJZmttZ5Xh5fWNe1omMgh02FIPmvdtyPyJThl
	 6HWipRlKn/ec0zF2Qdrmcvc6NajcsiL8gZPRZTuEPgbyeY80oPB/NwRTx7uBP6Fx6Y
	 fl0GJLniNhwtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E575C3ABDD
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724439357.1910.17998410502366073580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b0125c9591c58864577e9fe981cf7aeaad59b408b96dd7bf4bcaf34c3ea4477
Date: Wed, 14 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747244393
