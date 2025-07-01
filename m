Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA32242928
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751355596; cv=none; b=Ing1B+AA56Z+zNeUcxUszPc9FuF6PD3OTydAIDD0PDDZYjA4AVYc2sIFZVQ1xTYcoIA25PA2LGp5eHCUQguFMa8CA3KL6umiqjAjTT8UZr86O1Nd2q0VGzhRO1voO3XGDKUupyzGrXGPUHd1fqz1AVnO6W7msnaATcQjN5rSLqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751355596; c=relaxed/simple;
	bh=Wqc6Ut5sBrSEwBSIEILQ7JOpg/K7+5wfRb0SsxiEASk=;
	h=To:Subject:From:Message-Id:Date; b=oe9e6+tBmu2LoBZK7rCH6jY4K9lLCZwTFyaDHmkJH+yRO5nbon/aTDRRvVOXbzH9etJDrcNsnsyA3RcBftNl4Jjv9yTu1Hs+kypzSCiZTMp6Fbh98fDdo7ItC+Z8ddjbwW9qc5JKa3EzQN0R4U8D3lAxdAfnPaSgssV07F0yxSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXo39UgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXo39UgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F5DC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751355593;
	bh=Wqc6Ut5sBrSEwBSIEILQ7JOpg/K7+5wfRb0SsxiEASk=;
	h=To:Subject:From:Date:From;
	b=uXo39UgGevYQcbdBuTlNcga7vbRj4/FmauHSCZSEwKarpHA/HmhrMqohRW1jjGc11
	 fMTJGI4lXFm8ORPvw2X6mg/AFrcIAsYPOfAtxmxMYZMh4Vs5gdoWxR6G2RVrfZ4Vqx
	 CKVcjblZS0jUIPPslB5C2heLGO5b3KSq8zOMXJeVdDyKA8kzaIF9QbwY7UGqzNLyT+
	 YrVeN2VSxSzNgeUrGrZXY6aD3m5vdFqdlanNP8H/IHjrdDTyvayLWhOzJHEEcZuzN4
	 XQ7uNH2qdPLIx9arVYw3VWf/eJE9PLF1WFBIwf8qCwjmYrtL5B/CSx/oj9HYClKwtT
	 eWA8oNUxo+evA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE96C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135559357.26514.8046517955942865450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 289143a72bc24907697d7653ddbe0f2d68ede1a827adb3e48cda8de19fae5230
Date: Tue, 01 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751355593
