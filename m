Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DFD4C956C
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788448234; cv=none; b=W5vqRgRUp6xuItkHdB1JY0wVAiuF6k6azgqhOCL7VZeekfgLObRvXucEMPtlVqtU3r1lG6T1MEDebT8xKL/Ggf8uEtaZa6xUPkzsiZKqSaQZ0B7T++WTm0m1Sw5vr26FVj66EHzLP47b04cUavC2vKqMt8QKbwh5SgVYRV9gam8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788448234; c=relaxed/simple;
	bh=fLf846BgW1i5/MmHu2AOr2kZztw2SanTg7P8jcU+/Z4=;
	h=To:Subject:From:Message-Id:Date; b=JFyRbXlaOr97VosoiFNWw92dX3sxAnwPxcMHuVAqdUr3ckrV3kOo/90uO8qvJJ0CGWPOO7tIkaAu40mf4rszDo7QxVtfqU04jy7TvU88cf+DlBcTF7/GGkH7FG/NzqqyfPxjeQA8dlkHAfHgbwlDK2EWCskOVRibeokFr8esJQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dvc7Z8Cz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dvc7Z8Cz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3208C2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788448233;
	bh=fLf846BgW1i5/MmHu2AOr2kZztw2SanTg7P8jcU+/Z4=;
	h=To:Subject:From:Date:From;
	b=Dvc7Z8Cz1lm6kLCXFTi1P6WoUOPakCPjgTiqlttWuyrGfreM7VNW+6b1elxRjbbSm
	 UG40zNB7l92L0B5se/Ha0WnUz0ddUkHxkNt0H2Y8+/MHk9L1gvFdcyEWagSis8lany
	 +S7q/H9kNSK0WUIhzhuyk04sX0Q++5f4S5y8fQ6sgmmqSllRdFoAHI5kwc0tXZx3ec
	 aEAZd9QWDtkaijsT6/3sA4RtYS5ZTrK1j4wMFgRoEp/Gl1rqPqxcFZ3DTOC6S94sJU
	 f6zmjpBal97zJ7hXnZizCxb45gT5abUOyKHywgzWuq87orB4hw9ScKktul5uDfba23
	 r05G3E62wY3SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE26CC624D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178844823370.13659.15727000492213544198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081992546202810c5735f32ab3cd1780446b6dbf856f94df9ed471e4220c2b8e
Date: Thu, 03 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788448233
