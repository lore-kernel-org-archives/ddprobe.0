Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C42E7F8
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723513554; cv=none; b=XDrhdqhLqCXOjgcZbyed26ypI69noccxz93L+BVUMomIuQHkraYSW+KeRtaxsO667DSmqbBAQ8VWdtmfLohx9BCLDH6ilC8Hj3FquE9nm7xgjzLBlZ6gm05f9NAKDGncvoNjMlJlevMBrLDBAnwuVhyivfRYjvmLaCKLJoWLew8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723513554; c=relaxed/simple;
	bh=H3ZLMxVb5U762m0/dOBN3BrKn61VK8mpc9fPBYUjkXI=;
	h=To:Subject:From:Message-Id:Date; b=BDOXmiTvXvawVuD0WuZ1L8UWtLHVDfCWKyGMi4h2rOWPnE+RatItQLrppTMBy6abjqifFmXN+X78DndY+fEBlsBl4QWQ1yfjULtcyfRlH+lKXktihl9XTBNpeKZekaLxqe1HcXzqmzgsZmAeR3tGjt/DkP16QFVlXQRfq0uVPhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J02xzsBP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J02xzsBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72F7C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723513553;
	bh=H3ZLMxVb5U762m0/dOBN3BrKn61VK8mpc9fPBYUjkXI=;
	h=To:Subject:From:Date:From;
	b=J02xzsBPRPE9aEUde9EUb5IzWz8UKVOxSlSeCfTVdjtEMEqmtXbDQnUvovivdYx9/
	 Qf0CRrvG2IRVZx6Hk92MtMMAaMSEYDjVBmKiZwNNIeZFbcEuHokrYpXDxrloADg/oe
	 gBHqq+GpnursCs35oYEO+5SQgLYzGyIWTH2Wl/83TVt/mDDbXjnIQidzRoyCibbCcx
	 6V0fwvqBabrPNgDKa7/Oo9uw07PRNFKq/AWEWD9Vd+4dsVxsIQRRMQIg8am3V5D2uI
	 AUxDz8H5PsA+iowccLX+NuIRYomaHJm3zAoBCTH5f9lHRWPU+P53AzCZkqzse0VxIh
	 DKSw8EE8JHYNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B77C3DA7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172351355357.25184.3945396812994510064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0607ed43393c53384f0a1aa81dfb165607815f1b02d12d34081504600be26af1
Date: Tue, 13 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723513553
