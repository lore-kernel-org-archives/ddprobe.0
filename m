Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEAD1F151C
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760128794; cv=none; b=q+4t79rG2HLbty5znZLQ7tTNFMZLqAhgIABnQ/N+0b3cCKnW/QJe2boFjhBQ+ezb6fHkJXVtvvwYiQu+TwNMMeJxGhBXUBkgdbAyyUyk5RKKa6pltYJxX0yVSjIkRPYUQxFIFI9ms2ACVn2c9wH5Dkl41uOvT9+iyexOtj5AEy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760128794; c=relaxed/simple;
	bh=PqdVkS3aZdbgpyqB9Usxc8VeRnfA8KTNaL8q8B3r5RI=;
	h=To:Subject:From:Message-Id:Date; b=Xykz6EmwHH75rP3JplCoABenjgtfNdC+9osT3EQX3gm2K1m8lKk3H4hMjFvMZrF2XfFmkMqbn+yuF9gH0Kl7hJMuzYBytyXNltlI7LNfpIY3j2lfUGn0YT1Uxxt7kSWFYqaTcQPSVmuU6h8pzHLs/TY07Px5t6Mw5CzedEXZ+Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCEzcSIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCEzcSIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A8B6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760128793;
	bh=PqdVkS3aZdbgpyqB9Usxc8VeRnfA8KTNaL8q8B3r5RI=;
	h=To:Subject:From:Date:From;
	b=XCEzcSIn8OP97MswltBGnlZbpXbKINuqXqnXPRjzz3hPMqltsyBMGcHGcZWIWxDm1
	 Ly08X6JFyVfd8svGBRAWShlr9OQ0Mcx4mt8uC+x2LV7+nQEVWulsO2ZuQn5rFHDXmB
	 h46Np5JfylfYcHiC0fOhfLLhbDWXtwJ0miD9kU6qPHGum0sGIAERStKScsL+sgwidU
	 cjnNbVlbSmLwXoZayvpDgC/4AZXlHzQ0JbohWl8RvqgK416XZyd0hYGfZmkkhTb9Da
	 mZrWrK7MCXNR64yjisou6UFCPTU6PE6qx2aih5rKBGYXq7Ii92j32d0iEdJMGv0Y8Y
	 MFtlR8KKXa9Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904A6CCD187
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012879358.32408.14509936577746177826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2141e8f45f38e0bb5bdd8e8c29bded8a1923caa2a74dee8c22159518202d320b
Date: Fri, 10 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760128793
