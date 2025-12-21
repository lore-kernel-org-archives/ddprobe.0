Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB391373
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766279034; cv=none; b=Pg3fHmRzucyV86wxljn2I4OyfdpMiTxVEKAlRjUWixOc7yP8hVjm5GxbSsv90z3e/nUL+p4YFY/QjbgaqDePEqnYYE4ni8gF61LI0IsgpFvVQRdyaJhQ0K9I/85l2EscK7S8bSWkfqEdG2HmIKmoN8wPjPm0ne33sCwsdONvZcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766279034; c=relaxed/simple;
	bh=d8bzAslPqLobmLCEBXq2waGI6DPBvJd941P/JoSGSR0=;
	h=To:Subject:From:Message-Id:Date; b=D5A3On02qwRG+Z/1ScU+XF5Mu1YYImyqv64HC8SO6U1F2HGJkKFauS0RGmyQOxD035EARXRnnQMYCiGldqm1LQS0F59BAAW9bhrutbLKqb3v87M0B7+5+WZnW2TyNhpPJgTJP7tlcnaJ8Ym0nmuOydydoDxylWglA2bC2frPUF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t54zXKYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t54zXKYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FEBC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766279033;
	bh=d8bzAslPqLobmLCEBXq2waGI6DPBvJd941P/JoSGSR0=;
	h=To:Subject:From:Date:From;
	b=t54zXKYHAj16Je5Vg+66GGVu3YllzFXVUPF8TZSHa8/PjznJjtqkaLwTyAV0ZrDj7
	 aH+X5qWOeb3w03GQuPiDDE618rfe7BatP2N7RgRFHK/dQUqhtZsnlwqg9yGJ3qIV/c
	 q1QkQa2d+C2Atc+ph9aTw76gq8taxdb9S5x4wM8FX689vlliWOeU8uvPH7n9tsa5F/
	 dv5UeHHuTYzDoPUSK9eCDzu2puOlHHkpkzXzFAqps08S4QzY8pGp6zbcowoibBWXsQ
	 AykPs4yKcvhAVzh4NLV1WEprIZhGlVG2E/WjdyAHEw7JdZZgVTZr0Q2CxWJka/eRjZ
	 LeEGBrESotTOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9837DE6748D
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627903359.23615.6997983079895173514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f42ed0a13ff1c2250cc22c32cf89b91eb95923e56ce3733a5f2192e159ba9c8a
Date: Sun, 21 Dec 2025 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766279033
