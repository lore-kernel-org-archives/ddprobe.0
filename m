Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8C9221F1F
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763146194; cv=none; b=qpFsmp00zdKc16OET7TkgerjOL6FjJ1MAkMMYXF0vtOLdQHxUotCrt9dJNGkqQadPq8css49JCjCV7rpbCJIE19uax02wKrhWUZRVLCnvAhKHYHtclgcV6PSF2B0jCZ6LQWdReT+nb8nnPjyjRcvVYdsgEzucLmVijY24T8FFx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763146194; c=relaxed/simple;
	bh=K9p8G31N6oXH14S8QE1ERiO29K4ZNaZEAT06AhE2iDM=;
	h=To:Subject:From:Message-Id:Date; b=t0+1xcMB/QwmQE+iNK8QdoLWGi47d8BmezJcrxA4C96TWgpRfY6hlc/xNvyh5aAE+OERjYPySekanSLd818L/u3s6oauIG342qVa3+WIxVARm8xBidtbGLYkXGTfb0itWMb5lU12ElZxnEWrwGwsigQfPq3OWuxkR8j2pb6KqfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LA0Sg+Oq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LA0Sg+Oq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B9AC19422
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763146193;
	bh=K9p8G31N6oXH14S8QE1ERiO29K4ZNaZEAT06AhE2iDM=;
	h=To:Subject:From:Date:From;
	b=LA0Sg+OqSKAdad3sDRt81KI1pLXffug3AHSoO3jr3X+TT7Oj/VOEebJaJBelhPEHw
	 OXUmgQcEROB9/zEiKKsmS7LZHyyXWXw0cs8X+jQ2Q1ZkulQ1ednezU6UOJa4qIfjCN
	 GkXngMyjaTbbC/iVkFO2ErRzgn4En9YjlzJ/MzRHqBo0tIn5gA7a6/XyCZsAB1l0aM
	 KNce5nB8m6kJNrw+i/MIK/ZuO+F50GwXgwCeijnAKfXpBc/Ln9Lo0oEq3+EOr2XAos
	 Z+H/Vzl2/YBg+LCgyUsz5qYTXxi3Doh64OxFahFkXdTsDbJ+JrzX9+hmBR/l3iutd5
	 ogtZvqxFi8a2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9624ACE8D76
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314619358.13366.8339996338956608875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aeb3845f280f9aeb866931e32278ebba153a3e6931ef3fc622fb3243f2b0d57
Date: Fri, 14 Nov 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763146193
