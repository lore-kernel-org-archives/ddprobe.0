Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D3A2745C
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756860595; cv=none; b=Jpz6QijdQNgMRETXgm4rkMH9OwaYxFzECtPsQ7bNou8dWk37ZTuRBBHsJ7tYUwRe8b5mRTN4NbdSiMhWzCEnrGYtxVgXFJovyCtldCc6PR0lHad8bk0txnZ0FhacsodrAyufLbvIlc/KwuVkR6kLjgbaTB59Dz8MR7boqdue8go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756860595; c=relaxed/simple;
	bh=U/gRW4KiMl3XeM2N9vaRAY+uo4AbrBFA8gMlDWb0gPQ=;
	h=To:Subject:From:Message-Id:Date; b=pPYw0XZELxSDL+/ehi6CuF6a3wVkXrZQp2BJAXqFv3o24QgAFwIhCPuKWlKHJCntM8Pc+lJLqWHp2f0VkhT6hpan4IMG7P3afOLo4ecV4CuXi61yGRpCFeBon5nM0znPkJrYgQSOk5TTgrD0h0IfJRfAbiF3JdH5dqpo+Bde9Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7zdhz3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7zdhz3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A544DC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756860593;
	bh=U/gRW4KiMl3XeM2N9vaRAY+uo4AbrBFA8gMlDWb0gPQ=;
	h=To:Subject:From:Date:From;
	b=N7zdhz3L+xkHERHQFpUNLE1BewA8+QjoRzShwpZ64hcONx6V9tBr4dum7QpbIzmgv
	 CRFtX7KdHNUx+qcZFjuIEKWREz70qLOFPBZU2ct/ir1v9s4929ldM8E+/Wzx0eNoDf
	 5WYoEOBpD91uxUqPZFASJOdpoz+WMnATms0/NajbQKb1jWKBcXJkY8/9BnZZ+TKJQx
	 gHakBvK1LIkUuVKKs4I7xKAwEJA67pueI3tlYv6ldeIQd9cbsJcIl9V6MZ4fbM4EEw
	 8vHzL9EeSo8vLsP6FMTLvqd2HOjXE9vr8sFF2F9huoBok7F6AICIUuwYZrJkFmvNiW
	 fhPJ0RjreSeLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931F6CA1005
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175686059358.17669.1023614058871165564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d883905c3a450cb54ff9ab2d31a33e2953e3ba7899bde37a94eec00d11f676
Date: Wed, 03 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756860593
