Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2964F264FBD
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779917554; cv=none; b=H6/ROm7/i9bmUqRmfPYBvBoQib/TYqeKNN+4Dr+/EUyFUKnY9qn+TO1+cKUnCJTQRisJmbGy9Bnb9OjA1b9p/uVMFSYZYbGn5+6N6dDjkz/xrAKsalih/c3jNCAX7pRH2ptnZpf0ISvuvOwYgxh65nHTVJfkO92dxTgxPCRX7Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779917554; c=relaxed/simple;
	bh=KqVw7Ct+Q4jo10tfmA590J6bz6WIaYIX9nprVj5hiKA=;
	h=To:Subject:From:Message-Id:Date; b=KFTMT7N/yQuUadgqkuVcxn4VKIARmtP+0QFySz4Guxugw3JJaJnqLgRQ236REAHIhJvsSCeWeq1tB5JRxj4AtC2gBZml6yEXox+MzVjkEJ030wMw/ehtONJFXmabxJDtsURJKX2TeuuCzm8lpuUY2InN8up+sF5MWtp4oILudkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7OevaoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7OevaoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E78C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779917553;
	bh=KqVw7Ct+Q4jo10tfmA590J6bz6WIaYIX9nprVj5hiKA=;
	h=To:Subject:From:Date:From;
	b=Y7OevaoRQ4SyTvB8QMGC/+V9bHm+whzLqTR/WsxrUMYWG4iorfJgE9LLrXxH8o6yl
	 dykqKe2ywd0lp54VM5MuvCkm6Of4g8YbhKeoXl7227aQ+wJJpSwwlki897ukpjxfTA
	 dJ0dX2yPmzgHVBoGq1XbAvZoDelsM0cGTxS/8d4rGaiD7qymJo7l+HmUmarUQmZz5z
	 YZuCI2yQ8yKEUa84sOT2ru+NjfSU5v4Wl6FGFfEookk/tGaac/WUJlWGsiGvvqJ97Y
	 zG6VdFnOpb/+HQXgYJXrlPkjW2VOS3fH4GBWl9mFuGzNyKAnnzoD1rwehKOruQKHH7
	 2fEVapYbBW2HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDAACD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177991755369.6823.14108804853494906637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d790a80e801c8dd76a1909cebd367e31793aa9bb156c21f12ee83e9a981fc9d
Date: Wed, 27 May 2026 21:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779917553
