Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DA319C54B
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753430394; cv=none; b=XXE1sWtpstvRRltTswNqRxNDAibZ9Fae0aBclWKPPOc0q2ZpFzMDTmcW9MJCD0R4YVTn5JvWH/f6wUYeBCrEU7SQZnsh7/9llN/NuNT6GiAeOo7JYqEtZANJsLZKNi/qkHCodOyHW6AbV8sSBhni+b4Hqw0OA//47fFkcYLXXiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753430394; c=relaxed/simple;
	bh=iotJ+udv5b5+60uW9I53fB59pE1NghDhOdcun0TfTQI=;
	h=To:Subject:From:Message-Id:Date; b=ctVrA+8d5GY1afi4Kab3VDYTlHYiYqk6STHwYpxrB18FWIhfJzhp+ckqeSWhHolsk21+r9wDWq995LekXhIpE9s1T9mA1ifUoV5Ienoai8qXIOxt46cumhCgBHcj3FpLLJuogfm/Drwfyp35TtSNN6afLSyXEjtq/6oJ2GC/YOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4yPXIsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4yPXIsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA83C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753430393;
	bh=iotJ+udv5b5+60uW9I53fB59pE1NghDhOdcun0TfTQI=;
	h=To:Subject:From:Date:From;
	b=e4yPXIsirOoDKOsYHCbG9f9Urv4SHtSOZzTr+t7EYk6ZehNB+JFszDKLZZBDfMor6
	 e4D4nBZz6lxARdbGo0z6C5bcuVaNHCh5N70gGVP9V06AZhzGZclU+P+lJkO0v92Np9
	 z8JRR4R9fh00Jex22MQDoptynsyFbVng9Nl5FRPzLqspS5JnB/QH/bi9ihlzS+bQpf
	 Hej2/u7MJHJiGh/A21EzRcrI52QLHd4ww2MgKR2Fp/YESFVX9mPP3tj137ga0gFY5j
	 pmlqOEfR24NbQQgC+n96PXYXfvBz10ADwlzuXhVGPs8Azl9AxBuAV3q10UQHcW2g8K
	 ySlIAI8HgmapQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8E7C87FCD
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343039357.25946.1657648749307498723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b70944692f91dd8a4ad69d3b7e253b0d5551cfe1632bdc91cc306a47027246
Date: Fri, 25 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753430393
