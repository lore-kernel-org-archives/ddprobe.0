Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE911C8FB3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728672954; cv=none; b=N3CU8F6svmTMEPEplAASWdlRe06gK734NM6dJjVIKW/RPvuf63na9qNk6hdp4hWdqZ/NT80ZhP4yKzruwriMmZnIAH2abJ0c3U+9Tm5CPuNyyn3pOtXhsOyTQxfSc4VesWbhWX3jaItFReWlRL/7dsojceQ515XQ19AGHn+Icdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728672954; c=relaxed/simple;
	bh=JIgpB75rnridSNkDlPBlaMlrbrC7Q6SAWDl1peq1EN0=;
	h=To:Subject:From:Message-Id:Date; b=Xjaa12HT9Rjza64Bb/3dsDC/7C/RnBe7GpP5JckHBTSa6nzNj2Bt5VUFzMlH7EhQwe51vNfILlm7q+8f+XDa6j8qABdGrYgRPM8e+gVjuvH56EyJ2I9bM9FermBhLLcpUzUQljXnVTj0EbUreIOspVWvLyCMpARjKLmWNt2FihQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6FFMCNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6FFMCNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCA2C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728672953;
	bh=JIgpB75rnridSNkDlPBlaMlrbrC7Q6SAWDl1peq1EN0=;
	h=To:Subject:From:Date:From;
	b=M6FFMCNQ736//S5BTp05YnaWH+YYPTqKP7jYwkLnAR+ABVzpoCRP5p5Wbl50YEXHR
	 1m5ExgpAnSMutNFMm9eESW2OfrE3CDhXOn7oEJnS6b0bRfPqkOJ99Bnaoh309xKn4B
	 x98BqqyJTRa1KVqGvYxS522iKHJB2Cr2OpMUyEEJG5hiQia9EH4gnoav48ngH/GBTo
	 es38G2QTvA5HP5Ca2TkPqhKtxXmtErlFyrQUd+TmdM99PTRrBQpD+5sCv4M+hH4ncp
	 dIcNnnb3/lZtqnfEuRFvQh740ziUjlJIYQOVZlD/PGH6qUz7kZfyEWHBXSaZJc2GYF
	 4psSzYJ4s9EAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA5AD0EE19
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172867295360.14063.962522851591370603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64e1a9e5c30495781048ddb002a63bb661a8f77e6cc12bf56f29c8b577f0193
Date: Fri, 11 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728672953
