Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9AE2628D
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778296654; cv=none; b=aHLoWd1F1t76KYqrQCbboS48M/VFD0ko4/81M6+4r61wnQvJP9hYIBeSAWRf/5Fu6ufCNJKB6wzyZaSwdM3Brv0Dfk5u9PjU6RccwX657jw/CGux9Vu4G2D1Cg6X2Ao2KlcJJDaOKrwLTfsGHV3DPM1nMUQ47zeAfAvDBV58sMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778296654; c=relaxed/simple;
	bh=piqHEb0uTc9rxkVhP3q42OZT2F6PSgeFkK306P8EAkw=;
	h=To:Subject:From:Message-Id:Date; b=kLJDrmnb8IQyDpjiH1ncsoK9KkLGcgt2t6aHN6C3Cg+ouDL0rLkr5JLS2BWKmooI7zieyro2RDDeH/iYIrSgudB663o+sQq/zNINdUfyFvS/9uVdtX8hhT4em2JugpsCH1RL5yuH/w2S4SQPPopH1EZuPM/KenhFlfCmtakjigU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQ+QYqyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQ+QYqyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBC6C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778296653;
	bh=piqHEb0uTc9rxkVhP3q42OZT2F6PSgeFkK306P8EAkw=;
	h=To:Subject:From:Date:From;
	b=LQ+QYqyw+y+zFSLVc2HDNfaE46EQ5wXvWimSZtRQMAP229bhO/FfXC8yvBOt8c7HW
	 sR/hQBVNv9Tb/WQmHDuG3Y0TT4rzrfuUM9hSd+L1Rd7jhNAZtY6An8jypgSyp9pxcM
	 +ii2COSs4iswWWFPTBfbnd9moyuT9Tvb0TUH1CBdgaydicbkC2ulagzob8m/etiL8J
	 V6xPG2D7Ifges7UCyIhRjWp2FtxeOAcl35RURAZwox0uoqPAGdQypQR4uhuImxWbGv
	 ABf5S8pSVvX5td8v3kXZ7RFf4C4PDFDNs1UTRLNREOnkCvixTBvur0N4q6KYqwSuxt
	 H2gfV2PRvZ6/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD654CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829665368.3572.8558154305746729586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46268c49ce03921f39ba415b2034e524c44d86eab1d1f67a2587bb11b407ac6a
Date: Sat, 09 May 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778296653
