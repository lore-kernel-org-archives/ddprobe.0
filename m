Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FC91F1534
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786687234; cv=none; b=ccH7OTXMMiACCf+0h+8Phx20bOG78ieDDsCEVseFiD2Jc429b1Crd69HPY4TncrE8PRaj7GT2xUt6VptJEHE/PBj+7L7M5F8j1uNs0HVewsaLrIbsGs9MCT8NHhXptP/19U/8acaZl39XXuQZBahg7SF+bs/mLCuq3kFdWZJXes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786687234; c=relaxed/simple;
	bh=Q7KS+hfFrN40m9KqrdxD687P5Uq5hmt4hrrykr3cWPE=;
	h=To:Subject:From:Message-Id:Date; b=TvwsoL52yPsnrISL5muw7ePzplMbAdUI1qowrMul14RVZgEwGrytjaGJF0Sx4RUDc0hOZSxriucQw9a5ivRCrdjJnsKth9q1s8KFCOw+9HqKXRXbl+8Ptl/MwEKOPhS4qsGX44ZELbE9FbjwQxo8bOrv8pvn1eFxn52f37E0KM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOUOYMf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOUOYMf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD328C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786687233;
	bh=Q7KS+hfFrN40m9KqrdxD687P5Uq5hmt4hrrykr3cWPE=;
	h=To:Subject:From:Date:From;
	b=mOUOYMf5N3WUvbahTDaNWcJbKH8As4R6wrIXz3yOCdA6m5rSvltqEC1qfHIYFfNMp
	 IZlYUbG6pcBKo1cTISwqQ9gFnTwyfB/UopQxaqObW0y+24RcmKVRFAZjKPAj1kUko9
	 z81JImeL071Uzt9FhgPC77w4QCBJkGsmK5Rw+cOCvA1E97N6/SYbNdprQJB98jcCy8
	 ev7es2SYEBy1ArrSR/RqXcwLA10xsWDu+OVLU7zek9y18IU5ykBOGMrMoklgKle6jX
	 8n07cjno9Gqc370pcQNngLhVyHZ0ZCd6XuohQLgTkMUIT02OfHoNbZQ4JiyT5xOLSk
	 GSbG4vYfeZMVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A84C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668723368.32231.17011341942974425047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f8a4229a9b3433fa1931d3c03a90e586b0d72e292d5e92585c6375c44b1779
Date: Fri, 14 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786687233
