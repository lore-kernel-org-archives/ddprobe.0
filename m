Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCE41E502
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 01:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739498334; cv=none; b=fPpn+Btyn2FFUnJC2Zn7DCxgnwvCMQ0S8vPQ+QeosGMLX+Qq5ZFVDfPnFcymZ2NNK0JyBvTNWtl5eFo/i5LQvCWHCz1O1Ggu9pl1NNTbuyHMlZv5+lD9P1e0IMJ0eyiLwkOfacO54luEosffdyQg6WxIrMwHfe4Uma13l+IO04I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739498334; c=relaxed/simple;
	bh=c8rRgIEWme+1RCIEgaU9Lcjqb1tuaDy0ZOYV5KPrWjg=;
	h=To:Subject:From:Message-Id:Date; b=pc2kTtKjRgvVThzMDsoKcQWDSLYrFNvOHC0Ul9Ep3cULeXOnTUBS+GGvGubyZxBnFGPEgaky8N+NP+jQw9r8Tzu4jOoYrfr79ipQkLgG8VcwtHXdgpaMTO+cqLl+b/yBkKG2BYXji4whzg4XJPMkUhJbqGk+x4QiLcha108I03U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Te/zH0ol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Te/zH0ol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A4EC4CEE5
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 01:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739498333;
	bh=c8rRgIEWme+1RCIEgaU9Lcjqb1tuaDy0ZOYV5KPrWjg=;
	h=To:Subject:From:Date:From;
	b=Te/zH0olewmi/YAPfs0PJTs5USlHiRN/rCJlpuWBAaBTMGGMKEfQ1w70sypdokW06
	 G8dUjaiXpDLMfTfZDH8MrU0/bpjgDCHC1KJTCqDWUJtfPQx3kfLcbUWwq/u+Culwvk
	 fbSBOXRl8yxCep8kni6B3Pw0fADDoygoajF+dttRxFjel3vCWz+N28FWcAI+RIc9mt
	 WInuJ5m7FNer4B7rNtvmIVt4ob2nOiP49kWU7jQBZfxx6Up9OwzaKwtY+NNzNNTS1E
	 TnqByPC+tFu2E7JT13MnOkZFkvH4hdnaonWm+IGs2FJFdA3YrpILYgNq5r1ZY/DHFp
	 XjHPLB5pCsyLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907D2C021A0
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 01:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173949833358.26106.3353150849233844683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07158fb33cd854e7f541204c2cefc202a0b71b8348fb23b9a76c0a69f699c60a
Date: Fri, 14 Feb 2025 01:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739498333
