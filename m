Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277D237D12C
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770048834; cv=none; b=rIrly5s/M150plt/LXvC0IriT4jC5LHRLyO0LG5jUreGp0lq42m0Fm7NIUwe0A6JwZOyC8pgsp17oUiIQ82YdnN2sH/kuLlcawtlK+cVBgd70zXGxzOUDfDGI+Fo5Nym3j+XXnsQANi0cl2uf9s6eILVxiloVngO9SfVJMDpNQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770048834; c=relaxed/simple;
	bh=l2TMxIHWygr/JaQurW6XPmH1gOfPks5TuQSNVhSVomg=;
	h=To:Subject:From:Message-Id:Date; b=dgQcLW+Gtm3d+T5SfqtLS9BD8tgj5AY1bkDQgbqDDrZ6B5LzQhguJzXiBEaLPmq6wlKkuKWPmIGzm4+TDOCIMPI6u7UJbFb+X5nOEmk+qy9TCiIMXAmT1p/CmfNcwDRVSZHpZZP9V6RjYzCh+OSPCnbpjkkJJNEGiWhOS4b987w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRA2A9Dg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRA2A9Dg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1891C19425
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770048833;
	bh=l2TMxIHWygr/JaQurW6XPmH1gOfPks5TuQSNVhSVomg=;
	h=To:Subject:From:Date:From;
	b=pRA2A9DgV2vffv3JVFr3/l6FaL/WztCqcgtGkT5oMkdmX9poeJKR8DqBSbL8aVxD0
	 fsv+k3T7rTfCFeBdbIeawY2VvtDLWEnbwTkRX8knAyl5tHpBvvdKIXr034zyGBBnr7
	 ikwnV7dCVT20gJxty2F941tl4rjsDkFn1okEqq5kbKUl0DKKsEztxq8QS9MY+Idshx
	 KEk9DRzdBq0LULbxymYKS03Zb56etemMDKwT52kk5KTfxTeQDW16rvwqtp+CSMoPOM
	 nMd16f+67U4mrir11oDzZRC4vaf9xS7VXZAMhe1u4DsxXofpQx3l6Ck6XMTD8fcQEq
	 DkOMwwb1DQGFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99254E7DEFC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177004883361.26409.1981721163665204975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 184cd9aa78e36ed4b05f6b14ba95f5484430d63059c5073c9f4d87d89eb9b716
Date: Mon, 02 Feb 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770048833
