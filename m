Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317D11373
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769574234; cv=none; b=EAoaj/osTz9I/+aqkbPGub9T7w9r+bQsS629mRIPh3ZR5Oa45aIkvvF5rcOrvifR/6vLefAqgDdHVNBSYJVWXw+2OwUgb5M7bdlJX2//YtFsN1Tokl70AO6vymSxTdWsh50vN0fp1YP4FwTRjHlY2BKhGVfhUupdel0RH8bBfOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769574234; c=relaxed/simple;
	bh=GCTku4cK5818szc7Re8wyTHpS0nzK7RRjon/ayvSl2U=;
	h=To:Subject:From:Message-Id:Date; b=NSDbWOeGWNUnSdczSIK3erbChJdCNai0CZ3LcXQZ8whquSq9lZkMJydNqjx49ERIcgD+MbepzC6UkitUYiZVn0zlz3lg3UAtGOlV7uPCsd587vvwugjbDIE/pJks7sWAPOFNsTEgropUDeGtHDDhUKe9nQnKdpLZ1yyJA9D8mA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKZr2A8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKZr2A8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0776C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769574233;
	bh=GCTku4cK5818szc7Re8wyTHpS0nzK7RRjon/ayvSl2U=;
	h=To:Subject:From:Date:From;
	b=CKZr2A8saH01PyOAB05wIRoBE3lEHjrsJYVF9BPuGdLwRvVM8iHhpgNg6dfVuEEWe
	 /wYNRPwY2GyQzaeDjfb/E7aVGVDyRUS8K3eOp/BcnaQhXSJ8U3vu4SKK24roeOv9Pj
	 La30GkUeJ2YiGHOYN8OmpFgp9a7R5o3ySbP2tvNzcitFF4NslxIy8/ij7zz4jCJwg2
	 kswSQn7EkWIN2ENsPFzMa7ml6fBnuM166Kvcxuq3Ss2m20zr8XLZXywnJ6UHcPu8r/
	 8MXhm/RDAe7FKhDs3McyX8ZXjTHd/KQso80YKiLi7RfKhiKEVl3lDbyRKnY4ccIWq3
	 +PhyKs3rQ68Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5633D35670
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957423365.31937.17799480123485668394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b49b8dfb84e362ab071cf5c7424fbc84de773faeb9b50e0a7b6310f29ef087
Date: Wed, 28 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769574233
