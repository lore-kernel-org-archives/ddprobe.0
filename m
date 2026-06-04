Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AF034D3B0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780607074; cv=none; b=Mm1nTG0lXGJOjXVLfFU4MK22yfL3F+WRyxvzMjeoIYIILIlPlSONjN2Ga2JcmZlAqPSROE9/uKivvdW5WX6KoGAJL9Rb782rY8DAbJVFQIytBWcBgLEKK5b1SD5eFCH8dyV62E289/JFmDShgjO6qYXb8Wyi51FtLCCANI4EvLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780607074; c=relaxed/simple;
	bh=Qn0/Dammkt3qaCzChV3JDLxpDVUY11a+EJlaPn7Mu7U=;
	h=To:Subject:From:Message-Id:Date; b=ibK7b/LxhIFAyKFxddPV9XYtZMMkw2QSLInfm8zNXFfWOKsrCXex7YV0M47h1h4yTgooa/AKdGN/7V8kxptMHAg6V1DJ7Dms345JBtXIQ4J4FahtsDw5HtXUiwvtAXGI7zGO8CilaN5kn13tjWgKYekJAM5z91JMEtstu8DzWlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyd2Oljf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyd2Oljf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB417C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780607073;
	bh=Qn0/Dammkt3qaCzChV3JDLxpDVUY11a+EJlaPn7Mu7U=;
	h=To:Subject:From:Date:From;
	b=kyd2OljfzBCVdu9l+Jx4Xtza+JKYcWw3p7ygR1tpLujDu2bCna7U0jZD7n0Zn0WnZ
	 9HJXNPkYdUvVYwYvzsy9ojJQpbCTcqf5LsLH2wywLRT5YP5IZO85EzI1OBFbm0Qnmx
	 mUiOi0GUPULURsG8OtpEj1viyJI8TuM+cVEEHAN18prSUw2QXX5RhBqYWxxmoZg+9L
	 hdwfPBW7v6+NNYHrYHI6CS8eiwoooCyBHD9LiI/emU/W0b/wdzw8gjRU9Bw0mAowEx
	 bd5kgiQrBfhkH5BcoLbhAqax40DTnThmJAuw2hVRmdynjwFYl0JwHyqJdZ9T2ZinYD
	 zdnwR3XfHSFEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12DACD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178060707369.10028.11672661721577255278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce16dbbab2a7506aad0f61d8b96330ce0c387295f4b510ff40b7e9891280ae02
Date: Thu, 04 Jun 2026 21:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780607073
