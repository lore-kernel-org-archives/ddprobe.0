Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B6022A7F9
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765743774; cv=none; b=o8ERI304lXYMbvGLVe1qfAg0p8Me4/euG3c1lJyhxZNwUF6hOOS7P9rggmoluKdy3ja65eavJih9RcZyKgwU6HIggp+g0ZPUJoOiq3UaZhtcO1+rEVpW+jCW4vGI8cJqJgUep5fpKMZkLB/57a+AsZUh0nLDW7qkhUegmPlWdqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765743774; c=relaxed/simple;
	bh=PrtW70OaK6doAf0A3KTAVAVIf2OpUx+ZUF6nOWUURlw=;
	h=To:Subject:From:Message-Id:Date; b=tf8dPEGTu7AoLjYMDU4tHjLycgpcpVxervfLsb597H5kWdw/bFLXX5S00FiqboQyMp1Xgj+AeQ5FcIYOM9hAy6ZlUg5UDutgzqcRegheJn9ZQoGwwZFfETps4mczErLJWE2VxGYfL/lP7WspAjdfhMuZbk2sDzOX8HiAeCNNkm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8d41CkU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8d41CkU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AD1C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765743773;
	bh=PrtW70OaK6doAf0A3KTAVAVIf2OpUx+ZUF6nOWUURlw=;
	h=To:Subject:From:Date:From;
	b=B8d41CkUrQ5RR9lcH/ol6zR+xm6bfm1ufZ44MA6eHoq7liujpJr3TYUCcE3TQqwt2
	 DymUyxjz7MQsuxTUMOE2NNMqr8oePNPNQHfuQPqvUlgIgxywKhohWaG5PtzWj0ZfoI
	 4iNo2dkb/usAS0DL/OsgTQAGx6jBiLE5XxZj/9Rm9Gpq57NEKv24dPFmVlfmlrU8D8
	 tW5ms6FCiz8wA9wiy79oygJZ+7koz926waBIRjy541932eL3+H3GplTS3/hW0MTSrL
	 8ZmsPYdZrPk9Z2YQ1YlvJCSATDQyB6djzLYc6SdmFBq5FFFPODSPjyiH4SI9lCRujT
	 2tEl3jo7+6ZuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F1BD5B16C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574377358.9456.13492737863515499494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fde1d2d401bccfeb956b355b9d1e65776c93bcdab9bac37cd4f2f06832dfedba
Date: Sun, 14 Dec 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765743773
