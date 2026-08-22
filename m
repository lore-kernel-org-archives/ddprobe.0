Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B09306764
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787442634; cv=none; b=HQ3DDIHka232zSmOqefaCTt8BL35cvpOwPXgM5HuFqtP/3yjlp+FhInlVreeI838y3Ld36IQ5ibR4NVwzdx1JiZX0If+6xtk//YQFL9F0YNsiInvn8nGkkZI+dLAaXKrsJ9NQRSSAhFWmjfP6LoiTsWfS0TyfwNA/6gjihZAI00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787442634; c=relaxed/simple;
	bh=UCaftbqb+ZJejeJfGyIwamhapbvyW2BijjA3wOq5nck=;
	h=To:Subject:From:Message-Id:Date; b=JOAVbcPm7bRi1sdIHyH7pG32B06EaJTQdHFU7w/b3DIw/xoczsy+io7JYOPjZ6zDFzQJuDIBLBwX6FrWyIdwLWoBRZJAFNc2CvqUnuCmHuvdr53eHttJe47GaUD4bSFphHYiqzX+/IcPLpATCQtQXPD1Kas6RFdmrOXN1mgC5p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBNfhEs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBNfhEs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54A9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787442633;
	bh=UCaftbqb+ZJejeJfGyIwamhapbvyW2BijjA3wOq5nck=;
	h=To:Subject:From:Date:From;
	b=ZBNfhEs21qiqyW/msA9sgAihpQB+NCPt3OQ2nTwFA6Klo+wUrrklgdfgK2iRxMoBf
	 izsgs9iD/1KRZBOZHDgN0GahD4jTyDYMZtWQu5cbj/ChigRmVGKSZoDrdlsLjvzy/x
	 jVZzaiMvm1yGkS7iiVxsPjG7JX1YJkUDSPs9ykDiTJD3FIQ1pAoo4tb5urfbG32F/5
	 oqv+vkZXhAzFlSPTGe5BQUAAknatb1hdTzqIljVkhIgktDzFIdSPzTvZGFYWrJ35R1
	 +miswvdFsqD0A2gJ+Q26HwgCnwca+hWvKKSWYdLLm5eAp+uI70wSJ2lulhCc3jFwqi
	 k9ShvIA5q71Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACD0C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744263369.28091.4124816844928385065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd6b813fadb0d83eee4977fe7c84595ef85cbc3bc8d73e6912e8ba1f7c4ddf7
Date: Sat, 22 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787442633
