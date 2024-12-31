Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4B92114
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735643154; cv=none; b=JOivPL0jp+X482D1JfXrC9rueV5M4pS7Euqg0aqII683vopZKzJognDdDo/0PfJBiwFiFzPq3fSlOZ9qAihJ9G/86qXnlL2YrptWE6MSWd7SCIgIW1B03Y3TYIgC4FGPLD6O/EnYL6LXzecitcByElz6U4xPmTaPc6RUYV2E0CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735643154; c=relaxed/simple;
	bh=3HDdn6JMhJLvl16syszYgXl177nbaodme1L8Nsq17jE=;
	h=To:Subject:From:Message-Id:Date; b=NVbPqBMbeKaCxMSJ1yZSZARsGxABalXFFbJqBqPsDBIZU4y/xYhgP1NchrHf28UYcqyJeP8DzL8O0CJ8OrgTcZFWqLtArqSygCjugfft0NvAfT0/DUm7Y5dOD2OtttApOtpztjl54xGx/0soZxlnX5bEnURNFj8pWPmnSOKOTgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTwaCU9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTwaCU9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8CAC4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735643153;
	bh=3HDdn6JMhJLvl16syszYgXl177nbaodme1L8Nsq17jE=;
	h=To:Subject:From:Date:From;
	b=mTwaCU9C7SzLVXjvqfhvPCIC8qe38rZeVjpwLGIbv7mH+SZ1nvy+NSzvvEfvjs9Z6
	 832W8e2zqmW7H25CYk2vWOqa5oHtVbYDFTBZPovfq5GU46EN3zFkawBXNVGz3UwLpN
	 Dx/Og/2FAQRIATHdrP7E4he9xSwAWq50H1a1rjVbJZ3gUhWlhCpfa7yRhg6elv303P
	 NNaFycqomxWJvY+4hXDJLjmBFmJ6zhjDWhAlsXxxQPzxeseHEsa7ue7DxShpBwc/J6
	 RXZtnxaNCd/pRRcycLbjxuTo4EX6f0B5TLoOIQ3C/36Q8DWMGH4RGscGw3vxedB6h9
	 VNm8aTPO6K4FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A193E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173564315359.30248.11697463628702443450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f9ac7b97490cb3ae854da4032cc5d95f1364d00fdf82463d9d11cf46f82ad6
Date: Tue, 31 Dec 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735643153
