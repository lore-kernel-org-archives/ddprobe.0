Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DB818EB0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763987514; cv=none; b=KYR9mO6vtfucXv+gBFJIAZvKlhffEOhLlapjCbD2nQHk50n1YNXJr+JdWIadDhgQcd0Dk49lDwrsazZUWOYGe+K+1ToC3AKy7e82tow+ql2mCHmtjtm4vQ5DkSWERRCyPF0LjbrSgLNgbweriF4AYLAXvgtrc+0emHySnqun+fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763987514; c=relaxed/simple;
	bh=/vJHPU5peAagFt2uO3TFER7ze8HSQQWO5T5MR9k9+3w=;
	h=To:Subject:From:Message-Id:Date; b=bGDCVS4jA75qvWMeuU6ffxIUcNy2xznT5SmOqOIZ843uYOCMtVX1ZBjd76r1smZFUIWS1iRC23N3I3OGMO3CRnIrc2QKwxxJgprKciOoh6qAIoSsuXdjK2lz2ezl9Vm9dFKeR9pnNniiLrCW+Cb0UfkhIGgVOiBYlRbHh6Sff6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pN1QnTAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pN1QnTAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46F0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763987513;
	bh=/vJHPU5peAagFt2uO3TFER7ze8HSQQWO5T5MR9k9+3w=;
	h=To:Subject:From:Date:From;
	b=pN1QnTAei1lYLzM7+r4tx6FIMN0LHbK6UeZVkfTCgCcmFgNc68eJByMjZSA1CBYcf
	 AWa7ANX0Ho35rXJUKoBYT+8z1w7rDu5xx1YT8A4o9iMsKcdbOfzASTKYyJdECiJ6c0
	 s3T6ras8xR0CjXmoRjoIItTSe/QZVKL55Csj+gN4z6EBYKOaUFZGA8YGhI4/lzkY2f
	 ll19nmdEa5Bz/JFY9sN3NY5L+/JQOn7qAYLO8d891QTWOcjR4FlsnnPBE0ix0rT52N
	 SEEwSJWBr+HD1L64Zg12B22qpjph5Gbo5Go2hCx2aKpc6E4esY6+XtdWxVq8Qgil/W
	 qCDGwh0gvRR+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9487FCFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398751359.1147.5553048416970789654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb478ced324ffdfeda1fb688a1eaae35f8264ca536fc33961501b1c338a20128
Date: Mon, 24 Nov 2025 12:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763987513
