Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F1D46C844
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790119234; cv=none; b=CDuhmWtlBoFvdkvE2TtIxmPi/6dcaN1q3D5JImleerRHGlwnvskSZPBs6TudbiW+5LQ9dtGxohskvCKSLYk3ryei8iNBf4d+vHGMUFAS5uto6k5Xc3N2IxdsIES9Pldq2ynrHidaNUgFMjXW1dPg+HjTeKbiqT+RjrHmKPvlggk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790119234; c=relaxed/simple;
	bh=jg0OQeRTaiyHsZV3CAScFz7VLrdwyPXsj81NxL/PvLM=;
	h=To:Subject:From:Message-Id:Date; b=I5PMGM5ogk6muVOoWQz4fLNB+hZ3Mv6GUMhdqv0qLxDS4x/tQprn0rVeYgckdwV9bsTLL8QgtlfI2VKeJSTnUTg3jKsNagZ/dtw9Rk8vWd47CQYC4D4xYNTtivG3PZSWwu7xiCpfdBZTTHHflYtWvi2G7GPKB5rLCX3Ez4b2fFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8Vcxrg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8Vcxrg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9ADFC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790119233;
	bh=jg0OQeRTaiyHsZV3CAScFz7VLrdwyPXsj81NxL/PvLM=;
	h=To:Subject:From:Date:From;
	b=U8Vcxrg2XTKb2jlLhUjGi4DB39EnLoOMdKOBQhJxa73379+G0u64zLUih6a3cLuZY
	 7KaEvLEXhaxMso3zptqX26Uqj7bZlhdQ4H3CL5nuY7AIaKUAuty3r7WG4rPTVxZ1vD
	 FKFD1v26op3fOKcQigLs+uHt7nku8YAq/nyVF7sTI1Z9dm1/5lIHkRzPEod/mQlcxz
	 EFm+73+wFRyo8ZlrGvagc8Gb0i2y/obmVibv298PPD62pFosGiyIOm45DQs9F51jIn
	 MenM1m5HnmslpoGmEevFC1ZMUmBEre0LxGq1F4HtYCd6ONtjbVkjh9GNf5UHIb5h/9
	 VoPoHvBypITTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BC9C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011923371.26831.7568425100248913583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f1121f3817cd318d4d1dd8f7cbad8d7960484f970db9ba9646936dc0beb402
Date: Tue, 22 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790119233
