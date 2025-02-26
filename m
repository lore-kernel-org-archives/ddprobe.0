Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D341E1DF5
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 08:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740558534; cv=none; b=MAHvizLStTouuEujzKbBVIuXGNvKIDhKnRASCnf+tLvVsxdmfNSpxtslGObIjlPMVz99QZaH3cE8xs4hUGt5Fc9bu19VhbfUbTnUTqhC91y4lkuHgSj+WRR17VscCc5EHFDCI3ty0HStugpvKMytIQOhUarr1EWr/wyNn+KpiWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740558534; c=relaxed/simple;
	bh=96wzzwWT2R6+6rvEnJF25LE8OodlA2EVSH/nJfiGJNo=;
	h=To:Subject:From:Message-Id:Date; b=DjM0+CgQQSW4Ij1ZKUJreXVEYUwO/wfZaCP5QrdzOn47ZS0WKal8l5JwiI8DPnt6u56kDyuZJVw5Byv1voTmwwK8nAOuqSexAhhPCoJAOsyaM9waPDra/d/sQCSw4+NPHz7N66GQkiEP2EkYPxdR47npWfc9jiR28ICWtvjdz9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b72xpSlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b72xpSlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A582BC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 08:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740558533;
	bh=96wzzwWT2R6+6rvEnJF25LE8OodlA2EVSH/nJfiGJNo=;
	h=To:Subject:From:Date:From;
	b=b72xpSlb+39JvuxbfeDRTEMDIK9VSGQhGFJlLPDLF/MhDjbUE4YIbi+B8tvodQXc4
	 ulSgC6/5tYLaiuHYrS7X5XCL4xPLWRj4vF4fignnApg41b8eoi+wOzm3TqOU5rQWYA
	 5JaSeBQ0HqL+pzNwa+efjKp54fd36wur9hQseC3UN4+eCUCilBlBkERhIqxKWXaiO+
	 UYyM4EcqAcwq0hgW0T8oQpBRcf0/afpi79Sobe4eCY+jPEjTSQx/kKmRGlc9QceaOS
	 sFWXBE3cNbKMFIThLtjuKvQr5tXGZ7SMBd5ZmVxaAPN0X22LCqVTZfc/JfBL4ZYCrv
	 G1wNydy4TSocQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94479C021BC
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 08:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174055853359.27465.12116479820787939109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f6f920bb2832b77b0bdf9fccfe4ffbe91d3115f44e43d6374296d0bafb31521
Date: Wed, 26 Feb 2025 08:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740558533
