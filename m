Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A5E3D6CB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784691514; cv=none; b=Fj73dt/inANCsGXXxVKVTmhKaxkPw+CmCwV29V5P2s9qCMsNPcrC0Y5akEe1RtsxQ7X8N3OWkOhAXOt7f5SLz/wSKwZvJRqq1TZWvU1rS3XhccUuPDYULmPFE09FQkAV+U24frRUcxxhYTLMgZHOhjh0sudxKWc/6gip39zr3tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784691514; c=relaxed/simple;
	bh=O5GCV/EBRXUb/PerriDtpIv1KPt3GM5OdpYL7SS7jP8=;
	h=To:Subject:From:Message-Id:Date; b=FCEyF3kpHtCCGPcPyUD2uSd54LvxcWKmVD/mUUPT6UV0quwDIxCiVEPsriyPLToeEDkqxOSZazvbw/Tfz44mot9W4kl+gO+S/F5CQJeUTUX/E2Byx4umEtfWhPTQwOYMxVD3ejWwwHzUCFQAQuAXbPr0kimfRf5/cMlQ9r7ziM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omlOKrUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omlOKrUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B16C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784691513;
	bh=O5GCV/EBRXUb/PerriDtpIv1KPt3GM5OdpYL7SS7jP8=;
	h=To:Subject:From:Date:From;
	b=omlOKrUoHbymoCZ4tUQ7oWnaAtcfk8np+9qdv8N+xzT5bUbs7gnxihnxaEYLosWVf
	 aHnzSMfoWbL6FQxlNxtf6AJZ7E6epnkTf/OM9Ywqf92yOANkKpppvrFDpV3RlLmUZT
	 QjTBkRqS5pP7eGvQtQ4r9TEByMOtJ7Yn6n7Z0Qtk7j5YSn2s6TF/mKrRMTTw47jThA
	 rcG8F/tl4BFkddE5fNfCmgEPL1Vb0TeVwBbvZ5N2e0W6nBtbbORcgZjYtpo/OnurtI
	 FspHzZpPaqdaXNGMMabJUDN2mm4wuc2ET2sByhpt2fyl6shnkfUK9nvFABMTW1/qM0
	 PH/saJKdB74iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA50DC4451C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469151368.16956.5747427227943008808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f6485e0c2656ef91e0baf402c8faed6e4d78253bf7331809401dcc8ba0b5930
Date: Wed, 22 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784691513
