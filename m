Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DD61F151C
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778545234; cv=none; b=DlboCowXx23oYW//n7G8t3DTt/9rZNW63HtJ6TvpVbaVq/Az+FCcMWjbqDrgjnkDJsIwVxxKQOkjzglk16etagExPVlfJYjWHsXxbPlaWBWwf+UDCtNwTa2i8llJi2HDN0mzq90Xxt9ykexjLr75kli5OoG3BJS6eiFQE6hWcAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778545234; c=relaxed/simple;
	bh=peNJZKyVpIcubQRJBPtmz6b75gXl9/3gHP1kfXQV++k=;
	h=To:Subject:From:Message-Id:Date; b=DHGZdDXhQg9V3Xzt+qi2ayz+wju0inNd1tnZH0HsK3fz6L4IgFgmLMgACP3jBfl1d6Md7qT5U8XmHs4Ih5m6NnFKin5/bEO5w+TXCHNtbiwiBD820XtHioP7kDNiHf74l4JEaXdks5aMWzabrwxHJx387w1GuA5D214BIyLBLR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5BzhD2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5BzhD2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E97C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778545233;
	bh=peNJZKyVpIcubQRJBPtmz6b75gXl9/3gHP1kfXQV++k=;
	h=To:Subject:From:Date:From;
	b=H5BzhD2V96qKQb7tnAFKkHE16ZzwVwUe8DXSD5Q1daCqzXkjw1TbhZSjGzKEODSNV
	 fSBmuglpBQcaJoLPvFmxN7IwjlSActPaibeeYeCIwdpSKv+PN9JM/b3EKkRxHbJ8xy
	 u2tzuCvx3NXzhsjk0jLXflvm53C6gCI7ebJ73XgxQI6nSRbtAUal5FvkS5E5DtrQDE
	 K/VzojM/Isp/hcAifC+3QCRx4IZp02R0yTFP1EceSSF/yMinjjpIqUKcKgeOjVmrhQ
	 21fAFjW1E68ui9E+UR2L3pjMuWAugvbSBnJCiqFtzhZUJeQ9leHuubBx5oXO+dkWm8
	 +80bpL2DyXFBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2013CD484E
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177854523369.28558.6884896949994625380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70907d3b922beb82e5355243e0669e28c7763009dfcc2682bb8d8113929408a0
Date: Tue, 12 May 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778545233
