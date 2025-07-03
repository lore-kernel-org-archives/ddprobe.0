Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363AD7462
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751517594; cv=none; b=RpXUuyTU+ksYIQj8E0S3uD3tH6W4lKJG79D0pMqN3g6+6QAMcJ0Cb9+K4rr24SwlChvA+HoEmq6tkAytvcg9t5QXCv7zm4Gtj0niLFEs5XO7VTEhkaDD9YGRrFkhMDlaLUayTfyafByXgW/NKEOh2zl0H2gwtM5lDzmlZVnPtuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751517594; c=relaxed/simple;
	bh=GlF4zX/DP4wnewxKvIJDVsz3FdIJpRcN5051MMkpTNE=;
	h=To:Subject:From:Message-Id:Date; b=KyMGxxWq5eNmdiIpF1QtfEJQ37yB+L8/jPWFflEV8lAgAWc7aaeWl3LvG2E/o7Qs0RF0Odx+4TH8d4RreFX7Ev7kiBeeKezbIz+Tm70r2vB9ZcGPTpzA+vUsFvWIMINWgski1K9ymQ5oEqE0pBXu3OQPogB2N8Lk+khe80PW3Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHjG5Pf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHjG5Pf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3911C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751517593;
	bh=GlF4zX/DP4wnewxKvIJDVsz3FdIJpRcN5051MMkpTNE=;
	h=To:Subject:From:Date:From;
	b=kHjG5Pf7V2qogBQ4KDJ3r/C7f2saoW6dfPFWp7H2xg9QTc/0j1PSDylKdaADUPcKF
	 tfQdNBobdQ3zq2N10RVw2T21qMUkaCIhhFsw48pNolWtj0PFBH8nOGoKR8jy0gxOyP
	 VOyMlKBWAwhJHIQfjOzHunKYE0Z6sYP6z6q3EbRLCT1EP74ihblJdB1MMhgPvX9T3G
	 WtdiyXmgIHtZvDvAr554ssYWJlkXRC4xtfjBTBR/RltfxtyWSqgeVxgjHtPcz6bUop
	 3LTwLKfxrcbZM+M9lSJbHj73vox0pr8dPcZcLr8DeP7JAuhFuSDln8ECx/IrzsstGP
	 a9R84HfuyDoNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A8CC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151759357.13737.1048903637565169410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a935f4901093ca368249678d5168ad8c41385b9250b94a01cf2f6846ae6e3e9
Date: Thu, 03 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751517593
