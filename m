Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1721F2EB5B8
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774479894; cv=none; b=GTM6Yx9e582mSHF+1muxNGTeRW+72pafGcGypjbRVDN2Oc6LM33z8Za4TqE0bN7Yu828Ky/5XdD9ENp17PMNMD0rusIxGEfOmNFIyc26C6yl/fyvPfTYskO6S0n6z2PhlH0yl3wTr1hyfV1f+BYNR+D4DCaSH4TJeAzQe4zKsjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774479894; c=relaxed/simple;
	bh=dtAYNOtP+ouzKoyfFcDo1Xf/FFpXf+bmHgz5Ov5coE0=;
	h=To:Subject:From:Message-Id:Date; b=Emxgg8rTdShgQwFwQoFHB9/qqA0rBhC8ugJFh7eHt+ecE4gO61xel1e20hQ8LOIOgwyZut2MQ4kFoKtiL7EYd/r34D0ZKrpOgM0tqhz3DuTrtNFKYL0IommtlWjMCI3q72FjVU6qq9tzwDYb4S1yz27jqxbWFk9B0XUDaLfHX8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ni+Oepwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ni+Oepwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCE5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774479893;
	bh=dtAYNOtP+ouzKoyfFcDo1Xf/FFpXf+bmHgz5Ov5coE0=;
	h=To:Subject:From:Date:From;
	b=ni+Oepwa50uW3Ei0K+sip6JkAg5+RyR+oC2QHuyrfdUt1WofSUast9ae1BQLUuGAx
	 RF/VpCWMmh3AcFtOGBRDcMQO3TJzFWxqveP6CqMtp2C8ZM62YMfXb57AJNcF1E+KHH
	 rjUYtOB9pKcY25GJ8RY3mBNdvv9GPQflsNOtNYmJhGE7R7hNQ+BSI+qNOlygwLi2SG
	 rbSFgNzWJv1pdNmfNQfPXwhNbYiQzNkSxoBpk/abXN0+b2nJd/yuditoc204eIEVoq
	 qMxQ7ivA1rbPak681nPjr9ImBs9D9vG2W5RDVtG+TQWbS7oboeD14jvlXdhoM4dUoR
	 ItK7nXzASzNbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95777109E522
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447989360.8396.17229127634255015311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02fa73ec021a88a7760c14d372165e3ccd5f2e6ead2ef34c9e63de1e39d29aff
Date: Wed, 25 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774479893
