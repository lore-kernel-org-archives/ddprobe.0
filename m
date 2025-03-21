Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4E71EB1A1
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742583594; cv=none; b=iXYWrv2OpL0bjCfILKMpQusgP5aCNfqzRFTjr+YdtVif8ECkUhyN260FAvc/is2231QsC3Vn0a5B5ysWO56G/5fKqw3thfDSy7CDjIz1iukCuFXQS5O5flHf87nQ2sWmTRww138Ka05ZIwTB14GhVWq8bMVnRdjUvOSmQIF8PZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742583594; c=relaxed/simple;
	bh=XmR7wo4EkgW4kSmCn7CSggazfFPE37phSbKmYyt/Os8=;
	h=To:Subject:From:Message-Id:Date; b=SjMiGFqK8aILUmGGcNj3cVoOID7Tu69sbtdLA+mSUsTt10iHVFjhRXu+o682+XA3YsbLMGGHSrBxaAbDj1Wo1wS2ziPj0kb+Kk7HFJKDc97+NMpI0Rlsdx+O9+CKb3QjhdrZycTDXciNo90EibQ/FsWTMU79Fvpsrf7+UXbtKAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PK3SNZA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PK3SNZA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE31C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742583593;
	bh=XmR7wo4EkgW4kSmCn7CSggazfFPE37phSbKmYyt/Os8=;
	h=To:Subject:From:Date:From;
	b=PK3SNZA1j4tJ0GyYNP44Xuos+4V1tFtcwmv64wY4pypjdOAOWuGYgQc8qZ49bbKtB
	 yMl33oHOz2WhPdagBKmkxyAdHU0BZHX/9aBuP78eeK6lSxNmw4rbaMxlLP9sWvHkSS
	 rHd7LyiZ697jRpULge5zGqFdQYrAGfDxeVOFTndjuMkmOiF+luWj3v5RmJw7i8Zg7z
	 BV1VLHGg5cPZQZo5FfzeyCd8wp7+rlVzBXYvbX/see+FQqJQi8yL8DiIIUbAW3vwiF
	 pKB8vogE1SGxGwKDpvaF+orYEB2g39jbXxtdSJnVdp2VpoJmS4Bv3kR9GHcYfzMRiz
	 bCHLxx91NjxnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9810DC36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174258359360.31554.13512192593413231879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1788a8f7a6f28a639612d651b8d1da9731b472f482dd8c9722c2a9ff3c2e9a11
Date: Fri, 21 Mar 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742583593
