Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395341401B
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731863154; cv=none; b=eoAmjLtWAqktDCycw3P9eHUGyYmgNnkZMtqsPoYO15YM+BL6DRlkMEBmHrvZ0hFHC26CrJJBUU89YZTtbdXybYbASMuW/2Z7gr/XrH4h7emYBeW6Arao9hdBnE/pAfEYfZCcRS4xbKZFbabK90TP/dc5TBVrgQtaG04ZoPYLPe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731863154; c=relaxed/simple;
	bh=xjMqRUYaqs9R8pESdfBiujxp7mynjFgblSt9NP4vGO4=;
	h=To:Subject:From:Message-Id:Date; b=UOeMMpH2j/ZfFhliE59/I14iHo2dYmAFYO523FTq013D8vutE+6qKWQHa1Ai5SgR0qDPmKpu1PumFmyV37btkIptNzs1Hyge1K+kdjpbApMaYTI7i8AmhKJRGupBF04Wc+XZWCE9G8BJ9qDJw7HMNmMKThYXlSOjUd8EMgtrifc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfo8wyZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfo8wyZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBF4C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731863153;
	bh=xjMqRUYaqs9R8pESdfBiujxp7mynjFgblSt9NP4vGO4=;
	h=To:Subject:From:Date:From;
	b=pfo8wyZQ+YpBCUEkSa8cHtpDYgwTLPNe6hgv8nhcxTL1Omb6UUHiH6lyfGEclsgTh
	 fEsqQrKHYkV3lNbtUtjZ57Z7rEgSvo3cckiT8CaLyJ55qKEO+4TSHN7+IeOV1Y41Q/
	 9uoV71WL37JlR9/L+nSMHAs3Q54k0/tZ9p8JgvPw7+zas3aBvZPRCm9uDrcrMqJyDX
	 a+BR8QDwIgHGWYhuLH5iqRSP0N0oznKzhKFNB2hu6Wwn7Sjt1WQGQNDOMDUuYCYLFY
	 N8BUmD9xse1DcOm47AwfmRlsv2BbH1GutgjiGSq2EdF+HHMiv18xum0cXtEVDUxexw
	 si3uIkGa+Nifg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957E8D10F24
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173186315360.1713.3788569835909905813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4319866bc116f4189b0a4de538b84c78566e979ebd6affd43b4603eed467290
Date: Sun, 17 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731863153
