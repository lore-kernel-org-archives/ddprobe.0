Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11A033F369
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767635034; cv=none; b=cfRfIffZWAZWgFBJYHnahybDepMJOB4qO3EyqnjgENGPDIe7hM47Q4S09pcXlRuTmqguVurX9/Y+CMzuTZceCMgwyMd2aFf4D80fhIqWFtOLNWUCiS5665SCpNtGxBxi4Q3adlp0UYx3wNIQfcb9nlmnI/6eAQkWEj5fCZTKjew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767635034; c=relaxed/simple;
	bh=DEkk54jqer0wgceNTICPyOLsf8tm7quVvpiyns06D34=;
	h=To:Subject:From:Message-Id:Date; b=k1TNZP/r1fXemGTOMaN3vJpt8iB8jl/h+cKz4mz5QA0e4riMw9EY9mNeaK0f2v9MRk1qiqkK8jebokmKro50kFM75xlvbqgi19lS3BuaFpNLLPLXpm/g5gqYNXDs8u2jRxtNvMTzzGkmJUJE+hMLa2MGD7MZqz0v97SzvYg6TpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULZowQmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULZowQmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9312C19422
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767635033;
	bh=DEkk54jqer0wgceNTICPyOLsf8tm7quVvpiyns06D34=;
	h=To:Subject:From:Date:From;
	b=ULZowQmqbXtMmgkU42S9JdR+CXzKPTrzuyBJnmxiR/ixQYg/G1sviCciLMmowAn23
	 8xEDaQk1Q12VeuAgND87Y+kZgSI9JfMZXA8tL+M3jtjKaiFFokZt8mITGSK9ecvfCr
	 MvykhQOCbbDnA4yt+zmHjkADr2sM2XgNBPMmGGcDF0SwfC94q/f/lwAPs/szM1DqeC
	 6oOm9zoJ3K0qKpaAMubkrfvuXyBrwHtOi7qR0mT3E8Q2MD/6WPQU4TABgmWsr5eleN
	 XHarvu6QVV1uRpgtizXT0/grhZyUvAkaJ3kMV868suRyVgOVhN9FbGOKx2aPkEcB3Y
	 QFqiYHaaWWFSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6C4C79FA7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763503362.3010.14157346286219168203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9956bcb8a7ea9f7f39b4fb0c87c46eeb06c34da31e9e27b50fd125729d7ef18
Date: Mon, 05 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767635033
