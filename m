Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B81B334C0A
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764609174; cv=none; b=DlwL8OXhUCcB0CN0+zMkHAuLV1RSBfcxvaoVUpZZbaGMrhwoVxSu3pH1He/FImPF5XIhN9QKekBtlg1JdefIFuGR5kH4XSrFT6VzGXbUVE4SFJzf9w+mYDGyzKkv/CLlvlPI2GcwSrOyjtW9RLhjY9amGVo0gRHuPQf38/oiHhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764609174; c=relaxed/simple;
	bh=kBVHVoXLoaSje1WhMv5TCLX2UMw46fAMTSe99+Qqf3c=;
	h=To:Subject:From:Message-Id:Date; b=B1V2Qw9HazgD9NrtF1sEHKMFDyRBwZ47ciGtZmFbixrRNYIuhTRuCiHcAFlP4UJWTpJ5JRFBp+hpj/47KN9duRY12GJF97+82gx06AXkQtkzU3rU8/uffQ3X24d/kYSFflIJ1ljRdtAY+FnbTNN4FZ/9oWRydrdsDKuntBbLJR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwEvCpbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwEvCpbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2915C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764609173;
	bh=kBVHVoXLoaSje1WhMv5TCLX2UMw46fAMTSe99+Qqf3c=;
	h=To:Subject:From:Date:From;
	b=OwEvCpbtdJZtKeV9sJIGNn4+/0hLDlhyl0wg/i8y1ePjCgCIku6V9qxHKKSzbz74W
	 U1XeD6rcqR2cHEsrGT2FvLuJa0+hwss2JbFc7ughE8khcNBH+DusDV7vqDtApgfDN4
	 j5Qq98PP3u4iCGB+N1z6hBUYaJdDwUwhYNxC4qkqiwTdH2DJdksZTAFLkXkKysJ3mB
	 Jf0zKwJ3/+hQbtNmTUlYWMB0SvreZ1P7dZnzskl03mE9yNN2OqKGrqItRiRwaJFRzj
	 t0BQzeTVKUIdsQISkJQ1sXfPrVkGxy5/B0+326QdJe88yQK+smLpbynekxpdlahFq4
	 /pOvAHJoEI2Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92662D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460917358.11320.12382813225236124544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e421a08fd7e4346d62e922cf94fc73681600f680bafcd706d6bab2f18435c10a
Date: Mon, 01 Dec 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764609173
