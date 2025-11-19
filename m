Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDAE368266
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763573514; cv=none; b=BrOt0zGzqyUVMPeFqiaoSRFw9JUQaUd+GJQ3mRxCK6v1D8jxPWvopPnL3SBPMgRRyp+vLR6RG7M8mSjiSFBER4PTnRzOSLnlm9MSQkcUqj32qftZRQP5oxJ9d4x8ZxYkUWdVkb+5VMYaGmeDAHClWyBZRzWQwWSIwhHB43yqDlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763573514; c=relaxed/simple;
	bh=4f2Pv8+6e8Lf7mFP6Fp2gVi0weiUCj1QH05frP/Bpfc=;
	h=To:Subject:From:Message-Id:Date; b=Q6VqOECiEOwXEHVZ6bPNixWWDfq8KxOFJSXRdoxlJsZSwkoFxIeMTCs5jD8sBFdVyCKI5s1462mwI8XSTDC5LeFvzLaT++KY3Q9JuLEo+sSmSLPp3Ttkm6Eg2rkwJID6JtBmaWvIOijHXzvvVZ9e3jdKrMbwH3tIZ6wiZSIQSvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwcq7pho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwcq7pho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6483C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763573513;
	bh=4f2Pv8+6e8Lf7mFP6Fp2gVi0weiUCj1QH05frP/Bpfc=;
	h=To:Subject:From:Date:From;
	b=hwcq7pho2o+i3J/uvqUipAtqIenKJ4oR8oSDYqLghk9OdcJfVbuWOpI7z78NhT1RS
	 uwlvW39Wbj3/qo1FNrpAY2cE8HehY9jOwW3THUJ/52ruQtxlcr2cLCFXPEg7UnZ6Ru
	 mKkF7S5jUQuIYPe169ELC2nJz6JJuzkeNiyfHXXU5xsk16MW9igHIpkWQpmbRGbJ2F
	 i46RnXCqg4n6abYF1bWXHhpRiolvgklSOhrotucATMuu49I4LHY+YGKZxA6DLa5wOi
	 lc6FBwV58Msh8EFlZTKG9YWqP2KQzzDjuxALypZc30YLf7xRqT5exfEwof19O6K4kW
	 hHk1FXW4G8lAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D0DCF58C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176357351360.9665.9742263705280549999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 755ab0df8c76020409e5280083399d7938e4a3fd04cc90bb1c2cd4dfbceb4dc0
Date: Wed, 19 Nov 2025 17:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763573513
