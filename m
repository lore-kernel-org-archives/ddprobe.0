Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4981917BCE
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726382754; cv=none; b=YLMKH9TJPo/lXspD59BcrHr0DRWw59HvMi64Gb0tjcyURurvBstgVyTRJsIjcAiZg68ulENvEKM3FUwgPRS79CTG7Wk97x2CzyHZf6k6O8YJeWWcmgc1bXUEcrA4IZT9Q6D1Fv1FV/ItUM5oqtkVOW9eapFEKr8Af2qNbPewmzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726382754; c=relaxed/simple;
	bh=r/EvftQVdJNzcmooPQJ4uV/iXpBSQqayScgY4RaYJiw=;
	h=To:Subject:From:Message-Id:Date; b=r4b45eBLh3jU0SqC205+LnbCZcIVh/RglEt1ARyASWEoTtskJ4hBeasBLF7L+v8orZalmFZ0zShDVfBUeZnb3OHFvlT6Koz9Ys4LLqxLbpuG0naewwuNXWbLNyp09AmGJeEL7Rc9gJEvCjFjNMvLzEwx1Q5JfHee4V8q+xM4T7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebWqUePl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebWqUePl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEA5C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726382753;
	bh=r/EvftQVdJNzcmooPQJ4uV/iXpBSQqayScgY4RaYJiw=;
	h=To:Subject:From:Date:From;
	b=ebWqUePlmHPiIf9gm75fwyuslzfNKJrKseDjJDBar1kk3hiU4OfAcxn/TtwAYPiyN
	 85IsBApexu22TRATuask7lVpI88X1Jp/Axq514qTKnHf42hyUNrmzrtHrO4WFIfgGL
	 ewCwh7T3SdT5eI1O846QZbDdLiSdkHQdTaLocDVChDgLBJXXMokGEqdo1lxaAhLVDJ
	 m+fQgKpOaxmZ+dHSZ4O+iBbIqJjL2P/1miLt/dOrjw+UPY2bFctHW9F9Ng8rWlPfxP
	 kwNxcidGM0KWz5QWB1K6VbVncrKXOfHMpO1HTnEUjdYl4V6dGtdB1/GFdn8zMogG1U
	 P/Sck5O9tSZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98812C35FE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172638275361.28171.8456142372285350058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ea357e98450f1158a5e1f1298fa6581c652f4c1bcdf6798bc7115a4d23d692
Date: Sun, 15 Sep 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726382753
