Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DDB19CC02
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758494394; cv=none; b=VIq9f8XRu7OWm/sGQM9iCZt5Lgh4l9aP7FKu3xJdFgO9JQmFuEQkDEPZn4u78siB85HqOSUKXCoawQUi0aPAqw4diLE2Dp60N/kGvlSZG2TLwIUKQdtNHxVNjb67yd3mktVcN15RafmTcc2gvNp0n8Z60xWRX+T6wuKBmNZgDtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758494394; c=relaxed/simple;
	bh=Hf2S3KQfU6vFJhm+80F5pDLJLf2G1glOVi5Nt7puxjQ=;
	h=To:Subject:From:Message-Id:Date; b=KJV+X/GmutXgpu54dvocRqiL//QMnzXKi9NX1y4XUdVMbqOw/Lstp2mWrC6caEGUTeEZOcN15JbR7SAwHgsS4zynHAx18ThOIQJ2o7auCqt5A/hUWmbhPheKg78LKjn/mGJwGWvCvZD9NfFvi7vClKGICUXflUv8sb5zh+YQv8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2ueV2bA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2ueV2bA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A857EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758494393;
	bh=Hf2S3KQfU6vFJhm+80F5pDLJLf2G1glOVi5Nt7puxjQ=;
	h=To:Subject:From:Date:From;
	b=g2ueV2bAhVB6IXAbbm8YR0+AV4YN2+QQabb5cfPPI1mdSZAQoA+6umiusCf44qxuA
	 bjaEuRYQvVgVitq8AVeQBLmR52b9DwtH3RfTsiwe2rWhfABF1N+poPa0QoWj4pcjiO
	 E1e/bmZlwx4EKV/juhPxbthEl86hrwbcS6F+3DlnGpM3dF2Ri8+dVCM670nhBqJUI1
	 DtMbzK+0kAw3LZTejZnM4fMc71z4u5iaH9Q2J3iufZKHbDQkhkD1mOh1GOh8fGAHpp
	 zhErbetgBleYTJ2Yt8W1LrUzlTpalF0IpeAw2yR0qClSycQ7zxIkoyp/z1XN8DwXWM
	 Ujyu8FSY2AbLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94838CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849439358.12169.2386238073601783911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7cb104aabed8acf1b9840b1c4c8427d52870ed4c6bc7e4993342a2f785aae24
Date: Sun, 21 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758494393
