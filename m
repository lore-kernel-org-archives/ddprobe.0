Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4465174418
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728764754; cv=none; b=GyioqDkoPVPgTdtcTIn8ish+uJlHYWttT+vGgwzWKxNArCjFNjsx9QWnVz21MA2a/zoSpIMXPjFGg+TTe1JZtmRonJpXeZxKd00KO37XB/HA1JDC59KwqFTPfDH0dmVeJSz22uoE75QpKU8cuUsieusa+39e50anoBiGm6Asr5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728764754; c=relaxed/simple;
	bh=971dtxyxrP2Qc+a3iXHLKi8sKE9h0/w9oyYhyyD9qE0=;
	h=To:Subject:From:Message-Id:Date; b=O2fPlcBnM7FtkUdNMYToFwiKUhmkibWnwA6w34uHMHpZglnNJ+1cRp23eMIfxXvEy5Ln6TUF1IYWMvY15MvNNfzn3w1nIVkvhvt8d3gBGw64izCP4aWpJGfHyIoZPS1DwsRXepLb9MA0NEuZFwdF0TNRXogZznmXVkcgbrWU2+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4+1BuMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4+1BuMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A648EC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728764753;
	bh=971dtxyxrP2Qc+a3iXHLKi8sKE9h0/w9oyYhyyD9qE0=;
	h=To:Subject:From:Date:From;
	b=j4+1BuMj5ckcGXeSQnTpFAKr/uum7Q+xoecXEIHAzT5oIN11gAauwcv7p2+9UZ8Na
	 G74yd8l3BKJp07aTvlrf8znHpW4xhk+uPx8QrgdPbL3m0LPEhO8VjoUzxfWTS/1qeI
	 InWMyX27rrJRuTEmozoJn7KaMtNVX4wrmygpP9cb8ug0me7kyNFVpzL4kBO7goK/rG
	 GBFsbRFzZCuqQsTJ2UDHUxYeNE17GfpYUir8UJT3bcKsLSN7RClKCmMn9o1X7wyOdo
	 WBea61CFOBMJNlqGqe7JUf1Qlo/Qo/qQT+ZWECgsbvaj0LM5lI5nBx86LFvabXZCSb
	 2qJNyztdo0PTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90007CF2578
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172876475358.19022.12658369695844896795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5774135d2643af2b322015ce56c53c35a588461013c76505937253766c4e0d4d
Date: Sat, 12 Oct 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728764753
