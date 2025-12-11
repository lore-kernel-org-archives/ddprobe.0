Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A910278E5D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765470174; cv=none; b=KWqK7QP6t08T09+0NkklxR8/e+K5ZWDAvNFVuaE3flfUxhNzhiYzj8Kv1GWq8DDltxnqvnjEflh8blhAWUPDiuSDVEZ7fk/8zda30y3C+Lu7faVwMLqxhii+66jg4pEZqvb4uasso/B5KQBv4Pi4gn86X9pMW8pWrJkYRGVFMXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765470174; c=relaxed/simple;
	bh=eprUCot5cht0/WKy+r0Hx3gEUDbS0DByWKdYRWzXHeo=;
	h=To:Subject:From:Message-Id:Date; b=AmJTApd+1DWv7yBbWhDtAh/bwSQKtDwGGPx9aUY/hmQLQ0IjSI54bsusKUODQQMSsDLCRY62ezGJn/Ued7Lf+6ZcVdN9b5hBCmQa3OEySXGQVu1N3ngPfnrJkkXKGKHmbObqdHRVD9Jmy3OPeZyyxtQTkLISsy78ZiGioH7lXag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEHXK9s7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEHXK9s7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70EBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765470173;
	bh=eprUCot5cht0/WKy+r0Hx3gEUDbS0DByWKdYRWzXHeo=;
	h=To:Subject:From:Date:From;
	b=IEHXK9s7P08lgydxrb3vZ2z5wvuSlpCvSsx7tC7LXzv20s1NOIBADo3WRpvurg/iQ
	 6V+fmbsDbVFZDLTs76jKyTBiG/Sy8blE16Ce/gq/KIODMHlcb0r3p7sQsGHXSoh5Ln
	 Uqjxwc+73C5TYsISZzPHFSLQSFtY8ctV7US0NPNgcsfHgX/unTO86bKnpIsAGem+Tm
	 KbKMGApdUJmfuEb2+RVum3rLEz5wmm9w2vrOnM72gMKE3M4eFsRs27Q0/lSRira4At
	 cmCPIQTevwXNX4lFEzS/PawpMK4SVf7C/EykaxdciDhxAX0W8Sb+2sp5qEFmPXZVLF
	 UiwbCDrdSS8Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963BED41D65
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547017360.3643.6999949571076370023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf332a6b6755d2e0e2b202fbc103a343835969f3dd987d39ced48cd4c5e64c25
Date: Thu, 11 Dec 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765470173
