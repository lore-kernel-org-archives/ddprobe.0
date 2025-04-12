Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFD410A1E
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744435795; cv=none; b=MvfSjq5y3Q/MWHJBhXNXfMT7qTt4FP+Q+P+PiaDx/dWeeB+W1kkY/3csXMma8E6W/LwtyMZb/otOMS6uS/vAyeXk/PTcT+bq0fkJ5Ckl/p46kbeHTQVBB1ti+cntaNlQxhuPWEfNwyJY4FB8paTDoZRFswFyHTg/TO+Rzc9Z2E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744435795; c=relaxed/simple;
	bh=HNHNSJnzkavHQh2Oe27kZOpjkAjFKjOpQzhrq9amFVs=;
	h=To:Subject:From:Message-Id:Date; b=F2MORA4btEdCjYrdveMUyRRh9OmANo8Tcixm1YYtsjq04VknEnRIlaOop/DvMh7zrgWPaPWJRg0ajgKAYzFRWs8pEe+pdVA4s/YQPmqcAczj3dpfkLUMd+si0/RnYJw9szOTT3TDTbxgz1jMcNX89CYeNNyaqoVEZtxtR/dgPiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcY0mM1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcY0mM1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC01C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744435793;
	bh=HNHNSJnzkavHQh2Oe27kZOpjkAjFKjOpQzhrq9amFVs=;
	h=To:Subject:From:Date:From;
	b=fcY0mM1U9f0zvz5yp8Ub0ArS4GYebDhDgMOcNwazq+jkBLhsBiRsqG8HSQsLQ7ell
	 qrYn1egmdI/WhM4PFYmLUyJBrg7LL9aoaJjSOkHmfmjkb/Bhi6iEwo5EAr5a1dSBMI
	 p/l5MGvNiOIai2MphUu2BFV9dYOUXX6QJwrO8C6pnG4G0pqoG8mnSkrkKM6C6JRxVJ
	 27kOeRCcjKdhqFcTujyL/eQmvoUoKc1VVayYhPjRwnmxGNVY5+CY0aOJLs1ZazLGdl
	 Ge/i23U7IKHqcaxwVMeSfoaGEc/LIliJgmggEP8SGClFVA0KtS3WutmADSTrUI40B/
	 m5l+DoK8VYwHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AD8C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174443579359.664.5648511523503941254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd8253ee6b523f0b83d5fe44f4d9adee3e6e3985684302b4a169ef36a438004
Date: Sat, 12 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744435793
