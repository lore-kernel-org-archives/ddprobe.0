Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEA0282F1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735455354; cv=none; b=CKXo9xbknPBCq9Rr9Akuj4cOjg+O4kJAEahUGSH6IrzDFuNGRpf0fVg+uIor3eBxrPlI3Lz4Mb7lqf2HGbB82DF3jN+vUXNevaSxmByUnb+1pxMsIhTbb2OfweUHrQ1IALlcKAA+1m3pGTW8qlC9zDYfw2Yn/vMHVBlI7bRI7L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735455354; c=relaxed/simple;
	bh=nvHss3atVlaM1Vub91TzKo8A73TI+0fYBHFgG3y5kHU=;
	h=To:Subject:From:Message-Id:Date; b=PhHctN2S622hd44YWBLi3Vc7uN5qHUh4Y84JQ7TKfXkUoBoL8fTUHxcQfIw0PMueaiY3AKneDSkNKSLf8hEiPzNX0ndkFlBcf6ZzGDzorMFFVryDQDUs8nuRuH02zamsAD35XWHwfl5Hc/ccUXlgXItpnTb1Orl+TJBQD4VzzKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+LAkYCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+LAkYCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8522C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735455353;
	bh=nvHss3atVlaM1Vub91TzKo8A73TI+0fYBHFgG3y5kHU=;
	h=To:Subject:From:Date:From;
	b=d+LAkYCTmgGABgOt0V6OKRR7jNTF4PMX8GImU5HxXQlKgSqW7y9kmBYFEvIqyGM09
	 czw1X6nODL7E3E0rgeXpMQs3zrTc6aRpcFV20taKFLM43ojK3LmyJjEytXT4GDONmD
	 fhQVgNthnNmBlTJpdAd3ErDh8VDZbYMWPn17Z4qZ5pK1vCgmgKK7CdApTuY2XljIv5
	 YkxTVZe5bwDfSXLkgdS9K8AH4WV9j/x1k7ufetYmHnbfhVZdJyMB0DhnHP4B0mKKMu
	 zcBnGn1Tn0BMOSw5VgLlnuZi+mxFGweQHtoGVfDriYAmdupx2i3aHLDRA0beorTMKW
	 F3MogrQvh2P3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169EE7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173545535358.3612.5595878184075310465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae84d32c41814b2b4d5685fe543dde3f5621ebf52d4af53d9501b915e00f050d
Date: Sun, 29 Dec 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735455353
