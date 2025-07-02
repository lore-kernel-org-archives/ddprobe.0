Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322FE2367D3
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751455794; cv=none; b=rrKp23GUCEg1weI2asVS3vRv8XXGnISVIzEEVe791/kCaKDjT+3orCrzcRynZPyEmX54aAk2osMK5byPAr8hdcYIXwdUuPDV7dhClH+DOrXohkpvkbXxK7lP/5ZPfp/Mlrbe2lab2eVqfcZ+SWhTwpJZyd/20bgtrQsrHo8Pt2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751455794; c=relaxed/simple;
	bh=a/HtG8dtQkUdbUmqvtIiFTRGUo/EeSYO08mU/Z9WndI=;
	h=To:Subject:From:Message-Id:Date; b=UwiUFgzF4CA+21y+IN2qa/SIWoEoDX1LGdwo2TIbW4BWMtV9CdGCjGaSYW/AQAKiaOKmDth/hZwaSlR9VMxrhW0TVhgVH0kPDkVNTNk2FluOpNjwIk+nmPzS6R/S8Ci2xV8Ffc9qOck6qFkPiNUcUnMHjkkqEEWq3bdv9kKuKis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MB3UPG5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MB3UPG5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07BCC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751455793;
	bh=a/HtG8dtQkUdbUmqvtIiFTRGUo/EeSYO08mU/Z9WndI=;
	h=To:Subject:From:Date:From;
	b=MB3UPG5jOWEUPPGaNBXoN0d6nj3NyJlk/CP7x+IwLQmFaNkc0+zvOYV/P/ATw8VOn
	 BJ8bFheZlq2fT5ZbnGhlj4rTd0xj7WVlfDO1gFYnbiTYG5MzojsUtKXFqjwBW2cZm8
	 je23EVXoFIPXEFYwiZAKW58wQXlAQn4QeLWvR48UhWFfGB9DPOP50/b5rAT1+cz5As
	 y2oYbybKVzZwIwluyQmbCW7q6Gnis0KKM1ZqPOR6EO1CUiWBOzl/SKVh5UFWd/T8H8
	 4JBfPqNtajPM97Fi5HWyvkpqDv4aX22gWp8AhXH8Bd5AdbvkOq+CI5qCPhOFKVdn/W
	 lWExtfF09o0fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E53FC8303F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145579357.14352.8594990301154080665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af965b9cd07351d69e03a0515bd5363f10da6886de05c8f724a9429f2e6d19c
Date: Wed, 02 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751455793
