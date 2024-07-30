Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367011684BE
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722371754; cv=none; b=LmuemoXjfiXTO1NMr2dvSQ+od913tIha5spM6JkOU8hAXnIJSCLg4bCfiR8dJCV5QSNZiiG4p5MPFF3m+65EsxCwzRnr6eF9Sfv+TzfikPpdX371oHEtoFYG5B2ASdZeTf1BKZwqDK7Wlz+W2e3ndLnfxVARuhhdDQ/vT+6VPCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722371754; c=relaxed/simple;
	bh=+CCPpBwhAuTasipGPGfu817YHXZo2z3SzG//qoYbOok=;
	h=To:Subject:From:Message-Id:Date; b=cMWm8dOMHNnnJyQi06XTw1SvRHHtcBh1Bv1IxMB5pX4BgwSkUYwtf0hMRxipAj7LEHi2iB6ekK5WJRZZRaygx0uexFInd/mgeWsiDCi1jvesacTXczK0ENW0eLP6/7dxBAHBrJbf/ky0nl3EkyOeLW/dreYi4tr/uw3Ou8/Uj8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHbuP7Hi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHbuP7Hi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B47C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722371753;
	bh=+CCPpBwhAuTasipGPGfu817YHXZo2z3SzG//qoYbOok=;
	h=To:Subject:From:Date:From;
	b=WHbuP7HiQSzfoNP+c9N5gmNTT1t7u8CJIC0xc3Q1tnO/GUSQVc82IuRseJ1JHmOyn
	 amD2iBMA4JfBTsfFpUI0jltDXVyD/RYGa4F8ijymVFsP4z5ucpkE9Dkm13XuhZpWjk
	 6ookzfV4aFCz+PQM2JRlhIBC/zBHYIuCMj7jQRMhRMeElA51X+vex5R5FOyRgTYAS8
	 b3w1gS65kIBjih1H+cbwBMdKgcPbWya60PxBpD6zf0dIxzWsuPso5J+zkCCCkPbSeD
	 Ux9+0CnOzK1/0vX6gv8+0WtrWA058HQPfK4oYUCOvaveFsFdDp0kZTFkS+jkW7yuTe
	 wG2tzqxCgLTwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CF1C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172237175361.13990.15136127427181252192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa0e13bf763947a8beb87de40960165893bd3fca11bd3b9b009e2595b05908e
Date: Tue, 30 Jul 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722371753
