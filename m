Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5803D4964F
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786769434; cv=none; b=KS4ZK1XLAAdYbwwmLS7eWOcJOHVFOEBpQQK+yCRsKKXG7L8FKIkZi8w2vmlWYF12q8TNXPTX/BOqRTPheTAk0UOSztG9s8+mNZyTDQIrnofe3ugb1UCrOOxgAcxgzb9lZOybGT4PfbWt48xLiDPFET7vF/XSHu9G9+CX+s4javQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786769434; c=relaxed/simple;
	bh=qM9gxMq4FDwqn0NIuwrNxeAzhO7dPvmQAVJr7taIoi8=;
	h=To:Subject:From:Message-Id:Date; b=FdMR9WhkI1o7bk8lHraI5+zuQ9FxBaHrrUk7PA8BA7VQZRWRW9OzzCjjxYBGiBnDPAe23Q5WEu/il5HReeGBxdAEsJ3s+Ysc8HVnHMcvSiPeNhtS3HnJhrG/hkW0HQSnozz3tFdF5Uiz3fMUYH0LRgH+hntnvZlV3sAbBrzQiqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtqLxX0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtqLxX0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF00C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786769433;
	bh=qM9gxMq4FDwqn0NIuwrNxeAzhO7dPvmQAVJr7taIoi8=;
	h=To:Subject:From:Date:From;
	b=UtqLxX0hKMX70ODGd4DddP/XUpYxdZHWYrrBlhi+X+YICQIu3/bOXrvB8ZEkTfGkE
	 pYKL5aBwTEHAtLMvHNpn4AKZu6msmQiIO0/4AgMx5NxZavV3Awnj9gSAr1nsaR2GCu
	 46AJPERtypBK0ABq4rYR7rr1HbE31KeYrx5PLBVLa1fmSNNF5nMZ7cv7uS3gNwPfgn
	 0qyVubt7LFgxBhw5/tjNw+D+4ymnwQdUvsbKZfd1rArQv6+g5kiWfFO2pHFC63jJCf
	 iuzeFGF+uFOnn7RTfONpjgu1fhDjJR+FFNw9z+1RSoum11DFSzI13dfgoUmJhpK8Tq
	 DcBoZzsjoQbug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF30C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178676943368.2647.12237875778239661529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d22be988d11e6533940e4b207b98fcab2de68ef5894c9cd8d51053fb1410428
Date: Sat, 15 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786769433
