Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A10A33E373
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770738834; cv=none; b=QP9MctXInibAe05d+C89VIcPQHlkqdeuoblMTmBYjBkS174M1hBTqITJIhiNTp2dIQjx+fnPNTC9PPBjBdYLZXGd0t3CHMwu8NeWgdZUcGMM7hooUvvVospAXrK/kZGLsq6+cP6N7iqA/gvvSyJeIsndYm9zk2nt5BBatn1+NaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770738834; c=relaxed/simple;
	bh=+ypkGHjPzKBOgQszJUpbHs0aWGFiU96zM0QUNhdi/RA=;
	h=To:Subject:From:Message-Id:Date; b=RVpsFVqm9xxN8ynw/R3jNnyektYtO/J9qy3XWj7B4EdKB7GPux7S+bEib5Wl/SCkSTcdU5NDQySXsHoCO7MiqzfniHjJcDS70hGAuf94hsk7ewHvCmWivyKGBPL4p6DyVqnhDyGX7CYQqbMepmQZrK4qY9WfX6Nf046N45Bwn8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRU7OADv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRU7OADv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41EBC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770738833;
	bh=+ypkGHjPzKBOgQszJUpbHs0aWGFiU96zM0QUNhdi/RA=;
	h=To:Subject:From:Date:From;
	b=cRU7OADvpov74VCqj1mq6hw+OxEQlnCiem7DX5dcK/ippwIzO9rw+Bkw6NBnJY0dt
	 w7iodgx1THnlyau9My3j7SNVpk6OzKnLrXrlqcJFp+FR0tbXgczJKbpK8EIXfTNC0M
	 hK+OX9qvw5xY79VGmjw1TZZskjTojKUGkFpKDpXFt7tuS72dNgeWkys189eJSI4zfa
	 Phi/vVZ0KQMfXGwPW5Gu3gy1I0j4CmsEOyhjZYCg8jjT1OKVermzW04Gh4IcLKEwHl
	 /lwU9bYJLOKyKS/7yeuHKVei5fbXNAltMxyjrpDVmrfgCp1agO9dyKPR6UhQSO3Etu
	 cwievFlGdfTQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D1EA813B
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177073883359.9670.7546549701971322631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e623b470e512c60564107062bb2336a09bd62273536c91fbb6d9065501b234f5
Date: Tue, 10 Feb 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770738833
