Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4907622318
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743146394; cv=none; b=SApTYB7p6PzXxznU2R+V918JTY/fqxgjrmEagv0ZVlanTwNHRTDl6OepP6P4zZzQANJa/TAt9ZDuMRy4l6PjrWF/rGWNlijXhluH9hj4NK4uB88F8WordYyAzjU9jCchN+D0oWC8RAyjSuXeNxOJu0juxmTafO2v3j4vxQ+A0DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743146394; c=relaxed/simple;
	bh=hSqSr+1PbObFLpEIKr5FWamn/AESEHsSri6P0KyKL0w=;
	h=To:Subject:From:Message-Id:Date; b=RGZngDBl3kIndk9zUplEOuW+TQ7qTrtZ9WDESdXa0trzA1A5GE56oEdpc58M3iWMsKYu4RUpxetGtx26SE2l3VIPMGfLK5MUeKuOU/Ep2cQVyE4NFrflI/6gJ7mogPKmV6syMYkAeV6muavQco5Oeh2W8d+E+8bsbiPJPNGMjmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCeclduJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCeclduJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B246BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743146393;
	bh=hSqSr+1PbObFLpEIKr5FWamn/AESEHsSri6P0KyKL0w=;
	h=To:Subject:From:Date:From;
	b=JCeclduJbqJBEjVqbM9RDrGt7LvQIKYFRytfOUNrfE2lj2TZsZlZ0HwS3PU1frS/E
	 3yOa6u5IX4KfFOv/M+yWrHL5xfGlDD30pHZREMVUOF+S0AK6Lwd6sXWsIPczS1CF90
	 uN6Pfr4YFAA2q4TtmCFojKlrN5RkgPdNLM4oXtWTeoZ21yphIhuPx820lFUT7W2Xj+
	 z2qotCP42T5w4rCAsv8y9PioQBHssH2jIoUn/CkJ2H9a6BX7WyYciU0a/adrdy1fZQ
	 cuQvTxSykt0wZM5zU7vD+ldb2fPqazcbnuti1N1TYv5GRFho76iitPJ0NsXe7eBNuk
	 c/yxILL5bhqIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD10C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174314639363.30456.5204297072723658374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe5e269e29025b60e8b5d62097d16868583ac691d569d024d9498a184e38ee22
Date: Fri, 28 Mar 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743146393
