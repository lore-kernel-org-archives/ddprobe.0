Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F42C37C914
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776969454; cv=none; b=YoWznhuSDk4Kr2TKdRDa8Y6hCb+VUU3GzEmhLQDx8JMVQu0Bzr6WnWpgKgWR3mbs6sox/6e2/CdmUT5xQteaVWSKhArIUNmaBWGs6RfrVasabL4jxi482J5JlMP/s3f/Ejv92IKs4/9C2FRFVOn73hwfZNMBfwUL9yxsj2IDhIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776969454; c=relaxed/simple;
	bh=FUtnzeDmFQ3Ar43eCltgdoBaxzLPQZF5ALW1gjLXWoo=;
	h=To:Subject:From:Message-Id:Date; b=D0+lxJd59C+aHmaeZiHXvm2duwSV775Y3g1QBij5/aGl2s4aPei8c1WPufYDMm6v9lWyOB48vdr2KcPxh63UbOO4B+J/R07OcdanoXod3zDF5MPrFxx82lcBCS0pZt+rZlO+RnQJeZLv2rFUXymWvmS25mazWydTSMcGMlAc/wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sz3Hmv6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sz3Hmv6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC569C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776969453;
	bh=FUtnzeDmFQ3Ar43eCltgdoBaxzLPQZF5ALW1gjLXWoo=;
	h=To:Subject:From:Date:From;
	b=Sz3Hmv6uCKEVwWOUEixdvd9Zxn4454s/thbpyFYfL5Gco9S6UPUm1OMU8SnJL0bKj
	 ppDsdNF3bZINnhVGoeMcIT6d3dpER//glSG+YMiy6lBsKZvKnvl12FHA/D8043l62F
	 lffvtt/1GsgrXcukHq+ia+Ri1yyYmJnxTjvnNi+MA1Gzvs/azYYWF81EJl5QQC5BEJ
	 MgK8by+udOxiwaTq8O0Fnj3qSWr0B+C/tqHs6b6sSlx+UWp2wH7z2bhSQ8Ge2u0GA1
	 7qT3hfQKHFuyH6LwgOFyAkMAFCGtWZYe4/17pj/NqV3CQ7PRcBCO9HyRangcJOk8GV
	 mFTlDY1D8CK3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA11AFDEE3F
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177696945368.12616.12532249996360291854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b021e949e382bf173a05de2a2f7b9369698f46da827147149deaaa8517d2b4
Date: Thu, 23 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776969453
