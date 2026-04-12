Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F30233722
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776030454; cv=none; b=FBCLt3H9yecQvsPmSJ6f+okcUNWGaexH7skaL22//0sF9sCGyxIn3kpZ8e4OL8JG9Bdog8UW59OIFrIbHUjRHR73gygCl7PDyHHB+zUA+Tf1Myzir8WE6Du5K7gEUrAkfYtdO0HT2bMYKV+nIb1NaASV/+VfzaZWkjhTOV9ndQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776030454; c=relaxed/simple;
	bh=abVPOXWfwYIc6diJojDqRNjMcHtkrAZZlpELpjHMLQE=;
	h=To:Subject:From:Message-Id:Date; b=mYRhBoerMw4iNq0VCiZW1U+WGwOXT/GsiE32WVCeFCaS24s7IYFjKhdsJRpbcCqYqx4NUJaXo2dcyohyH1TQEnczP9LafDTWesg2zLbtclKblR4ocabERHpJ6jjS49F+jdWcfPu1GCyUjRvca8JsQOe8r33a+zKWmm5EbH99BtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWLSpYn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWLSpYn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C3BC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776030453;
	bh=abVPOXWfwYIc6diJojDqRNjMcHtkrAZZlpELpjHMLQE=;
	h=To:Subject:From:Date:From;
	b=pWLSpYn9EGuHu0E0uD0Xb/b/xT6P6eblztkJgNNYxP4j+ELBpwjm/IpnxFONW+Aus
	 YSYn6wxdi9Od+NhRaYpsibpFHRSvi+df/FKSkGQ2vtWnx+N3ka8TaSc2N9qOt2nOdu
	 X4gd2jOzV0HpOSa4XlO4ZH3PCQ25XJUOzuwtE2XgSdjuFngjYCy5lY3tHveyAxjP++
	 My7/Bku9sVEzdVd5AcSRrYxTw4Nf/AsXfGt7bctA3h7/iJEIwgrWruYTn3IOh/KX58
	 DHvIVXt7GTvtkizXjfCfdBLVpt5msO3E//TlpIWfG8QC8YYw/wcpIXqdEZ+h6huGn1
	 PobL9c7LPYPUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD305E937E7
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177603045368.30429.11692815517423707059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b662e44157051a6a1b08c48a25e51ca96c87820f35c0dd2789cbcce5d87a4c
Date: Sun, 12 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776030453
