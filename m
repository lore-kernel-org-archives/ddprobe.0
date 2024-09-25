Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270C11E49E
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727240154; cv=none; b=GiKAhBGxtJ0MAYAvrIfhOPEB7HDEBqpxbMg2MSL9hzGLWLgwlU0Zqk9zLDD5jG8x2r8NlBhjDIw1I4H3a70IckaHgpaBI8bM0fCkcs/9AS6m3Lwdq7x52qBMW73DK6/ArRvEseN1Mdz2j/hEJ3z/5liBFawHHMHVX/2DFRkf/Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727240154; c=relaxed/simple;
	bh=81pe1B9Bk92gc615ylCis2bbBWd/tGjWWFmUKw9LPqc=;
	h=To:Subject:From:Message-Id:Date; b=XnSK17TnYAeQZya/airPQijCX5lqoae3C67OEybcD6s3Qqm9hp2cr3oBztb0vBVyt2gGX2bVoF/c9dOKb8XHXUV6EtgfwfHIrW1SE+fIt/+YluVcRYSmVwmiwPVagFGBN10VWsQRVd/bojGdYp8701typ/i4h4dfi8u2HCtGi3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Il8WhRrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Il8WhRrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDDCC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727240153;
	bh=81pe1B9Bk92gc615ylCis2bbBWd/tGjWWFmUKw9LPqc=;
	h=To:Subject:From:Date:From;
	b=Il8WhRrh4tD6aHCOObn4hyiAYzzY2dVmMiHwKFo/hWrCTcT0GEC4P0zUmrHsspLTC
	 O+pJGqq4TSr9tEwS2qz+2XMl+JYO586riP7Z6gPYX1B38/Ch9UtaolsVxw/BX14z8K
	 8ynebeBBDvyrlNmo5zpS19FzP29oNTA5YpClcRYd7ICmmL6cyxRRcflEnY8SEs6u0J
	 FJwWjXDKMoCfR6E7ycwpgcnbkzq82Jq12uJLC2Ddi50buV98uSGffrvPx8Jc5+qOjv
	 /qho4Hyie4uPuMpJbaUMViV0vqy5eN+sgFeKNOXELPZBVZVCHPBTQdsHzHpD8Sh8pF
	 0Wy7upIY5eWUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DC8CF9C6C
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172724015358.18652.16238771663774605547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef5b16ec17e620b8dce57de9f797cb65423c901e15b074797d59506cbc5c082
Date: Wed, 25 Sep 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727240153
