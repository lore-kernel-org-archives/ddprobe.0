Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0B214D6F9
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719061343; cv=none; b=OqjFmpR8HGCGwF1Th59almnqc6u4m71rZyXYAsWpM3Gs+P5GjojrO7K47M+tmjzRGCdjoGgYEDoHtSUcRJAUzqyL/b8QjvQzA/OxhXGCc8jt8otT5Rz1DmiXdv2Z3hXKHzQMKhddqH1LOGgZKLCeMDcOlD1cNWi9GE50u5n0+i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719061343; c=relaxed/simple;
	bh=kH0/E2V1zyh2ktK8ylH2d7siMSpRNdqOJ6gmgCRv5uM=;
	h=To:Subject:From:Message-Id:Date; b=lnSFR3r6b7Lr6eNB8Du9k/1TtL85kds03JDAeC0aqbkSIcDcz2MDzKySM1pQDaSUZypMFZISHG9f6sUQIgf9wzdSPlBqDM6hG7JTvA9iQTtzwpskaOyHMzLgJBi9lqSwKYX88U87gjEpGSfklon5R7WvjdLV+QC3RunQ/yX+f7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnDGxEY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnDGxEY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FF2C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719061342;
	bh=kH0/E2V1zyh2ktK8ylH2d7siMSpRNdqOJ6gmgCRv5uM=;
	h=To:Subject:From:Date:From;
	b=hnDGxEY9o0fZKahcAdBv2GRe8vKLUilAowk31P6fFLgSe7Wv0D0Xz/2uT7C8CIq4u
	 DwwalOgHrLcc9t1tgwuh9/fRWGC7W7k534OhWv6ZWdaZNZ+ewNO0OaZFlAtadrEtME
	 /FfrEeNtUGoEs17cuZRCMmmFrkzxqaAR70OqxDvO55YquTLtGjl0hrV3i+3h/cp9gs
	 x2u6R/5+t5g8nx5r7yMAbNrYLz+PkvMHLGT0f8tFEdWPeTjbcBZCmOE+d0d7/VcwDf
	 +2paCrDl0w+EisD0hC0B5VEpovktKdPWIdxiUwO1pfGaYgEAnFInaKDFAOR0w5ZiDg
	 Z9/LQdRSzIsTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7134C27C78
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171906134277.5018.17398013339702034984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed0d52198eb4e4fea17b2f0c56411b3c468d2c6abc59507ccefd7977196d0a6
Date: Sat, 22 Jun 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719061342
