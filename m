Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186E81F5E6
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764030774; cv=none; b=F4X6j3yQQojBoe5xXjcgsel70JSE7438y6An8ritVri9qvFWRRdv1g37cSO80uvYnvSL/80s3BqiwS5txhrtkLRTmJjALgYG+7gi+hze/RXUUDfoJKnLXfn8fyJoGaY4p5YE+HF7ETD3IGc+N4MtDu1+jkMbSkqxh7fF8CaPLWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764030774; c=relaxed/simple;
	bh=vI8xr7VzcyIJ0KsBRHf6RI6Bxrjtwu31Tl1d+wTZvqY=;
	h=To:Subject:From:Message-Id:Date; b=EcqACp8JO+WINDd8HictHBGctQ2ay8I42wsZGUDa9c5VjJxPct+/kwPYQLlAm6ovw9JpGQVFLMSdwbZ9SDA6OpZFbii2EhwGiWgnoSkUaHluGEJFDrET8vBJ5Zan8KibMP73BTqVUzdIiFMm5j7ZFYFuQsnKkgSikZwkaEqr/+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qhsxi2TY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qhsxi2TY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BE3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764030773;
	bh=vI8xr7VzcyIJ0KsBRHf6RI6Bxrjtwu31Tl1d+wTZvqY=;
	h=To:Subject:From:Date:From;
	b=Qhsxi2TYcJ0KwBhrR34Z1UfHJxUxbpwQhOxp9ti7doOgw66LuM4LCOh8o69xGStWg
	 S+3BX46uKtzQLrYZdTT+LnYIAflJsMRT43oNoFj5wzhtymdSwXeGFfntF6R3KL8BE/
	 4IMLZM4xI9Q0sAjrsSXNZYi8cS2iEkLNwJUrRiXLPNLfJPbyRlK1I474usfs65zrVQ
	 bhz1ik0NMB5V2MB+tQJhkZHmaM3pI9UeHwM9Zz0mdEzto4yRpEymqk3cEliMqftMbE
	 e7KlQSJcbTyx/mTofbgCfO1WARSyuL+agk6JPnQRkQ8YHMnJYVkTlQWjU2v9D/czGH
	 jVZLGwAHOg3wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911EDCFD36B
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403077358.11973.2180210643717836236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec505ef272bad7286a52f8340a2075b826ff993069ce3feaa299b19c6e59051d
Date: Tue, 25 Nov 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764030773
