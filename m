Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2397322B8F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774463694; cv=none; b=nO3M6KZNkiT3FsKYjit4PvNYkgRGHejS7SrnhLQ1xEh7FGcCkezTyf8YzpO+wPn7/clZN9Q6/m8JAugm3ZMfu3MgI1yQUXxxiQALR8nP2hM/Et+7b3nMTFvV6yvouoFAaZkyX5FlKGK6svJrIBFI9OLJJ455KGoo8Ee0NRs0YCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774463694; c=relaxed/simple;
	bh=0fxQCCt8bsTBizakZTwKgYlBtnpKMTVsuicQtjnv4do=;
	h=To:Subject:From:Message-Id:Date; b=kg8JxO23pe0rMT/IzJJkvVoDu0oR3fF2yTZY4AtRjLnBCaxCvI/VDNqbEiExE64bc3E7Ysp52c0SC08+tgpii/YbISwa0ht+Y1LGRZ+LNlGSJtuRyFgN7mmXGfqOI36sA9i8OBLsDkiNgwnX6pbHVg92oNAhwVztyUYaPT0ZIIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQbDAz1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQbDAz1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42BCC19423
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774463693;
	bh=0fxQCCt8bsTBizakZTwKgYlBtnpKMTVsuicQtjnv4do=;
	h=To:Subject:From:Date:From;
	b=EQbDAz1ZzmfN03rGQCZ59tUzuFhDCVT2sebo3W4hZTMmaWF0UXYYw45LnCh1KjlF6
	 ZrlBq08Il4Tr7hnCMdu4eT8hqdsg9E44/nnIxio683matJAdCqOX52JS6OJ90+fI+L
	 LwgOkla5Qm+abhb6coiQaiRUtTOnlXXNqmyurvHMMP3w3a+bbG0X04knr4/d7vYFPt
	 M4r85i7jUD5WftX2/5IKxA+U5S7sn/jD91QyCquzSYRXG9/ryJ0wUUuut17ciunI6w
	 NeBZZxTjVWaxTcmfTfk+nYGQZbHD6YoDDSLSC7Gcg+c0V1Iol+F/upRDDimAxyjDxH
	 Jm0R11nmyX0DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A8D109C058
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446369358.684.2235217886364013036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14a5f342bf0fd4c77f74a9559b9909c76e703cd200d7a764db53eaa95350b52
Date: Wed, 25 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774463693
