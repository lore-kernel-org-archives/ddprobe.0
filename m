Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3517B149DF1
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783802314; cv=none; b=eQA3IywBpZVsS/+nTdEAZgGhbWgPN1CtNa09RQasnzIZMmzG7PJafzh78E+YmpMzkY5gPf4Rj5NaNjvHsun7tFEjaMqVPe1jGDeo9K5aWHoIi/wlvU+RRMMJTpyQW0NR+Hn2sWooLEHDiXaMZDcjZwNVLxXHG4QJjMc/KHle2Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783802314; c=relaxed/simple;
	bh=7ukJUfogAoXZN3ipTczuKjIrbff0tmYL4RAkmQF5rZM=;
	h=To:Subject:From:Message-Id:Date; b=JK5+R4y5xvZI37hSBoUcnmmga4xTaHksNWpPKugmOsacLaEBEqlQ18j+xfDGaaPdhOfgi8DrWH/YBCMmt6j9sFVoUgKWhx6Otw/ZoaSaLASmueLX+GL6O3OUzosHbah8pIS4PuoYcDQ8iixDgML8TlfwgGTvJr9Kc+vK6w3aiP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cK3TGaJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cK3TGaJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACB8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783802313;
	bh=7ukJUfogAoXZN3ipTczuKjIrbff0tmYL4RAkmQF5rZM=;
	h=To:Subject:From:Date:From;
	b=cK3TGaJADuvy60f1XJ6cZiigc9BXZ9hJlx64CaKDGHhfDpod6aCoMqxL5AUiw5c++
	 LWMe28VqXED4UxUCCeMPpIpilUN1PIMrUb71qaKpvMMKDVZ8jDR/F3M0P49Ctega4X
	 uKOZ1gVaQQHDsD+Hl3cfv3IhtxQq1Zp9atJAM9qPMiZ6xgDEbjXEWpg6GH3aUdl7Fd
	 i5YFVtIiBguQYMIzkZQDluky7a1nD7Z9bQ5yYxxFKXeK7orcDm+DDztBsMMHGFx0RG
	 gwPzJ9VI6cw+OfNzdatEr0I8Ss53tSnMMw447mdDt6OY3x1Hozacn0cRJ0b9HYhCln
	 hhNznzARJQ09Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8100C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178380231368.31331.2832569958929917507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3572fe0768a50c6a916dbeb35f074aa58df995169f5fb41792a337641738dd7b
Date: Sat, 11 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783802313
