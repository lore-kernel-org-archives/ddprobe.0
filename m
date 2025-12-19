Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F18627280F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766138634; cv=none; b=lltPUGceG6SjiXnnsQoePwsOZy6Y9pfJjbJ7xuiT3EBID5PH2/C8AfM3xzCCZYMaB84M/s+1raHlkRKVK17jUTAGUr0G8FRRi/NlRD6g9sO4x61JcMgFwJX+J2FfYdrnpilyHHsUdMgmPQt5c4gOoBO0EZZmV7m/ilrIif9r+Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766138634; c=relaxed/simple;
	bh=+scvfMHDmRzPMmMZ7bc02oMk0TaBS4F0P7VnKj50s48=;
	h=To:Subject:From:Message-Id:Date; b=KZfdLu74BwFahcGVE7NqOkh338gx66b+r2++zvxFBbq/DJng8kmthsEJq5pKm1ThFrzpl2g5yKWfrYcdgxg18W2g+R3LwZlxevz8DB6VaWJnaVW22SkcdXpcoc/bgzpV/kUlbKKkoPP8NNR2g+KQ0oGMseJDj9L69fH6NhsTY3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0Maj9IJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0Maj9IJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F202C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766138633;
	bh=+scvfMHDmRzPMmMZ7bc02oMk0TaBS4F0P7VnKj50s48=;
	h=To:Subject:From:Date:From;
	b=p0Maj9IJMqjbpYmzHBWL7ugSTuVMmRD8gHexpIcYO/U9jHhXBo4adwFALsejVGlYu
	 mhZZaA4vdhp/6ML6SpJTDxBn/9dTeh4Rqq+ieG1BUrbY3L2JO3/2+n+mvqlMBJZTK3
	 nB0qEHlFq+/G7fSd6VS22R7d70D2Mk5+JX72qw7L2lMG4u6mIa9wPuaFg0JoT0SVf5
	 t0s3nW4Wrd1GpaNN9et75qKo5S3VjjpVqn+sCe3wxdA/nEzU19wYaZ8Fo1VZOMDJ49
	 Gzc1JkO8jN6g9R83u4pa6WVs26FZKqoCGKJXY/+ajIsNrS2dezKYUleDakspwZYxhU
	 BfSSmylkeInvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A4ED74969
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613863358.23776.15948196242251831136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acfd338d229c94894b494647a95808ebb8c769143171ad4e33d092cf96486e1e
Date: Fri, 19 Dec 2025 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766138633
