Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F420303C99
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755109794; cv=none; b=tauqMy5y0CQY0AyAqHKE0eAt8kn5+WI62imR5ee95wkkfnXLRSdtCcM1EGu0piwTTJs36CRR6sIIurq4F8ySrWXKIX5l4AQ4puE5G5ukSOHZVB4cFnaMJTRiVSHxIy/CeP+RGQqUhKbp6LudWke3+DRP2C8N69nMdGIFYSS0kmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755109794; c=relaxed/simple;
	bh=dr55+3x7fxUPVYADj8pC4z9EDqArF7QHUdiGu50cbHo=;
	h=To:Subject:From:Message-Id:Date; b=JhWeTEHc/p3H6X3AYzjGUVHlnncvsPWN9vnzLI5n7i9oUqBaue7muQ0cC+Wm/CIikf/vgzmMSQTr1isQiKdFi95igUHlsrh4CJ10yx6NAIS9imaZlny+wWB4qZ+XFArpZmN4jdDeZ6VfE/C2JfkZeqgpzrdoDDNoIXuWRH4xaEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcG4Xnpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcG4Xnpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4DBC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755109793;
	bh=dr55+3x7fxUPVYADj8pC4z9EDqArF7QHUdiGu50cbHo=;
	h=To:Subject:From:Date:From;
	b=DcG4Xnpd7IkbOJgfHVGeKqztojpqD2XqaKU9Aq6WSTHMUe6hI5B+gjrEMDGyZDi/t
	 CmDjoUxd6Ro4XJmYUexmF1t15d4u7j5rcER8cROZh0txmq9z8NRINBgHdAQMtTtpc1
	 kMMd2FRCNTJmZDzjeqR/UsbmFm2Tt5NKaSvAPIFn/EjvZXmjmjtZli3qO0I56ZxqGq
	 ULxpSl0kkWoyCYprFJvuPnWcDIHYrzcJWMAHOuZtWzrC9gzE3LTflExyRGW9xI/44k
	 0/5kiWl+8tNR3vNS4BvGwuQpMQtAvny6L6eKJK75uEBb12PlnhnyEWVsC0YXwWjfQc
	 Z66/MCs1Zk1wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F5CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510979357.2961.10381565436957689277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3023bde917b54958a4d05ce51f059d56c926125113d286eae7c46673e2a6413
Date: Wed, 13 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755109793
