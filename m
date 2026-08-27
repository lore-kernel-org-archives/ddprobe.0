Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501EE3BE647
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787871634; cv=none; b=CKpYJFcrhwdm32AJRf9z9k01ULbjp527+nUhQzk3tsJ7AK+dEMhohlQyhkCkXzcqP2YPe0nOB5IMkM4bkWLluXDxv6t8RMPcV5OEUP8XJ4IlxBF0IrqIn/tYDehPthc0LAg6fh956Mgpo4Ugj/ovd2xzI0O/VBcAVLiXms4gslM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787871634; c=relaxed/simple;
	bh=fBp/qVU0EaZjwdv1a4MTT9lFfnyT96cpvYeiOjtY1e8=;
	h=To:Subject:From:Message-Id:Date; b=sBymu1WuNZH3pglVyBc/rz72oFzHMIwikmzhY4/CFQuZ+6MC7eR2driKRaY5lOWjRdCFofbceOD8PLjRvRj1HgiwBixVzpQUpQ21L4SgjpcaxXJODHEqueyN6ka6Fv0v4qMnzP0LRs5/97+n6VcWemzm2LpDAheHKE/ghvZfkho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIJFf1Xb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIJFf1Xb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CB5C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787871633;
	bh=fBp/qVU0EaZjwdv1a4MTT9lFfnyT96cpvYeiOjtY1e8=;
	h=To:Subject:From:Date:From;
	b=BIJFf1XbEd246itonDzLmidoHOva8lH4FhNeOlPUgADobcvFh7gMQd5jXOuwuxI3R
	 grw3RQBe2uODYfztjR9iTFtOQ9L/E/LJtJZNAf/LSHwMzOP1LJSTq4hRhJKUIbG3bx
	 Gvcsg7zW4zqFuG0REjLoOzhXjA4PMtdTIxaFKHOPFc2uaJxKHQASmGs9PJ8m2KquU4
	 2oMpIVsBnO5YG4RsakZdkrqhERtlulTvzWPfsZeHsQHx8+xt0j3hjNPkt+3KIR/YXz
	 JGXyDjCG3j9++AliZK/F8t3pmzC1quObBC8Ad2y3wjwnAioCNO6zd5qm36mo8TMUdI
	 P1zWz4nfSvRRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E9EC61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178787163369.17951.10215936374486300389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4b73534a881700bca6928f06c426cda76fbbe391d0767432c1a037e621d86a
Date: Thu, 27 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787871633
