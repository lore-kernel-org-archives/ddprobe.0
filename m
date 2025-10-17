Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E2F334689
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760675994; cv=none; b=iOUmglMwDkpMlZL5r36FjtbWTrz27BYyVnHTe6PsKHnAOlIAuGLttn1Xl5T1R+hkNH9GseTo+4WIL6+d2mDSM+iGV/wbVLeSGYcmHmC0mh3LjHhE4nAoLmPCRLH0Q8+w9m7/lNrL/p5IEvY4ske8X7ZY9jIj+BNtDgw++uC7CdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760675994; c=relaxed/simple;
	bh=NGp0HqU/dnWbCYoVCtHnqghxyye8aY1KENSuGj7LobA=;
	h=To:Subject:From:Message-Id:Date; b=bd3dgZeG7B32oNA5Uni0m1D6Za5GcC3sBlncRYgSPqd64maaYDA9MvV4B+ezwBxOmidLr6okBSXJ8U+P16O76c6hMql1FTjBcB3fiXfHPpAnOEtpwrHd01VnU53WHReQ2P3+qEdFLof+M+CLauIG9Jtk+E/uqlNCvN4X9yLAmTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGnqHZa3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGnqHZa3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1740C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760675993;
	bh=NGp0HqU/dnWbCYoVCtHnqghxyye8aY1KENSuGj7LobA=;
	h=To:Subject:From:Date:From;
	b=YGnqHZa3ncElKURTFRGvtj2Bc9DBP5kO2Yo9kFAdrcWfS76MPzpqZTXe2NLa3KE5M
	 uhWiEoPnXentYD5zfmi/qreHV45tOUcc0egSIlZ03z7fdacIti2LjhVzx258tbDHQc
	 oFo0nOesI6iUr+5coBE13mjKaB1+znMs2xv8SIKEckoTcRtE0FSir7b0tXL5JNOwm4
	 tc+gq2NJLIyNLL7jewnUw1lninvVNvpXj88JmVef9u3I781XF9F5BgcE5XJle49n0h
	 NKdcAS9SsG37oAvkJBQ+uFoaiFy+FPzTV/aeXGnHEya6KUSm+l2aiKrbInQj7gwd0W
	 mWW3XBss0IQbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F95ECCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176067599357.664.17321671436732234043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6ef01d1df855c16de21862b63f931890387e4942fe8744a430dac8455a67ca
Date: Fri, 17 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760675993
