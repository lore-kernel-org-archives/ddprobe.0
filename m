Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371311420A6
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 11:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718276903; cv=none; b=toba2EP6jlNwkci34k1+aHEBsqSUXBgmX/f3Kwp4NX+EYsNI77g2Y7AwY2pTNrw9aR5KgAQSWtgGbzn4PNhV6hSe2IwVGH2ZBZRQzF4906dM5oj+9n+e6nTea/yGCHhuFdGCPpeNgKyPfived9PSxsEaMq2pn9KD6pZV2EIUgHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718276903; c=relaxed/simple;
	bh=QAXTPfMeDpJkCkWe/ex06ybTHl5bw7Pvmp0BPEOUsN8=;
	h=To:Subject:From:Message-Id:Date; b=Kc57vZoqFsxxyiWqmcncoZMeY+dlUn380kM4SCNGmpzweT6/CZ2YcKT55uGetMIwI2ieE86UlLiiD/LvUk4ZsSZ0ZtPADb/VfZKnFfhHH7kWySy+dn03TykTCxubBVGa3FSf/R+MmBEwQQ6mYo5xAGdZI5PjaHSSC8PvWLOEUEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiLz4AuK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiLz4AuK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD2CC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 11:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718276902;
	bh=QAXTPfMeDpJkCkWe/ex06ybTHl5bw7Pvmp0BPEOUsN8=;
	h=To:Subject:From:Date:From;
	b=OiLz4AuK8CDIn91XyXZupvxIHEQuhUGfK+PSLMSiGGKQihB07lwcDzIHuj+rxBvcq
	 guaE7PJgPgdP4f8vabdSc2UZ9nwOS+wd4PeGb0Inke4pa6w0EghoJAcgMKDszCwcHI
	 Fddzfn97HqFyqG1+bL3JWKZn4WpStEvnUDvYBLS4YapUr7LtpqcGchkuWj+ppnBYUn
	 h7JjaE8W2YKUJjN4v/3Yk5ndyi936TO/wouEewREwwDC8Hf93kyyHMV72u02GQOLlC
	 yv+pUW943kOqmFmc6ducOkfhZdbVgg2Qk+yoU/jFi/1x87hBlgt5WM/IH/e6rQx7kx
	 iLGuDVF/GJGFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB40FC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 11:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171827690275.13048.1103520819943147781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b29cd159dbd4c1d31f85574a9b90615c4ae3f3c790bffef548c02035f536f02
Date: Thu, 13 Jun 2024 11:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718276902
