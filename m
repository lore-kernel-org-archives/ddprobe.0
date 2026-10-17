Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC1B02DEA68
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792243834; cv=none; b=TxwP+Nq3djMheKwK7odV4BpricNt8Rjauj5m8WO81HS6uY4hNVoqP9ouHrWgu2cyb7M+fdr2MHLRl5t5Mv6NNU35neYllOP0i8oRnYxQn3W0xGRZosxSRTMzvrPjSYVfwTMceQax+ewL1hNKQcJxPSezcqfYptH8QDqACBHRxUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792243834; c=relaxed/simple;
	bh=L/15PucIs1fp5ErAVT66bjN2fTQA8M3+w+eVvc0d4UE=;
	h=To:Subject:From:Message-Id:Date; b=ceyiKPuHuhLJ78qRlILFucGiv+QT6eTQTieznwrqBe47j2mBdJ9g9JG2lGvG0aj5aZfkoMYYeGDJTSHBxNCH8aXZPa4nRvAOmoU0XZN+U/c5RcYunbQHq9VbF1zNt6gDD6WQqRSHDtnXe2c0ygAK0ZMmV+ZIRkVy3rk//URx4BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZNBQ8AG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZNBQ8AG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3CF3C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792243833;
	bh=L/15PucIs1fp5ErAVT66bjN2fTQA8M3+w+eVvc0d4UE=;
	h=To:Subject:From:Date:From;
	b=YZNBQ8AGtSP3z8WfQ0GsPPu08UF07Ogui1AQUhmZM3G2wL4M085W1+uruoV9z8HUT
	 x5rNvt8aQq+viea/EO8KWYJ9ys+7XQ5lbKkZLvgdXbyS2Q4zE5SfcFrPrIxmoSa3fI
	 xWg0nsy0PTDvIiq6gqbLDXckw9IiJ5iABrNoUM+MYlI98yCoaVIgE83vDr+k1M9FKE
	 kXBya/tVeX+2Ycs7GQkEQescMxwhqu71x44vB/kbJCUlJ2IzeSYpC5VoCrGVm6KZhH
	 at9lNSwQTo7Q9Vz2NvZ0WWvS/HFDIzgQjUjAJIcW0NBKhlkfullwneeuFvVvOtFCjQ
	 6APLePzTnRDRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9DFCCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224383372.25284.16747140366797229529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5287674994d1c59b48d10dba26c2a05b8e02d8da328dcb510664a84d7bbc2a
Date: Sat, 17 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792243833
