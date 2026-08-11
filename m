Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5827C3F4854
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786438234; cv=none; b=I2ib/VQ59y7JzJwv01Yn8EgVBtO1Oo2Fr0l5tiSoRHLMDGFhZ4fSz8/ssc4e7E7+/5Vl640xnCeKnJIKEgE7AYrRoetonTpbQZ2BMRyJpV6dx3v8o3coE+7vome9jRhwmFos1goPpdJCEq6IoD4sx6NDxxddFeMylBi9AXICCCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786438234; c=relaxed/simple;
	bh=QdUYLq2UsjXNrI06w+4/cNBT4l4f/N6zJbuLLZQ0TKU=;
	h=To:Subject:From:Message-Id:Date; b=LFfqTEKctBCgrAvRNGBC36Q9I4zA2uwR4k1nacJhrfXk+c2Eyif0Dz8X06nESTv/vk7i1tfpMHOdHBWRx17us1GqKFfYRuuw/O41afH8qU2Gqtl/TnHySWm7zEY8yRPgfLNKbcN04ND0c7YRI+PnLPkpyiMKsCnjf3OYCmeYYhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mG/azNoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mG/azNoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE76C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786438233;
	bh=QdUYLq2UsjXNrI06w+4/cNBT4l4f/N6zJbuLLZQ0TKU=;
	h=To:Subject:From:Date:From;
	b=mG/azNoybnweqSPFsbmcR4KtByCERrR78P+IC0c46DyLpQJlcnrG4iSDQ3TFgDYEy
	 is/jNDopbpr/233qgD3xppT+lQTvZEd3DttlT/tD4B+iquKEm4gBoro5vpfOScJK1O
	 9cLt33vy6ADaEIGKzOL99CHdcJ4gizNun967sT6UR9gmxsJDy8bPiEJmpClYBXVQhl
	 tWylYjb8qJDn3jfBWLdt+ojsyUyG+o/uJO9bAuh/9bwdE9UMLowVEAFyM9Af8ZyUkY
	 VOZX9WTVnypt+boOIhlWotutwljMMntnyhJzKaT0wpkFh8LnzbL46kIV87vyaRNHor
	 oDpWFo0o3+zYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9002C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178643823368.29448.6261274585694063837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589a9e392b27b04af6fa5da2fb63dda85195eee394c9fdf5e0c0308078e1b337
Date: Tue, 11 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786438233
