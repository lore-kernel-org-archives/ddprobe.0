Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C994D292B22
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753106393; cv=none; b=mGngTMZ1PfotKkyhMi8AoIuFuoOvEfGKVZslcmamsIyg8i/9PxCwMWcgmECoSUyn0A7htFg62gwe+6v/xXd5kcrneQglBpAmra5J8E5ik9KD7L1BAsOnjToFj8Exutx+GTBMXip8Jh47CWsg4AE/Hj09bYAM0XCcO7sih4YgsO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753106393; c=relaxed/simple;
	bh=vUv+KOoRRbR9MYABeGJWUXGDeiY/nJid++7+1rGvis8=;
	h=To:Subject:From:Message-Id:Date; b=GqVzxfAqOQZyTbu72CCJnj43ciN0R6pL3oc6WtdHh2NqiRXeRKgQ4cj+5O8sdhsr8iam8muCmBnEjQ3yRdiM4HKlZ1FSXgohfpEsMYuMLEycRT/a5VhSva+BwKRgisBNkz7OjoEYYGkfMzYgtGhZQlNoLe31nFPvcvRRJ6ePpVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkGu9g+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkGu9g+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A154AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753106393;
	bh=vUv+KOoRRbR9MYABeGJWUXGDeiY/nJid++7+1rGvis8=;
	h=To:Subject:From:Date:From;
	b=BkGu9g+kmaFeLV3ClKpz3/wpx8A2rQ0+nNZ7tpjnAhvKmKi4Bd4AjZqlTg2PBWKO2
	 OznuXL+dpRPxYQM/bjBrvT+eKAs17RWkl//I3On4uobq8Zdh9yO6fpNHulwXysu118
	 owv3jGEM9KqfnRBXDK0QYSCgxqfaPOlgIOGr2pYFRl8ETVuHNFnXW2pridIWItiKod
	 e++AUaUTFmqPfNY/mN72NFg8hwJj6vfB8XSCI1XwUNUtdljJymmh/rcdmT/mPPVAT2
	 Q3VpqoJwlOzeQjRk3iZ3PDb1r/gQNDE8Q3yFPAsgdAZkYo6oYv5V8a5a4/w69egQil
	 lI+PeE57Z6yEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908F4C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310639358.4103.11457347118558984382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aaacdd7c641033e6b1a9ac86f96e5e5b5626de498e92489e39fe099fe00130e
Date: Mon, 21 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753106393
