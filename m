Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3902D3502A3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779318034; cv=none; b=MMd0SORsprS/dwUq+fCcSQZkRTULUdZZO3ZpPawx+IOhFI+KHCjSiZQQAtPBO5KTRgPpvgGYKekLz5GIhxQRo5dlA/+/UXi5L5soQLxffYbyLER2UEvw5/2RG5VadXFv6pmjin0BJRLkuUsiFyxb+JuCMpIrU+3N1GNVHzoSW6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779318034; c=relaxed/simple;
	bh=6n1LDsq8pBEezRftltx6uS7Mhforah2eO0V7rNBml1Y=;
	h=To:Subject:From:Message-Id:Date; b=l33frqWPqwyCSAFjVqiMQjTZQTdQLq6Pfzs7hdpJw/CHmvrfPKl+VGrPQhqCYVRt5RGvirn7JOZw8B7rgvB5mjjNzDS46XJDs4NHghthN63sRMV1klgafQx4Hl1yc2S5GtIe7iCdQq/YFFulFi2EZlGq2pqZTGVovQnZDB5uyN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3OYe9Uy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3OYe9Uy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFA3C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779318033;
	bh=6n1LDsq8pBEezRftltx6uS7Mhforah2eO0V7rNBml1Y=;
	h=To:Subject:From:Date:From;
	b=D3OYe9Uyl4WySufK/mPwD/KeMhRL9Y1aL0c7exLGkiXrCMFazKjXgnCGr3z32+fmT
	 bwoJkHv7M5N1d7qTe+ps6drkeC6VEF4JUAuJNVDnDIy3roXATuHgWJt4tXX3vAwKc9
	 W2kZQC1IemwsTaPRvad7p7G9AW0tapV6/GA6JE3vzcegmll2tG7ps07unbRVR0OjKo
	 4YBh1SkeORT3FWZMZHQIHLjjR9o8M+aRnO//tq/5IIpxcS0sEJr+uRW8pJQumUV1Zo
	 KeZWpK8GJFzXtuoG75JTf92iKKRzVQskkMf0Kkl0Z0/apIaewAnAG3/riUrVY+9edz
	 YgeuXthwh9Big==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC30CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931803369.14544.308393349115788859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b459b280617eaacf47cf48fc134388f3719a5656732f59ccbf231f3fc6979d
Date: Wed, 20 May 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779318033
