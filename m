Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1184F29A9FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751645994; cv=none; b=ED1Ecj0a/t7fduADC85ABh6OCHe5wlOD2QK1dbfVGqjCFDuWk3DFRPKnfjusGLOcFAKWarhl+7szcHf6+uhHYzSNKkzn1z7SzEDtOIRZ3TBbp+1R9cbHYXgivJeoqZb9NQug0Wn2JNjAK7TGviO5hiF/s/s5No2zVtnpMjMK47k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751645994; c=relaxed/simple;
	bh=VImJlyB9ZpsCHXw9czskVA/3jVEIhhzeicojJQAPX1U=;
	h=To:Subject:From:Message-Id:Date; b=p8HvfSxO5Pq6pV+5n3V8JORqzr1Ow12+GBukyQxPIylPI9Nye/wCWjuiAn0Y95s7+uPAnIwA5xnn1KEIhefQoDdCHvj6iBvdNEgTID7BBuZBV0FXQy/2oBqqhXg3pCrEIKhl5i0Fd37DlJJiO/fGQ8R3zhf7o/YnX7RulIgLr7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beo7X7NY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beo7X7NY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E282C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751645993;
	bh=VImJlyB9ZpsCHXw9czskVA/3jVEIhhzeicojJQAPX1U=;
	h=To:Subject:From:Date:From;
	b=beo7X7NYWldSUSNt14K5RHdmxeYeTbC6ks/JxLpyI/HIa9faqIiKsiAQy3sTvClk/
	 zJdRLGHZMgMjdl3NbqEtnfuEYU1Qg+YHXteYXPN0wLC6vFuRbIy91zEtCLykdc2aIn
	 agwRJzfEboCY6QZ4qRFpP52DYgkqBLdR9n/cuR36WPnXvnN8Emb1yT2K0/mtmqn6oO
	 gngGXstPztccSKe4qqeuS6oOQQuIIkTERlbAhLo9fcn/mOUG13YAdlBaocLj7/syip
	 JE2hjUfqXXJObtrfPwjIVilwEovX7SsTMJ9idnYEfCFl2XnQHiblp4imkGbjVWg3G+
	 Vm343INQ5PO/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE1CC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175164599357.13433.1731952579270785564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae1f880dd5435951aa6f2cc0c24dc899798f435e4f015aad2f9d58582c76fe2d
Date: Fri, 04 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751645993
