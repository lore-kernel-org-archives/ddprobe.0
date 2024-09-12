Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A55F374CC
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726124154; cv=none; b=tPvI49JD69zw136M5imR4HrfYGKghrnstk5SBBox64TTRYCR6yoWymoEGWYd8iFFDBbkjtai0B7L1O2sZ3mZiG+6cMhociB1P+nKm2l2D15pMVBmT2HpmfE3Zlhz3Ec6jyGsbt3cCIgeMtflAQmRkL3/tqaCdQ+kQQ8Vqiwtays=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726124154; c=relaxed/simple;
	bh=KDoq+dQS9XyKC60guLsfR9TddlThINpX4LweGE8og0o=;
	h=To:Subject:From:Message-Id:Date; b=tPsJvBsGOKEFB2qWKcjZ5kFkrgM/QmDqITwSUzuaba4/FBhwtDVvXdqC8inGoshq3bin3aaROQaoU04QxfP6SPSpEqrmiUz2Kzti1C4awLC/Go/6l1eHOkL1aK9YhY111fBLQKrI9FsjAh6I+XLZKkpzJc7GZhOHH92GEqIZwSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riZcVpK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riZcVpK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22F1C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726124153;
	bh=KDoq+dQS9XyKC60guLsfR9TddlThINpX4LweGE8og0o=;
	h=To:Subject:From:Date:From;
	b=riZcVpK2HmHiyb5yjddq15vSIyuPyiWgViZR4DSiZP+A/Qoo92A21W0zGpZBzptsV
	 vhkSaenf25zn/zr3U9DkP985teBljAlc6aj/hUsf7/FpFp88/u3Ot9D1XXQ289pJrS
	 D4D6ArBgdpg9tZnDUQqpJbXFMOrNN/H62dqeGOctbrS9O13zGbROIlXwE/08SAtWZr
	 +r6aikjHS9IeHX6cLmp/Kj+fICbpGLh12aSF9AgMQxQYFOn9v/sNYj6HObe7LFfsjY
	 zfYGyimX7/gDIvXEGH1RlazZcsTlbibsJrGCxigSnNM8ILCMV2kxqN+f2a47S1vI/E
	 3THwagLvvwDhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4238EE6451
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172612415366.10853.12952692858493782445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e611fea4574f63eb8a3f131598746e1100972b5d34d9e56473fe99d1a5f624e
Date: Thu, 12 Sep 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726124153
