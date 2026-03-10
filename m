Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34A43D47AC
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773165294; cv=none; b=L84Q8NTxEldptX9f4+qOlcVjvJWBsURI7NpzliLea/vuP+Ql/IUEfaNA3wfjPLVZR+VLzktVGJEWOBDNtkyM12NBChODr+Zj9/ume8HqWAUrskyfd9abGkaPFh4xAxXcFQuHMsFdoOPJ87yml05/jSBk/N37vd8auJbixHmUefI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773165294; c=relaxed/simple;
	bh=FCTptCTwLYIz0jSmq8hJaae+W/xMEHDSjquEQq8H4es=;
	h=To:Subject:From:Message-Id:Date; b=SzGibbPONI2W0mf4JI8T9BZLGh7WSn9pDMNXIdxzzSQptytfjft7Z8Yk9POpwb2W31BuMOhEMacyK4Em4usOxZPJP8QAQ8O5Gcgdb7cD2LAsAKcalWJIoAVNqRjE57HAGuwIte9vNruETvS0KEyH+5rt60YGirOmrjwCV20LUYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gg5dKP7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gg5dKP7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F8BC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773165293;
	bh=FCTptCTwLYIz0jSmq8hJaae+W/xMEHDSjquEQq8H4es=;
	h=To:Subject:From:Date:From;
	b=gg5dKP7I9xX1vQSE3BvuTz7bMsfOQJ89BrDNKBdw2b0iMCWD304wNJWRpVyKh0jZn
	 UmrCXuTMF1XJsMP4NqMkp6kEJcIlAXCcHz1r3W2udTptCiCno+kiKg8zN5bkpiZilz
	 7fjVNXma/eYCvQYY9PafXltM9hNtdfjoWYcfZ5pRSkqUs5gn4mSON1JYw2b06ZtutS
	 xxu6qixACELM3xqZ0NCyxyWULuGQHXGcg2H+BJ4D5tI3MnD476pRGknik96KJkugeY
	 q5L+pzq/yOLmnzZxjlEvst4AZ3h63dhH33nKK/jhCzz/8uhjFNmSUuB/UiCNd1t5ib
	 ziOpjb+bUFdLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FFFD4F08
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177316529357.9524.2864182312915980980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f798e777ffbf568ebfc417b541b228c622b93c7f1704b60c6457ad91f8d17fee
Date: Tue, 10 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773165293
