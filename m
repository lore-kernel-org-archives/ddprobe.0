Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3214F400987
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785408634; cv=none; b=KdPOzM/G3Ku3AoCsnRc9xYLvaVMVzwW+h5Z8fc62tugstWwOlxUKlr7MquL63hsc3ehgMGD/I0ziM1PM8kS7r08wdBNzJ+AqNxL6yg66NASNOkLhsnUpfi5e0OJAO0l63G16WvVM/ypg4+z9KMEhp51c9SzJKF+6wEcihoxMVKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785408634; c=relaxed/simple;
	bh=qBcEo0uO/jFp5OVSCK7W12b0u/O/qOsXe4/pIg8G6b4=;
	h=To:Subject:From:Message-Id:Date; b=WNaP5IblPj/ve//jGKc5pG19Gkzxbl3YRQ5lArco/CXXzhQG+F5pxqi2IFmqNraAtygcTglbzcFKU80ED91N2h6SB0qh5Uh0YLzvvp0kT79pxgaoc1E0gk4bfggkXkTHI0stJJp/1/pQTQpJMOX3NbbNMGhC1DuzV0GNQpQllF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtqPT2o4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtqPT2o4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF11CC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785408633;
	bh=qBcEo0uO/jFp5OVSCK7W12b0u/O/qOsXe4/pIg8G6b4=;
	h=To:Subject:From:Date:From;
	b=rtqPT2o4CMRwLdk7JosV1IYenSyrIJnyokssCssEimu+dhl87ClBEn6MWVgtlcqxw
	 Ga2Vw5nUo5X+7T8i1DXRG3+d6H7gLf3Uz+mUHEaFgov603OgZzBy6m65RTTL+fG39W
	 BSsKEK2zV4/InD6RwPx2fg2gisd9z4UE63mgdXTGKSRBKrXGIlQabcmot7qUGjARD+
	 vmzptd3Iu2fZelgIZRPQvbGVRKq9ynVD9fBDo6fQgGshD5r0rPJ8J0bS5GBA8+ZXeY
	 UNF6LpH5JQNWxiMXHsy9TjlACrA7/PZpdTYcYkM9F1Jzg96jzAAFkVFhZ/+odnFpRC
	 h5qAa+JuLu2dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABECCC54FDF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540863369.28258.14257286489613754516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e7b928e9fedf9565f62431807b07ce339d8e3120a72bcff23176a1947f6af46
Date: Thu, 30 Jul 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785408633
