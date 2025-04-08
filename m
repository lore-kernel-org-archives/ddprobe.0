Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379F8253F13
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744149594; cv=none; b=SJCUfMrSRXGP4T4kEDwE1oj45VJyiKYSZnbPHpz9UVIcPKapa1563pAn9lpGyO1cZsMjbkaD1M41ynCpRgsIP9rPytt3qgbpFMO514qyhvKR899Emei1rvaQXoEFusNl3nHR3sy1OSyBMOR/gHZa1psGAifN0SVR9h3onuXgD9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744149594; c=relaxed/simple;
	bh=1oeP95txW1ZRYaBU4z6GyGXm2fXZlXWONtnK3ukf6Zk=;
	h=To:Subject:From:Message-Id:Date; b=URvSp+0Ynu2A2YS9aYXqCtAauVWkcQQkiExZCLZ/LzLQiisqhSB1p39/2I3AyvaAmlLxFj82DHTIBRs6e/+bCuzWR35m/c9oM4nDMxJdgKQyYmIQherepIHWKI3CDzo969OCSigwcjzOuW3JoBmndBeJDIeiZJfME3zMVxcVB6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCLxsSnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCLxsSnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D7FC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744149593;
	bh=1oeP95txW1ZRYaBU4z6GyGXm2fXZlXWONtnK3ukf6Zk=;
	h=To:Subject:From:Date:From;
	b=fCLxsSnP0Zw8dQ7e1tbViJK+RtLqM4jMfPmWFwi6MIK04VL1xAobja/+bJsS00Mft
	 umJmGpCXGxjPDc2kgbzetikoW7ctulvFtJjdaLX1cjJQaibW8W2cxwopw7RtsgXIiI
	 hLRsqN93XkAeGiZMdyHQt/OGCdbWMqaU2YScSWFntvyMoe8OiKfp/62V2HahgD1N7G
	 pbPMV49ANNo4G5aBeOU4yBUW1zmkd+SFd1q6wn8gqfjnopBC1xMbQ4oKArD+CrJK3F
	 8OirGPExnUaImrVRHtRwjKLKwghRg2yTMrMZEvRjJvOpks7pT5nhZHMGPtqaZ4xXDg
	 NuNNQFmhnZlGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92321C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174414959359.462.5844556854703156299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1206b9188426321c7b5045dee2c208156c7919c8552d7c828fefbcc8064f57
Date: Tue, 08 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744149593
