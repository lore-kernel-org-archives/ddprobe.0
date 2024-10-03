Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FFF126C13
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727966754; cv=none; b=CmHna1SiNof1h1o5J/Kx2kkX/C/G37vvZz77nUVGTLuPWY88ivFRf2+5VRh5HvXZ5uJXB9I/GftkIfl8ifBgW7ijLROwWDCDJrjP1v5F43DUeBkvHkGzF/22yDLcS79ZyeRyzqMwwpDRa3keyQ9v2Dhvi33067lMHyy1JGItl6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727966754; c=relaxed/simple;
	bh=4unU5zrR+vvhWETNcnenVV0uThrE16EK6x1vWsigURU=;
	h=To:Subject:From:Message-Id:Date; b=US1sjPqxF+N0ZxNLtoyqc8+6GmUsdAtZmmtjW+IeTpxlm40ZZ60wThfs6okhOjlZLFSAEGWybFpdoAf8525YJUvFKEjEUeZlJ26t90fWMPRWSriBzeTb/eyCBPomCAo5szkM7caATHgfUxegLpCTaKTu0JEk7sRVVVo+o9wDUEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvZ52SjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvZ52SjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6045C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727966753;
	bh=4unU5zrR+vvhWETNcnenVV0uThrE16EK6x1vWsigURU=;
	h=To:Subject:From:Date:From;
	b=XvZ52SjA8ucGuozlok0hrtndUfu5Gwf8rLudanEqHDTmys01LQKKJyuqnEj3twpQe
	 SE2bYMEHhX3UbpEYx7luVFEh+V/G85OTXVRTzef5JvrHnVF59yNlEC00Dg3qWzk2dq
	 787P66Lnpnp14DBlN2hmD99SOJk1v6LvPGFK5j8jb8z+J7LTGrCT3CQdmmVmni89mT
	 6jjN/tnZHkh3dwsA7u7IVEcj03OIwP+rIegBvUKBpMpC505JDftgYcewjAhzetguqe
	 vpRWAfcwwK7Oa+ETp8KwcM3cCaGPm1c0axFVgZVPeyi4yBWHrLNdBtkkGxIwdKOWnT
	 Vi29y5NUsG1Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18A3CF34A9
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172796675364.29788.632049611049892586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 736555970d962bd3b5bc03037ea770134bfe7a3a0c293bfee4a9e3ca6011556f
Date: Thu, 03 Oct 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727966753
