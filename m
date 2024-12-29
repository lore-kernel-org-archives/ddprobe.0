Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381F410F1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735440954; cv=none; b=R88BGTKqitFbtj6kHyHjB5cib4SwcjnneehSiKO9av4Vrdc6fONfxBdgIZwONAuM2Z05DY3OaFibwL7O2di+Y0rzsBksfEeXYsgeaWdw3BR/azGOj/SuB/Z81dIYUh1C5k93qLLqtITdHBg06ymbuC8nTRORaNIhbqfeDyp8GuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735440954; c=relaxed/simple;
	bh=yzVvVNEwL269v+ATmYZS0dZTf/M4Dj2ARBrPwsr87SU=;
	h=To:Subject:From:Message-Id:Date; b=pdDZ9sypeMIVn1KTahkWRrlfvIopY6mcoUhZbXpbYiTT161+jVLKCjdyOJB7yRKDqORo+txRk7IWYpV2Xo9wb2d+uFoLMnTTNgv9hmDKZElpeEIjH4Hu0Rg9uGaYYRdGvyFWk6T9T2vJvtR7sfaIZztc4976HGkxKdReagtND5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WD+QyIa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WD+QyIa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28FDC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735440953;
	bh=yzVvVNEwL269v+ATmYZS0dZTf/M4Dj2ARBrPwsr87SU=;
	h=To:Subject:From:Date:From;
	b=WD+QyIa/Ngc5axT1KskDDi1L2VwIOGpBupk+VBwCF1nWp/bTQyxNeRAwczvZpctJr
	 nomm3NahbQcdfuaBkejA/ckiHza8hioG+PopgsAt99Gvm888gxbKcMl2NIz1krJCpj
	 A6jOkXiVx+k1eRcfAiNVW+ONVmCyOMewruwxKi4mWH7LpHTXcSJ/Mu248qJeFDGeya
	 eM0gJ3ICfT1XqtCuarsBj1tWLJ0hzWl1iSkBP6Zmuoz6Sa2PWX8i4XlYAzkNRdlSgN
	 D5/86gAP/qWniTWZG6A28kXcBVN8JhdkA8gzAaY9BDtqcPaqmJPHNxkLuYNOypdjkY
	 yI4oLPu/gzhqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F73E77188
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173544095358.26214.8447664984809790484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b2c6a7b1e6f34396aa3d701c0de27fee789a321216ae5b743dba8d5ffdab84
Date: Sun, 29 Dec 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735440953
