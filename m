Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F7D25B0BC
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783249114; cv=none; b=Uujy3zwJ7jKfKkdqnFS59t1GiJPUnGBTruQvkUdwTNHXDO6lXjlBw8bPcxsaW58NMi8RZbCrsg+HiAvrYE3ewzx+e0VFhT2tVTqwZFojBhPwVyhvkz0lfl2fy4sjrOiq0L5JJ4OZpE8g2L07zDPmPFvjX9rXQwHEMDKbFi+3+Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783249114; c=relaxed/simple;
	bh=fana6jcpT+EP1bk5ndTk2TwPputTlt6dios/55fZ40A=;
	h=To:Subject:From:Message-Id:Date; b=hWzCwoNSwUGgt2uzog1DVZLsjha353CVLXXynQojqy99Y3zv6yM++mBw7sJaGGTka+WOA9mD3rcsuPclIfo8bLdf3maEWVBiG7TpsEuUKJ6NVYQzCqFni+OoiNJ1CwId+7ytkFuDhPqfEvZrSq/cRhfa7dVdsRk9CeLmOBLLqPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCEWxwW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCEWxwW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4A6C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783249113;
	bh=fana6jcpT+EP1bk5ndTk2TwPputTlt6dios/55fZ40A=;
	h=To:Subject:From:Date:From;
	b=JCEWxwW12mkKww/lX6PMjQgJFs7iNKThMkRO8sbak6Ov6RV/KRFOLyiseGo5b6W9K
	 b1xlCZMqTyggLZX25LGMLjw6b/QmPkTcyJ3fKCvRtFxhckxdd71g5jkEdLKxaq7ScW
	 PDk8RSGgj4UpzT+pYtwDIW3wf+GaLtuW7elwdrhayaUk7GcXG68UIpaLazFfLMC3vd
	 onlv4soVurQFamGJSwv+yQsFvTFgmhBmEqkoJk8v+zX0lS+dZCb2CdUUersvqW1400
	 IOHthhFlrReDq1ujBcvURdBXvw5VsV1KLDMelIMzpAXtjhd16ziq/lgQGK/mJsUvuJ
	 ytYSQKZYCZmUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAFAC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324911368.8510.17673278009295867404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a464bf570848f13cb4ca81c815aa41dc059584d739a65fcb8d05aa34f31b7da
Date: Sun, 05 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783249113
