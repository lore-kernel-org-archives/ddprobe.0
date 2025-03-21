Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DDA22D786
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742579394; cv=none; b=aT0a8eWDP0eqEqiXvtpuWeige0ZqGE8yhDfY9BIEFQFKODT7bFKXhFm8ieOd/UHugFRpTvefnZHKkFGArF+WThQsQGKpBVzXvWnR34BsMyy8cXXsi39sCeVuuzhFcCKklLDISA+pMgtc80BBlCdEZPE6oJHQM3gRLAdTbYQCHrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742579394; c=relaxed/simple;
	bh=tycK9aCEUegCTxsfnc7vwlqzrZ0u+vkSi6KEA0zSp9o=;
	h=To:Subject:From:Message-Id:Date; b=cCcIgRagF2U3MGNlmZAVcROKj4/ZHRth3jG38BrA92kVF0SBVyeymLGAeet3k5VURnEMnULQHt07kuSzgPS0kIphWJdf5JS3tzIPQLOqE9tR2EXOveHRvvmIB6QbiYD7xP9sGjDUWYImGwV7sSh3Heq8aG+LB9iOgqTBduid7bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ht+X07vV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ht+X07vV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4160C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742579393;
	bh=tycK9aCEUegCTxsfnc7vwlqzrZ0u+vkSi6KEA0zSp9o=;
	h=To:Subject:From:Date:From;
	b=Ht+X07vVLOdRLHCjInX99c6nhIP7OKJYReNreMNYemr5seYaKQrP5A+zxVIl0v90y
	 PfZGi2MD1mUxdh8yYOEnajchN/orYJlhNW9or01NMZoOEkqAqRP7eaM2KIXVk4iohy
	 dGX0zDuc7nK1tSp6rliI/ESXKhLcOSKGtDuHYfa/xQDy+tCl8bztUlQcblNfn98Ief
	 CS4QpxnL1A1W7jiUfe20JzWhmePd28w1iPbYqf6SoL4AbSKZhERITxIookb5B7PZ28
	 /BFA8zQpu2aUN/leYNnwbPdga3dXz/kvYlaMTRT2mmnHdao95Y69SyqyDlE1LvUCjG
	 F+EK3cU8cdZ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA4BC36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174257939362.4955.1872800784576117005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e82dc88662d18b90945bc62439b4993bc2b115d963db33b5ccd59d0b7af059
Date: Fri, 21 Mar 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742579393
