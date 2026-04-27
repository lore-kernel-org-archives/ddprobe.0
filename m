Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2583CF69A
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777297654; cv=none; b=is2Xq0EqFf0tk3Bfd+KGz5debVSAkH9SEB9G9W8Ty7ztEaM/h4fJYUTWo3DQjAiHCf6Fbq63/vyUKHP6uY6p3MVh1fBuRE4f5kAhdxwj79K6e7nPT3pBdAa8/tYEtVE1vZktbjkYtfBDgdziBLH0Jl7E2s5i62nCj4k+Xg0bg00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777297654; c=relaxed/simple;
	bh=TQ5TX2t7zo9itL0zOUR1sknKF8N+kv4DdsLoQubpB98=;
	h=To:Subject:From:Message-Id:Date; b=r51WxRXTJKOzgiFf10KDZfootA+p4aGFw8jHU6jWCI/lNYBRiZJFoquwPzrszaYXMQoWnK0dul2Igi9fkcF7bqP/uThQatyLiOKlnSMnp87kj5fr++/Yzt79dgGCHFPT8D5rsOVwGBVqUW3g5VL6zDKwFX4TEy8w52VyfSoIm48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snDwIS4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snDwIS4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7DDC2BCB5
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777297653;
	bh=TQ5TX2t7zo9itL0zOUR1sknKF8N+kv4DdsLoQubpB98=;
	h=To:Subject:From:Date:From;
	b=snDwIS4VpIDHoplOl+kQSVKGH3EGAQVBKY7oVTnj/Sp+8y8vpZc5v85O7IowC6gui
	 FE7BObqT9GMaBvKZOWSPoQ0jU8+71QTaSfLLPa7yggKYf7MzpBcC0OHVuydHhaYhYo
	 w3iDwJI41dcr95Fhhd+HslReD+rB5pQ9NrGMohBPGxZ5Wzip5VulpuCXDduUDA0M8g
	 iAHWEN6fw5BttWXtAEr9NtVWrSohpczxqCs1fC9pn40x89WfL2j3Lj+iq30AJSnobr
	 Cr/1gf5vTaaUbKHIovC5KH/WfV2Ry2NByMLZM7Z2e1yqtEQLRDdS9EcdSUB8obSEva
	 1s5t2XthBkd3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7152FF885E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177729765372.10870.13930183000098803210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc4c16324bd46bc50424249b80df0195243d2b9702afc64a76a1091728ee438
Date: Mon, 27 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777297653
