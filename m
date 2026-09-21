Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284EC481A93
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789991434; cv=none; b=M/zPu5K6MP3PVmYcTX2ZNAk965mbIZ0e2/B5ytBoJW1LV+y8KqKuAko1hrOw/1oCG459qNtKFFBsRmAKtzzcr1m3EgiJHgZlkRNyVugyv83Z2giruFvCHZsg3FSQy5ysM4HEcKRWrzoUxxZ6Dj9XNWuWln+1dA5h4RlxUNyCghA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789991434; c=relaxed/simple;
	bh=NyxQ5PYsxHcXaNO+QPn55aGPyP5hrPPq7DqbmzDHnPc=;
	h=To:Subject:From:Message-Id:Date; b=PqvOFsAeF28soh19BHLwoeZMYsBOOJ5EdekIGgvLsdToJrFNvu+XRfAdIp0wix0NGKCqEcpx/oesnc1CIc1RuRdpvaE9WXgfV6sOBFoqX1tT49JSx5Hxcz/GR02pSWMczTZT3FGPpF52Un94+Io2XmUPn+2xE2e5TVsQ9Lqik3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNk4RgpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNk4RgpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D82C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789991433;
	bh=NyxQ5PYsxHcXaNO+QPn55aGPyP5hrPPq7DqbmzDHnPc=;
	h=To:Subject:From:Date:From;
	b=iNk4RgpWdkJnmZrq12AZBDliYfgy5V4M0AhcSHM+yjPU80iTGTGgWLMtFvGkGZ3jY
	 Lm1c6FnIfpcKltV+livf9uVcm6xqCcn//f1b2vTjS29hkPQNXNIdpCqYyg/zZC97zA
	 7QZhaitmVvrhBXad/X10kgXourR586ICvfyw2gd8nPzlkn/j5zz4RTzDkRt9Co8hmV
	 y+qq3LyqZIkOr/4Yttxijz0oF9tK4u7i+vMQG3oe8OrY+JTVncNVzq+UkiAGsy/A7+
	 qYp3qc9pOQprQs3wmDyJt+3o5Iah1VY03X6Q79KCdPgMsi7wcLWHVvgcqIKVMhTUzB
	 xGZF/RkozCraw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6C5C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999143369.25170.15941406762669278583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af067a46d2e6fc97ec648c90df56807b965076c5e51120e130482b94a2c8be57
Date: Mon, 21 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789991433
