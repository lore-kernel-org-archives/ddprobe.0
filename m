Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113DF1DAC95
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756162195; cv=none; b=pOKfX6lrzzEQDtAQdqDjiey3iOTeR3XBEAveRcBpgfawUgpICNtiwd7JB7jurg/YFThGDEnPeGYhzoqoElHlrt+d+9b7/9hd2JpDwcD2N5iJwGRb9P5clEAMO4ACBCg0GerbnNR71kLLxbsT4jONZTi+8Vr9NsfooA2JAFb5K8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756162195; c=relaxed/simple;
	bh=4xUKBkBOG0gcg+3bhoXafWrs9W5WSZWaqJsHei//x8Q=;
	h=To:Subject:From:Message-Id:Date; b=NOcHj4bSF6kZkGnmsWQcSjjcLPkYmTdjHNOZuypHI94xEMmUs/m6Rg0s9fv28WlMgQ1fGUkZSoQvYbTgQWfTShWCm3IrYknSTrzEi+N5Qac9cqdMDUKR5Cp3B4tYyZ+TJr4G0ZLbRqPTv9G/BW6P4xfxlEniOdqlZyR0b1FK0vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diFFTxBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diFFTxBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEAFC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756162193;
	bh=4xUKBkBOG0gcg+3bhoXafWrs9W5WSZWaqJsHei//x8Q=;
	h=To:Subject:From:Date:From;
	b=diFFTxBapqwRqXMkxQVYNsibXVGCrO1QFzk+9xF5i12i9TM2cX4ZwY2VQlP9t4mc9
	 MY8/6g5XLFYqamndELuRdU1Zm7COXncEAaRhwSPfRPC28jaCJ0eza+xr47X3m6wrG2
	 q1u8P3Z8AKRWHWZRCNrJfpJkTgqmxHtUiV4v8Yi63TB1EgDPeEdsoTeDAUYlhkFNrk
	 3J4JIkSRaf7Rh+gXJ/EDKneSK9Du+cbqgvZP+mD4/gLvLtRv1MK92CU3TT79cE88nG
	 UUiPhw8booc292UzuLdFBWbVBJNRk5ktijpy9TBzqiWbc6yIfmmQULvJFZEg3W/klL
	 ErvoV62H60Bug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE2CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616219357.12855.1797777898289125588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 410eb5ac5896ac4182354730284b9dee002042e93eeedbd3e186dd3457bbca7b
Date: Mon, 25 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756162193
