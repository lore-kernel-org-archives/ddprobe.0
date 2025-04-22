Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500C21A317D
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745342394; cv=none; b=u/LaarYCRsyrDAAZXr+GJH/od6ZvU18b9j3J0y+C6BAUqmh/zc0952o4PGYustMgpurN9hVmV/F1Z4TqFgQzcMOXuxEPE6iR2aYis4trS8EgML0IDqldaj+vFJwGbTxPmDkRhN3MlahpaMbZDhjaqrwhGFR3wlH3yzngTwvnoBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745342394; c=relaxed/simple;
	bh=wYbaKzNdSUfuV6UFsiVcp5I3aBFM4OslcCnxI/HDmQw=;
	h=To:Subject:From:Message-Id:Date; b=f+L6RuHfomzRuEvEHMHfq4Crls7F/EZqe3c/awdcPqrDQZ7Lo2G0ek4MqDGou5U+r7A7F9f3iWABNpt1jCNwVW2hQ+RB4hdR0gsQq6QS1Yd3if9/9cisSR3i3rSEaWrEpSswBO3kRSVzSXN5hSqLBjBfza8ovC9r4BlEUbaAtus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqhIvUtX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqhIvUtX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFBEC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745342393;
	bh=wYbaKzNdSUfuV6UFsiVcp5I3aBFM4OslcCnxI/HDmQw=;
	h=To:Subject:From:Date:From;
	b=SqhIvUtXDVzRSIZbZqqLGqYhVjcSP+ZuT6+vvh+NceToxg8xn5mh87kyfgwZcRfzT
	 nwFFO+/U4alhEuKk133xLpimJbB+fcIGsw2TQzTVdqQ4m6xZDMxSA/8FOBnOICVewg
	 0ESWmH7Peebic/xy3Cts+/e0L2j8pCoTqsQpp19ViFD+XtKH7RV4ePB08JqzTDQa9F
	 yviFxiTZRxuhrXUOlAOODk1Hyc4OOsDAfmVSQB1kLOp6PrTAyfs+l+h/nzFlD0DjPF
	 iINhagl0jC6mRn6kD2wRzNQVFdkle+CrQdUIacArb7Fee4DnmSOynyTi9LzKL4J3AU
	 iRODvR5TrSovQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B88C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174534239364.23043.6143518349697351077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da6eeece0e87ff787145c73eea233c16a3e585eb5328f4d15b853a7da6539e5
Date: Tue, 22 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745342393
