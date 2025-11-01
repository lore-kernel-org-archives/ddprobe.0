Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301085733E
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762040394; cv=none; b=hzjec+fHAipHDfO+yJGpCp3N1j1Q8B5fV3yMh20cIWXZwdZbv0UtDNp6jbuHbr8Uzqi49lfcXLp5Y0fqolp3r8jtSyacfCCR9FY2jzpLEFehWO2issRn9Ios0aw01zPKC/9N7xe7rOyxE/ZVLoLjl/+1oSoabNMDrSYO0se+Hro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762040394; c=relaxed/simple;
	bh=95kWx4Q73E70hVUZEDpAH4ekbJyCGfK4Ub5rVuStV84=;
	h=To:Subject:From:Message-Id:Date; b=QUOjJP1EkWXQt5z3RKpax7taOMfajSjqwxmXPQuUSB1U/4Kz7Jg+a+4iVqv9f1XOBRyWYyt+aBJ9CjUAwn3QkoYO4ls0b2vlVFY/2ABIsucEuqH20ik3ULkyUQB+sxTI3ooW1mUk1VUFLJz9bsxEH+c0ywWU84k/7MBO8taEGxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJAG7RuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJAG7RuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD735C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762040393;
	bh=95kWx4Q73E70hVUZEDpAH4ekbJyCGfK4Ub5rVuStV84=;
	h=To:Subject:From:Date:From;
	b=HJAG7RuMF+iDsRrC5sLEbUBLkl73nplbBxM6mhpbZzcvpGJMH3T4UXlvkYrqXlHMm
	 0hpEG0s5ZzCPGh10kNELuleaBJgET8ePF+QgW0THu4WO7Y13teQ7rDSbKgULxVmLxU
	 S10Bvl0iwarDTpyZYVjKrvNKpWpmTyc7Lj2T6snhkpsIb8pni2FIpN50BL7vGeCCc9
	 IuAIfro3Kg3cpj/jwIXRVRMGThf04leH/0MaSXtQKE9M5ZYq3cjo+8pCIDdisDpxYF
	 mKewlKQn6B9fVlvLjFf3iLaSXwpCwdOzKV5Lfnvn9irC8QTJgqD9rm8D3H/EhfauMa
	 aLzZHLV7CK58Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F00CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204039361.19144.2186397598456706553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c88a7841f8f4ddc473d3a7d388247093ee9faabe5afe594edbbf8cf3c69568d
Date: Sat, 01 Nov 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762040393
