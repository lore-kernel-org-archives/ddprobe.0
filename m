Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275E4279355
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776256054; cv=none; b=N3iYO1F03ihPb6lEssGFHp9fgoSEWQ+58UTySkyPn9Z4T/W79mVUDBvan6yq9WK4dyrd+XtfYE+oHHHhaP0Akehhh8FbNe2mtSKN9tBaqw7ojCtRG9gJlUdAmOFtL+hremAQz4v6kviEUnOBasd6E5yrKklLTJGephgqeZhY97Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776256054; c=relaxed/simple;
	bh=6iqF6nxYKXP3jpTvtJg4scq2UdCc0/oGU8YtluF/mpA=;
	h=To:Subject:From:Message-Id:Date; b=q85ttFa+7cNgN7is9FUoYUj3TBlwRINT8ztfhHEMSzHAQmsztq8s7QBbihK76/Lps0NmGB/J1afsQs4CtHWkvcUJQnA1WWQRR+MlOTLfSthWTOoqaZOnT83xoQdSX1IP8e7uVrw567w9z5RUxmW1L+ffnCfooO1YneFnFTO7s7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qffaXPG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qffaXPG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF29C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776256053;
	bh=6iqF6nxYKXP3jpTvtJg4scq2UdCc0/oGU8YtluF/mpA=;
	h=To:Subject:From:Date:From;
	b=qffaXPG8i62/kIVMs1Z1vSneuhx0tabMJuw+7gv+zqSCphKUT5I0O52EYHG9PCpDt
	 rt1BlhdRsKdvG2DshjDv7rEZgaWujZozuoq7uCfsqgmEhg4CaO0fr51n5WDqIf+HwQ
	 1IuzcyNwdJv12IlzIOnNN2Z4PxPjyn9eoFGnD3rzeoyWI1tTfu+Vicg97dQDbOXWUU
	 sYdMIZAjYUHxs11OC+OUSyG1nNkPdOqS5Nde3n/mZyZ7jcClvWEIsXtGdbQ/mx9SOw
	 UxX3wiArB8qcVUbj7M8VA8l28Bm3w4KM6MW87sJ/PEiL7/y/invI5Wls+xEfu2QJO/
	 IEbF3+eC1v4uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DA4F4199C
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625605368.26875.16939041629507284677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e773ee76c521f33ea36f9ca69ad36157e0d05cf4c38122020d497c27b789f6aa
Date: Wed, 15 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776256053
