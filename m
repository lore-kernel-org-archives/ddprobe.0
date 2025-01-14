Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504F61FCD05
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736886954; cv=none; b=nPIVw+wnbVIEuaTgmrXCoUBlNVEEeeMzOtlt0xDIeIQYlc2yz0R7Gc3tNGUCSupLxWu7DigYno5W8+pqtXcIFuKgmMf0WFGuPIxVooYjRV+nxgpmXTP7fgLdtHNrQfctrGASMCbcVGwNgdcVr32D0bGLXK6jWviTVvcXpBs4P+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736886954; c=relaxed/simple;
	bh=4itYwIAkKHxU0tbUJmOz26lrwpKRbmKswEAoZGH/soE=;
	h=To:Subject:From:Message-Id:Date; b=sCj3sZ27qEnyhsb8gRLxlolF8qvlg6WW0xPpKaXiBZR16tpGC4VLXptpAeqIczmQmFAfEG1KXBh7UmF3GgPaXANTM9ar4ltooVHtvRMR/YTDMmuiaHx+wQn/ckt7u5a4ZHymXlvPnpNJVEz8d8hX5t2Nmwdt5peTJlUW+5Hz5b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptVBxtJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptVBxtJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC75AC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736886953;
	bh=4itYwIAkKHxU0tbUJmOz26lrwpKRbmKswEAoZGH/soE=;
	h=To:Subject:From:Date:From;
	b=ptVBxtJ58e1ecqE0cXfFk70UT+ILk20MBpArDVsroYJ1erFhJSbgXrgw8YEq3LIWN
	 zhwfzTReridfUD5RxNxf3fPKSVqs+fmTo54DVNwNreqFmeJnw81x7vS0wXoGq/Cpbt
	 LwqF9FDrF0zaLEmuQsmoxpttQCajZbpo9yN7t+/cY8euPCY4PcNw2GmTUoxStQdgD6
	 1yXuZt15WiciqMgdTh7M/zzwuXFW6NU6i4OToZt7S/nSZm1lXGx1KVAO6+0xVkahBs
	 E9fRoZFtpGcrK8HKoQEfdRk8bH+szoTBFkrDL+/nItEpzb7rKxDH+eqmoFTERkrZWD
	 B/pP6IlljRB8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D8BE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173688695358.930.6499363883827386905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad596af602bb909de40bd17be3822228b2e2e6a143084e8a6a8e17827873f240
Date: Tue, 14 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736886953
