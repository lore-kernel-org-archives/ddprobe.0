Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107D0481AF
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731450954; cv=none; b=rX/K7VYaCJ/beKr+nYJrEIhiQnU6WasZ5HUzYLCNle5WX48iOHkMTfhw7F7rQp833iaocfCm8rt/0CaRgFA+MpVt+p/+/VRUQSTna5IsIo5k+Hr1yVHEHAMyCPMxYQTrCS0JZ3aNwUuyivQ/cCvdOgn2zdKsgXe1+IhWiTEV+wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731450954; c=relaxed/simple;
	bh=gJPLQnEw+UnmFthTjHl8kwpQkpEiUMGivoBAMNBUR+Y=;
	h=To:Subject:From:Message-Id:Date; b=eSTZBzm4wnP5wmUPYgp3OncVuzsDpZNlec5L/OECH//TZ1f3heSh0ehIK1Ub8U4UxbECM64v5+9fBK4gpyECxGJGobLBnHkHtlUlaQSrY8OfMZsdHQi5XLVT0rwp8Lm0mrfw7Hblph+tKee9v7hcvfGi78aWZIrd9X9MGTW/fQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDKFuknT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDKFuknT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9AAC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731450953;
	bh=gJPLQnEw+UnmFthTjHl8kwpQkpEiUMGivoBAMNBUR+Y=;
	h=To:Subject:From:Date:From;
	b=VDKFuknTcT7bz7n5hYOxsBFKgpXF33a6UjI7/jben5dBAIT1Bo7q7Qt25vqdj/sn4
	 yphaSyTzBI/GK13c8lbXa3+yQTpCpyQ49vWa+gxwT6SMmDD3wa5tuS3SyloLArQYTm
	 PgwlQllJPhg46YljngA/c5J7ppjnmudf6TlKiNZydxUujbCMs2CEs+pM8avQb4QLAn
	 7EvFun6PNpKK++3Vr8KIiXEXz++/AO4eamv2XOaC9mL22nm3Pe/IeHAlkAgKW4bgKP
	 LWfjri8dbesKRn/cmdmr79TNU0WOMKlKXVE8ia+hmRyF1QajzDwpPlq1X0Y0mVX/FB
	 SOiih8FB42Vzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EBFD597B2
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173145095358.30507.12044575360198829827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0570f10071a6f2e8759e0cb39b428735d268049b0f940c44ef4f0a5758df288a
Date: Tue, 12 Nov 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731450953
