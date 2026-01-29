Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AF0346792
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769707434; cv=none; b=AWIOc6WVoK3CfLDztUpuzPNdgQPIg1qtxSBEphX5NKDVxYYFk1VPf8Z17HWWk7qaYTQP80Y1VwfOk5ZaF6N2ptt7lR2cxEhd0qHfU/v9P5wnk+7Yubi9ZlXgL7B4ioBrsUYfSGAUIgLjUp2C3jed12avb94iUbCBGIiY4q86JTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769707434; c=relaxed/simple;
	bh=fD1oS2oztZTzPpaWWafT3/f7WDcKtK3sova/P8OcR5c=;
	h=To:Subject:From:Message-Id:Date; b=hk2//gZ1dlyGJ7IKsWqIqntZHSDD4qwBpJaySol34LlrzahqTH9JlJaEztuXcpHvtASYWl7k/9vrljxF8JwtFxDtJT19DdjQGpJIHgeEECoHUzSicYmHWLIScHPyckk7yqfrwdIrwZNqH+C+/gWDZjyXgNUwAQS/MZmhqcjmrmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIsPvWlA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIsPvWlA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13B4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769707433;
	bh=fD1oS2oztZTzPpaWWafT3/f7WDcKtK3sova/P8OcR5c=;
	h=To:Subject:From:Date:From;
	b=jIsPvWlAzH+A3P5bW0QbhGPj3DacQW5B2Mq0mIY7AQ7Xf+JPkq1SiuAeQLpFb0d7k
	 RISp5ywLPjeI1Newc8d9l0qSflGGmEXYqX4ErQhOVtgdFQ1o4BkHeqauILu0RTOq2H
	 wg0JJ61/lTzq14S8iedMmsvHvQ6BC3G+R+idZKYnV2xY9rUlh5upuOv2zVA98xlm4A
	 fEh5FcrE/1FU0Vfjkecwu7KNQzevjvjTK2T+WfetKhPUPxL3atGWq4IyGb9Pf9bmR3
	 6MKjxxcE0qsryl3ak2e4UvzMBtSN4/lzwneD1/Chfu8pZ66BzBMBF6j2z7BotKMCvm
	 iMLEiKpqZMVDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9180BD61033
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970743358.10564.801975941517661153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca15daeb78e9fdd84e28e8e80a5ffecb274d0e84199d09e80e92345d3c1fb2e0
Date: Thu, 29 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769707433
