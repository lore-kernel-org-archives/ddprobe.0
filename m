Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF1F1624D5
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765471974; cv=none; b=boEiUL2YOZAZpVtx9rLcsqU8nEzQOqg4AVcpuQAgWhvjbCWZJ0HoStdGxdLndvhPwBPDfrb7zxHJXkJowfsj1YprApGLwH2bxs6qOtwmA0KKUQQRDaJK5DCj5ziksWWdH3TkxJxUulrtGrOjvsPOvlzOz6kXreRVRaDu8nevz8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765471974; c=relaxed/simple;
	bh=aMtIok+zpfgNIr3TDzL8L92s+z0egj93pe2P9sa3a0o=;
	h=To:Subject:From:Message-Id:Date; b=MqKFGQMlJ15LIsmrmiRqiakJwCGrtYED9GUyX7VhvMQFE05GePZG5g4OQsA1SVai7V4H6wjuHDliWZw5EySE02rXWshuhHAI2x72LYkn7MZ5r9rI4HwdtoD64Pj+pSJoCot6TA1MANhThovhVOXEaQkLKukilJCQR7yZe8KxJdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAsOCZ5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAsOCZ5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBC4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765471973;
	bh=aMtIok+zpfgNIr3TDzL8L92s+z0egj93pe2P9sa3a0o=;
	h=To:Subject:From:Date:From;
	b=TAsOCZ5znKNr1s40eN1Z86TTE1TdteBnvO8Uq5AGYsf5nzl5wxKWd9/xpLPZtMQSB
	 oc6EDpZ6uHTSLRFx1/+iSpuhCvFDfg8OJ6vw88Og5mWsZthPPLE/cPCmN8k+tT5T/0
	 E85ygeQUOorQTMBzR+cT2MiA3MOZr0I0H8gPrHIZRduvtN3T6TJOvneJhBRUskcC8s
	 4m1Bj9bigTyF0Udo0pftLbD7jy2PHHmckEAWIbKGX3+4yJON/B/yGnHHQXpw6eiRBM
	 xqWQ9Wd3NPwlAQEuT5rsVYZy4SJGsWENV/7E4itzW4plKL833BzLawAL7NNjnk8YxN
	 PUj0yxv91sBgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B92D41D68
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547197359.32681.16907324875508236673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353d8a528d727daf51af583ada49a66e2f0e283ba80efff40d6d57b3c0350b9b
Date: Thu, 11 Dec 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765471973
