Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF64311977
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778563834; cv=none; b=bA8uv00gjqIROWsQcZoTb5W7b3aD1zMTsNoiJgk0/TP9xcIBrUptLLecwaPi528YmC0a5eFi4OeerptcdHW8J4EndYvTf6oQwverdI7uuqU43eTqcvP9TqJrYyPNy3XomG6U6oO2uR2VFMGVeFMGO4YVHV1nq4CVrOEej6e8p40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778563834; c=relaxed/simple;
	bh=2iUXrJQ96uLTz+VqbSUECZvIWer+P5bad2F4gPh6G5Q=;
	h=To:Subject:From:Message-Id:Date; b=VBrSjx0siDDB9tnhu/zYpSV/W80GTfDs1H4wWsLy3rrIye0b+5zhfdLs/r+mTULfROZP9i+Germio9CaSoDYmCJgyBdk+W1PuY71kaOGO+xmohYPvQZH4yAF1PdCi97Q85UeuAwUWk4GOBigSHcxyoocPIjD0kxEiEPfJMkqNqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqICe19P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqICe19P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F9BC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778563833;
	bh=2iUXrJQ96uLTz+VqbSUECZvIWer+P5bad2F4gPh6G5Q=;
	h=To:Subject:From:Date:From;
	b=IqICe19PDzusdWMjVoMT0nGVT/ccAm8sNuJezU3TNBnmi0SniQjziycTlK/zLsCay
	 PCECcyws3VtNsh/QUOFVcnkRhar0Ibrnc8UiQkisIoLwM78+vuvDaWMlVCINZnywy6
	 xZoDuhLWhiVIKrIF5L3NLKiDhBmcHuaPjfXuaEq6wINTN20pwuHlVnqO7GH6tx1h6L
	 9ThQd3YzoCYzF+3LmZWGZho4mgUSIUGhiDP0+tZnsPIOAmYHng7O0aS0QDw1crpP26
	 7Vx+3gRqL+ZQJPjlC3j6oZ3nKqgvGsaValMIlQyPu20PG2QjAxbnKEuL5r77LcZDvd
	 q9nR3cE8IcY6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EDDCD484E
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856383368.28568.14848696766088818370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e402d54ddef4357b0ebad266b186736d59b1bb11647e08179d99356dee896008
Date: Tue, 12 May 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778563833
