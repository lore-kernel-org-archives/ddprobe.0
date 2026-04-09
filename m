Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8423BB4A
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775720134; cv=none; b=L+6YnDHQczduV3t/yN4d4srr1Emwbp6ffdf5/U/idvmxJMQubd7EXnE9r7QNE1r9rsS06JTYeiKOnnNUfYn+w7yJfESbKrx8MODNW/ciRmFxpPq8tkomZPsMTOniQWDzR18a6UDlPVOEWsK3w+4TC5v8z64hFZjXniYLyhaFRhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775720134; c=relaxed/simple;
	bh=8f7ZxiwPvaxg7B0sm0q290Tedc9M4RtI2OnckfI4gV4=;
	h=To:Subject:From:Message-Id:Date; b=mlUBdKcopTvDLMESCGptzadVOmLZPJURVRZ39xxVp4k7Dnbu2xWs+415KLz/tiOMr2KAxHk/LG9ApKH1gJUW4OANx77OqEmONXstBepuILrNpt0QBoWoRae42eCc0lbwZ+H13X+baiTVlLQzPF8byU3z+NGVhwLsHLrxynmbgUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEwYdX/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEwYdX/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C533DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775720133;
	bh=8f7ZxiwPvaxg7B0sm0q290Tedc9M4RtI2OnckfI4gV4=;
	h=To:Subject:From:Date:From;
	b=QEwYdX/1MTyGZr+LVhHU1gdX9zRaWZhZOgI6d8JXG62f8tN9pQmd6OnJ40+cJDy4G
	 j76R0moLgfn1kMy6y9BDt4PxyvgSj9zT0YUY5MRjp2RmYmbgyac5bt7tPjWo5GkBDA
	 1fGU+9r+SjbxQ4JwFfEcbI5yxRYD9tMCqyvWibgZVf6PAVf69Uae63sOj21vv8t91N
	 3AQ0h691gN1iu4UYFvrLk35u1rjYnsclU2JtYibj9P9NWnCy2gBV404UyuDmt5zXar
	 OetPWy/c/I+0Kd2FPZcbIdbx0rWj+YKNU0ZgHHgofijhvBKWKKmJkUHPjNPLB77GCt
	 sWIGLqGRGuNYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0309E9DE5B
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572013369.27771.5005554009110374401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce2a9921610bc90ec04d5876149b48cf2dfd447a0eec14c7710329e88fedcc9
Date: Thu, 09 Apr 2026 07:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775720133
