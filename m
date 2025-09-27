Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F26F1E4BE
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758977395; cv=none; b=IoSFPn8L3QuBDVWKP4nEvlMLbfHKLo/mp1oInQyL8VQd7+xHGFE9Bg7ImB4rRYu9uMzzR/hYfabsSKTXQTvXEu589K4rfAqQspyDdrnHjoTKiVsjuachJKv1Rh+YE+DDZ7ZNEzl0oim2yNwPL63F7d/CMbwXArAUAv11/mPxacw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758977395; c=relaxed/simple;
	bh=u9TweIuN+kfdWTPX4JFCnabCKWfwLoq0WomfQmyoQJs=;
	h=To:Subject:From:Message-Id:Date; b=a4ael1Wr/tXYQID9SefW1fGTU2Hf9ygl+jaz4Flf+KXhcgQqn7nYsjx1dcQG3Q0qyQkbhfr2NQuShzJarHN/GuRSV3Xy+kmvAlXgAfrCYbF7xgYXylFkhuUB7K+eYf0GOH4fyTpE22kSXCVNSXEWnlB1MqKzZGn8jXQ4htnPlgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trgxU9Da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trgxU9Da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3917C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758977394;
	bh=u9TweIuN+kfdWTPX4JFCnabCKWfwLoq0WomfQmyoQJs=;
	h=To:Subject:From:Date:From;
	b=trgxU9DaEKiRcUKYOGd9JPLuVwZSF5+/ZH5KXurj+LAxo1omO51sU2z8j97aqgED1
	 CGtu1Vx/dt3uJi/0OpANwSMmzLXo2Kt07oet0nbsgc+U9gPTIgvlVp00hv/wUrga0a
	 ck/fnH9tZikxjKovXsaDNP0fZBKPVCofHdmxi+QDCAMKW6YV67SWBeRiTiG/oirjUS
	 EFZ156La69xpo4zimJ01r2EHR5ngJTRJSocvBHHcD18Rd1A+CUE3YbmP5yHMfygx0p
	 baWv3zH9wjsBkk4EkOtTqr4+f2Rr3CgM7OoVGEvfV1tiVGr/lFZL9KLp8p3I07Y3zV
	 NjO+0bKDwAAdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E7CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897739358.20568.11868037334526427020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7129b34f8b95dd929304eadcec583242c867da60cc0e83b0c316e6cefbfa5104
Date: Sat, 27 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758977393
