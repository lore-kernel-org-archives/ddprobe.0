Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE3B32F747
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756776594; cv=none; b=cBiNsGPX8/YoHGTiK9OoFZ9gYmlNtChbPQbU8Pr3PSgPSlDN5jnSYkykKPvsvRfJE62uJ6xBecuGvv6h6s5aA7QLrmAud3kR9k6l9rkpLbZQ5XBrZizHcuaQNiqYYM/deMvTfH18mlUHHUfAtwRosMmB97fEN8GQd2LjDTVGZ6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756776594; c=relaxed/simple;
	bh=ksMbkhV7OMOUShFIEgBjj3DttdnpbLHleqqUGVTiCHE=;
	h=To:Subject:From:Message-Id:Date; b=nnp+Gym6f3dtHuWAY5dwBsDSaVbE/Y/BsrRTYnYBAPF+tlO9P5ro8o3IY0ff7ML7NSQay9kNG/5fHyeeiTtLlRJMnZkrpduIaDKeYzgrZs5pT3gUDqBJAm1LHYvS1RyXEdwSKXlZ0USrvmtxulXPgHJJNsh4KzHtBEuIpsBS5wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3q/Se/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3q/Se/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6829C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756776593;
	bh=ksMbkhV7OMOUShFIEgBjj3DttdnpbLHleqqUGVTiCHE=;
	h=To:Subject:From:Date:From;
	b=U3q/Se/kfeGUSdymjr1YHoqbI0wuKBgSxXz3bE2/7sTb9hI+hJg0BDH7YQLai8scU
	 KBcs2YE9wJSA+jYCOXn7iMjyURHuAlqBmTsQe0xy6ESbkYL5ExDB/f1mXOVjVhGuUk
	 h2CgA/YaanhrWaWJb2+uVJZzLL4WMkLAsjgguZS3eHtkNRN791A86hDBDOG/TZDQmY
	 63AMqc+EfaimhQhJGKf1Xf+Ly2tSDK3moHiaNQYtLhxlWEEsmQcL7rNMjuRNJnFOi9
	 5YlLlTUVgKBad7wW6L3RP7jTMz0IOgPFpcq6XY4EkIbCxs2YdXgrNU90xNzqiP+oPp
	 g+seEerikhLtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FBCCA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175677659358.16111.12337096359688812893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc640ef1f70e4df44eb30b12819c0b79bed2ffc632ae7ef38dcf1e164a6b18d6
Date: Tue, 02 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756776593
