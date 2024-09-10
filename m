Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C94D335A7
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725953154; cv=none; b=CnzUOj0VMFxKjYDU7l2HoIs3gX2Riga862GdkfaCtJYTha+I34G6vrJCftyE5bqwDJBgDi5mNsq1AL+lQYaLMS5on8kFT05fW0OlwZhObtXowqZW/syRpXw6iMQ1JHLYDYClqWqxD0+fq8nbvDEigDgzg/EjYJpLXxsTDvArsmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725953154; c=relaxed/simple;
	bh=2iw1WJzqJtpLFu5Bx28boJ3sq0L3mHCc44NUDtYPuAQ=;
	h=To:Subject:From:Message-Id:Date; b=X7YtteyCDZbtLGVtcRyfMjgiuo2O++5UnU17DSWui7//MkBIQPNMvZ39Z92/SkqGIy668KoBSPkWmE/FTFz1cg2QP13BwjfKLc88BaX7fn6nX0neYRLp/CUEG41dmItDeR+Y8TAL3ePcuuuxA1z/dUE2vVEPNZ9BNR4l38O5ML4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mq12UNh9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mq12UNh9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A442BC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725953153;
	bh=2iw1WJzqJtpLFu5Bx28boJ3sq0L3mHCc44NUDtYPuAQ=;
	h=To:Subject:From:Date:From;
	b=mq12UNh9n77SibIW/jbNuK4PHfivwHxnuCMk72eZZjNjqy/Ri+TjSwQZA92I1oBuq
	 tXkWlHvzoBZYQr0cCB0mUOtCaRVF87s31qnntuSonBTwDGZFRCJkcCiF4GGmJuS8vY
	 iyB70V+1ajTg+RrRtoonPkC717OxI4jwRBxxNnC9VCSA9GvjY50Y9GvsKPUJLnwdci
	 nWLUq8DmGS3n7I6LwmGNI9UKvSVF8gj8vIrRsKQ78zYzXHg0U0ZazMPr0hBNIGY3Bu
	 Pyauz5G5ayX4MetctmNJ02mh+uUYWwdVooVttgF4xeoeA3C0QMmG7tOVXUMhvH7Spl
	 Jql05E1Bn7H8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902F6ECE564
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172595315358.11445.15265467130817207295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a470c1003f60bdde06d9d23fa88728eb53c2313a4d35edbd7595867f943a6ab
Date: Tue, 10 Sep 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725953153
