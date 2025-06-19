Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4BC21CC64
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750325995; cv=none; b=ARCJg/oU0U9FmL/CYxpJqDoF+astuCOtF9D7Nel5fQmgCy9EV9PqH1k2y8qH8kFScp9g8hIeLpRHTqwFVrehULxBldKBwwkg2im5tKaVn8xx606TGWOO0z7zNBRsE+eGRmeJKB6Z3hZa75p+BcDOKtMT0BDJhgBoGaYp1C/LPR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750325995; c=relaxed/simple;
	bh=blclkhfSmeMdhec1SA+8eCHLy+qQHesHJWWf2u1ms4A=;
	h=To:Subject:From:Message-Id:Date; b=Bta3L4l6DaS1gsucpIMhJkvlj+qNn/AvegGiEQIXeW9CSTFm+6b/XYntMxqGX5EPQrTe+6pwHMCvIhL3E+DhGm4OSVlvFXNPJokSZKPeVIlzVbY6TKBt3kSw4Sm1aGFp1DqQDC7OQBQl9ZAL21euiVFRgciRY7cw5Tdfjk0+CgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lx5T9rsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lx5T9rsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7EEC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750325993;
	bh=blclkhfSmeMdhec1SA+8eCHLy+qQHesHJWWf2u1ms4A=;
	h=To:Subject:From:Date:From;
	b=lx5T9rsE4MET0YWsPnNk/3Q+JwekJT7iKheZg6oGJVVq2ulNu4+M75DJW7bLrTZ0t
	 e03QNXF8IzkH/4ddWECPC19mOvibMnhWFIFtkP5qfVXhELEfc9eiJVL8a8wgBjouIL
	 bepcMrIVvE3qB4w0uFuGMkKhwc5Nfa1ZuxXcJpaxQwhivXaHrmUQi7mcCdxwEEvRd0
	 jmIBUiYIlZun/QWm5vwj360vqlwrcar6sTknrdqWG9yT0m1dlsgPxavIGC35RUGFZN
	 mehqLn8p9lvacK7ZaWh2r/4i4wxHcWYpJLqtFPwouZaYsSnqmxHWwL3oxZmwaBG0u0
	 9o0bPGkYPtr2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC99C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175032599357.13136.6275582804339041758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9da9c5affd843bd048ddca0cd58cb118db3c2f732fe714d3baf0883b717e3d3
Date: Thu, 19 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750325993
