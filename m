Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2732E1BC41
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761631194; cv=none; b=hkIIJtRRpID1VHhF+JGaU0P8rI0aI6sqtL5vll3rTftZfPlmbutCFgthN5QL3vCUldTdw5Uvi5WXpJj0wZdJqFAViKwepC43yLUKYjfern9bpEui7p4TGW7r9Ws1RWs81i3tf7gsn7rJzW0gsG2wHP8FvJa4NvnMorJfMlHgpIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761631194; c=relaxed/simple;
	bh=LrrvjXb2gZyEwqiIo78J1XN3is3iOvuYJ0MvahXbm5w=;
	h=To:Subject:From:Message-Id:Date; b=jpBVjzTYINxuMrC7KA0ql8pLdYmpz65nUXlBVZ3n/EhoQEudTI9CrnTDukZpAEtMNi5EcuIAzfOHwsejYz7z3KgHN/gXjiQKl1/z0htFRWrwqpzaqlksiFmfs6wVb+MA6QAvoijUhdYAuQrj8fRp9vg3AGAy8qX/4CZLDKDLsXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhTrPewK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhTrPewK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A88C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761631193;
	bh=LrrvjXb2gZyEwqiIo78J1XN3is3iOvuYJ0MvahXbm5w=;
	h=To:Subject:From:Date:From;
	b=lhTrPewKTVZco9zBWR1sQdPOoXX/SPY+3f5FWWtl2BXkoD/qtTWI764YPjMuFpn9t
	 cwAaD8wCNKJ45jToONE+apbYdcfGtwUJrs2moOO7aXb8TiAyWYVclBWhEoE1GIqg+d
	 cfnjsCNqceWhYLLEvnXoQsDAj6VjBLKMlb6d7+pbcrYB/Wbvp5o7Ib/Xa7q3YaE67c
	 4MAqc0uz4TMiqpLjUBbElmhtjlOfvGVTqEc+8cjafAVZT5i9zqSJ7M5zgncezA9rkz
	 c+FOnqr30FNGXVwp9366mX/EfVYuB2H0fkmulneoosTq8QNo9iVRWNCUfI+2cFl1B0
	 FNF0wpArvxIjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904EBCCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176163119358.17028.18075908662524190120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ad68b358d9daf4dc14338649f8386f242a79c6d2951270a6e05c491ba647035
Date: Tue, 28 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761631193
