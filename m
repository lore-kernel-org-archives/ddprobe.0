Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39064304BDA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764325974; cv=none; b=RJvfLCWUc5Bzo6wCjSZHMRO3JNVBf2GEhZGLDrr0gepP3wFyRLoqnFFgRptpIU5tmRJSZtEZAqtUoMm7uN1+jYtHsvCUG2yqprWbUautTdmmDLNhzKhbce1Du1WfHcXDm2AOewsUR6WgAZhKgYYwRkRKOgCGEzIfIOGR19mMcRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764325974; c=relaxed/simple;
	bh=T70xAqvkKnNtf0Hu2KDqkzp/B9jGVv9fXSEwJsCSpZE=;
	h=To:Subject:From:Message-Id:Date; b=CE9a4OcJnIrzE8nkin6VShETRSvXXIJhepZZZhmRMScjcoknGucSI+LYForavH1H4oChwk4YrMA0WSa8ySWUbNc3YeTOPe6mtZu8IQbhEzTE8sakldL4YHyoxuk/qWKQl15c8bD9l6tX1HpUmLgQEd7vyssUodfTYEEBn3rnzfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rafIXZ8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rafIXZ8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4345C113D0
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764325973;
	bh=T70xAqvkKnNtf0Hu2KDqkzp/B9jGVv9fXSEwJsCSpZE=;
	h=To:Subject:From:Date:From;
	b=rafIXZ8uvRQ9OrCoreiubaWFoJSnMokTjozRkJwINFC5/OFVPou6FWHC1YKe1bVW7
	 IMI79wTGxZ9dMHstVCpWZFaBd09PTC4W8r606UckKQxsuoRdXWWxe5tWLfjNwQSSIM
	 zjmBr+3+MN0ea00s0G0wtGmkR1wFgvG4D5M6+xc8TZq5VMA21o2MJRDhFE8xicEgcO
	 4i+KvNMBfxT797PHSJBaWoq4RtPWQUvR2AiyAZXU4cxT/7GmZWDaXwZ0ZnlXCszRka
	 /XTpMbJ1zzvInvt5Fm8H5jtuDMfi/L9a8pxDQsO54pSxyn2o2wYkCvZYF42qrovjIZ
	 N3lYxvel8yhEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90811CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176432597358.25190.6162723589132005323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90d8a3cdacf917f5fe0b38de6707a37b5e9567491d14a4e0fe36aab005dd511
Date: Fri, 28 Nov 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764325973
