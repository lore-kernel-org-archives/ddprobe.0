Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D08B3859C3
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789855835; cv=none; b=F9CZMoukrJdyHi8BAh0szCKucp+Th+msxV0CfWcmyN3ZhoopQK41+09y9tFkxztPbiQDQ5UN7+TdklgojNRc9RZgGNZYDuEgqXVa7NSfanJk1vL7UTOalWY/2Z5Ov5MVAXz0d3FKme+56KQPyb6IWl0nwxcMA/R8Emj0QubIFvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789855835; c=relaxed/simple;
	bh=urz1q9Zbvrg/hIHlFxZv+0ne6m14wfCkmsx8fiPapWM=;
	h=To:Subject:From:Message-Id:Date; b=V8LrEaM0S+vr1/WdqrcUchEx9Bv+mUjD/LgsGgOeo6t0xqXYTSFIykHSGmBZSDhiTRi2uo/OAbnL18Uf0cxD3ebH+FTkyTGz+wxHabLtyu+C7UEpbIorLOKtnQWGhutcYITqwKOXBJafA6LAnrkblmKNZABNKoLNY02BSWhZVig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSO2fr7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSO2fr7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9637C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789855833;
	bh=urz1q9Zbvrg/hIHlFxZv+0ne6m14wfCkmsx8fiPapWM=;
	h=To:Subject:From:Date:From;
	b=sSO2fr7fummw+GHfUliVwR24ZxIiIAAVn/XbgXaq2eTMKgpaD40UASlGy2f8wma1z
	 LXIOwUs69p1YIXtmhgQ2aoEifvPbVLFzA+1RMhxuFkpNZsx4I5zRtg3oOQSbrrBvgH
	 c3SOyuD+vT9OGRtdlhu2VYI0R6oCGrNPlyLpKSeNmwLOVUe+DanNwQixtRA6TBIHr1
	 FftgGORiiefRre1XNTWpwvdydNa98mcZghVYFqeNIQWH9Z0VHcNXhoxCprxyzzU5LE
	 h/o0BJmtsUj3D+tVfS/dIYZ10JjJw/oQEibXR/loYteKqO4j2Jx8fxy4nk2NeuI6wc
	 hnAcGDNdqDzkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C97C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178985583368.5099.2700133214758715881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c93c808c6f43697f3210f5d3bf0c6a0faa25f98f98217057c147848c68f2f01
Date: Sat, 19 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789855833
