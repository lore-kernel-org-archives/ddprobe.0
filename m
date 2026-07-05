Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0D227CCE0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783280914; cv=none; b=NyEri3lv29cQLRv7qnfPKFuEvb/8ZlWm+tAG80+r2i1ilS5hDVxRn/YVp7mZ1BiVsbxO8BU0R0P+PdxnHd+LmLnM67jL0qClJlsNkNyb8A+RzH8iNoW+pBHcONb7/Tg+RBEazBdWXVBU3hp1qUv2/e1k9+jqBWWQrKoDmfOPc0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783280914; c=relaxed/simple;
	bh=FdIAn4CDpf9HWc0rEd1NVaI0eCYHXJyDRwxwUBTyPlo=;
	h=To:Subject:From:Message-Id:Date; b=ryRoL7IzWfvVo/hHkBxtonEjxPHVgt+uGYUH8mqOyTKjOEE9Zql7oGPFkafKvFTlzpBklqPD3nsSGSzMjL+xeNoBKkhToeGV15gRkyujWqS6+7btWKzmi9G5lQqIdLNdPvPlTa02zT4CGZhsuJxv1raeCM93TfkvK+zhsAh8X6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuD8e47C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuD8e47C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42BBC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783280913;
	bh=FdIAn4CDpf9HWc0rEd1NVaI0eCYHXJyDRwxwUBTyPlo=;
	h=To:Subject:From:Date:From;
	b=JuD8e47CKSvsM1MoPyG51boRVoG8F36zt55vkxGlsWVTmzu4y7CiVzeid56SvjmxV
	 iS7FTkGAVDACYvQoSFDOnKwuuYfOXXm6kVG5gzoPgAfJVWPgYZxe41bFGri2M2EN0v
	 SfOtURQXNSQHBJwJjhqKCj5DAHy0ohWhN+xcAzZO8LW9xfFKCEaYpFXVVTsILM/WUt
	 lmd+9aAdackneeHa0sK+cig3kS+xQIm1tXfme+Mi9Fr0591AZh/EQy5YIfvD90VxR0
	 wngp3qRrN6fCRAzsL7ZcthlxOJDFImWahNYPnQWZ11+ItdSjZDPXXxTFVpji9DvAo+
	 di/kahuILiCog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89DEC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328091368.27586.14388840224154069018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fa11bddb233e0f0b25cd13683a2e281f9d1d25b8d978622c5a57e403b7dc9f5
Date: Sun, 05 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783280913
