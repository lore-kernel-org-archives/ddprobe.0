Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A273A29F
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 19:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716663863; cv=none; b=hPH/f22MQVpKSEt3DsEe8NwBdLIxhusYn289oMYYqxkPTFuZ+gPxtLjLV8U5smRHkNLjhm/ua2vSLjjjCDTf62DDYhzsZ8HVUBOvul/2Jtpq198DmGcP+NbEJ5ZirTXqTtCF/v9zvVp9ubiQ7ee/0NZjX8JPq18W4B/sgJHwrLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716663863; c=relaxed/simple;
	bh=sa3EUZLpXs40Wb5McNGqS2VLyBdW+Ux9aa8jw2sJpks=;
	h=To:Subject:From:Message-Id:Date; b=hGzwEmpDDj/43RosSTJt4jCRGzTw/GWR/VFgC2NU6JJSyGmyzTl+iO+PlJXwPXHguy7RuSSux7PT1eE4/qOr9sYX/bHZRUP1jsajDi+4YSS2N1lQpAEU9MReOPOpBz8DwFKduLj58i7ONEywY3yNxmT5b0md4GkQqGd7NNB+Sd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQQb9N+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQQb9N+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D814CC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 19:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716663862;
	bh=sa3EUZLpXs40Wb5McNGqS2VLyBdW+Ux9aa8jw2sJpks=;
	h=To:Subject:From:Date:From;
	b=GQQb9N+yuPlyunHH1iiHkrhZ3ov/NJtarctkUQWe2MhwvOUdRvzf1mVQKRBwukShY
	 X2zcfNKhq5CblEujhaqsf6OWvTaReWOthfhdL4M8ENAZ2oMPILLeGH3WXB5bXz6wTh
	 IZ9UWraENOGQMn3okS2WIvrr3tJy5TBFiBo57hkuTq2DZukMmSvXvHCx0CqvqrezVa
	 Jw2EfyB9nIHqYO9pBPDz1jdju+/AlvVI5JUSUnDCOLAnMhvKFvNDrXepPkGElIoEme
	 UMlBy3qtw++3WFH8zyO2vmJNIgwRV4VB30g1rAveg8Tv7LS2ViI+vL5RAuIgEo+o77
	 D0u70ecikxUSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C15C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 19:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171666386277.9120.4834176421962588479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1012d43cee2384cffccf27e2d5b02a694f1580ebee61061232cea5f59237fbec
Date: Sat, 25 May 2024 19:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716663862
