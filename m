Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA956427FB6
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789812036; cv=none; b=BVoJkiLbG5/gLxZAqkLwbNEaHD5eFTQHSscQj/M3IHU+a9np9i6j+qg8Y4483Y+7snSZ43MAA6A7idtgimGbugT9oegrqfhNRNgtO4qqcjBNMkEAqNtmG4YbAQok5QJa2cLYQTVREEMCHyXBcLbYcT23EDp6w0OfS/ZFqD34FYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789812036; c=relaxed/simple;
	bh=CsuJbuBkRy/R9YJAkVoIs/rdsUaM33UHXL7nNAaJBac=;
	h=To:Subject:From:Message-Id:Date; b=Nm0FerYIGvEogBqhy6kRnJYTT8CkB8XW2Y9dW78nzXR4FH2EgF0FQfpa1k3fUlgFnebHKyORgTrMM++bQSN06vyou3P65HfM1/pX0dTh8U1ZQDfeo/M1br64IohPJ8tg8dWxVt8glrYXWzjRgk6a4FQ6i9RTJwkwbdm+VbfXB4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/+bvU+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/+bvU+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 154DBC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789812034;
	bh=CsuJbuBkRy/R9YJAkVoIs/rdsUaM33UHXL7nNAaJBac=;
	h=To:Subject:From:Date:From;
	b=Z/+bvU+UO8JiIVfI+a54wJPcShVkQ5GRIne7UfRu4H9Zs2x3hQLOWVWvJup+zj3G7
	 K46fmCuCNi6uwWTpvX7sLdnbr66/lXEGF0rsBNAeFxI4Wnpz6hPyUb4//5v0yRpnWr
	 qRtj90jgvUwUcFK+ngmWb4AM027EDnO3jOxhHY0MT58x1m3taaumvJAR8iWXB+kOhM
	 3ryidTRa8XPxPU7FGEbFR00yx+QUiOKB0bMIVKutWXpUzTzTvy8hoyZlLtciXmSB/2
	 u6gQSqTHmz6IkSiUdFkZvJU2Fhl+pDzzyW9aizQyXa7ljDPH0S5Tms+UIGaTdd1kYd
	 vWXbDLLNMUXFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5D64C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981203380.30367.4285579251696670973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce4b90f5625affb4863dbdd43aea90c3695107c7fa8c8e02fbeb4919cfa94e9
Date: Sat, 19 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789812033
