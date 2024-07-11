Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9028F72
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 16:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720714643; cv=none; b=j11ZjU5j0tP08+1w7Qb1h/jQM+wFvlyaubpPIy46tuBEqXvxpiETiXUlBpWzveiu8L5lm8a4fLhsYMxVWXj6RajgCxJlskiec1BtOQQoSVyr4F7qUrA2jej3vTnJWZ9O6ibkBqwsOYuwl/6Kpwp1lIK+O4pWDCybM3HKiEbSc3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720714643; c=relaxed/simple;
	bh=ZwyPFtT1cA7mEI+PGRg9WB7brc2KNi9KBkavHuvF2w8=;
	h=To:Subject:From:Message-Id:Date; b=QS2FbaUpj9EDIhRcGVMmDzX++fiUZXlJdKDAiy0kOMX4l/9I+9/ICnHb+sLEYEnT5v/gdpsB3c2fFOq49X1GS7F7DHtNDJ+9WGJbqUqUJWJCmJ7YdOJETgnCtPermmII+sG46S4E5SY5kEps8/FquaimF5DtcKbOQckax2KX4fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TV/l4ciz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TV/l4ciz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2233C32786
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 16:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720714642;
	bh=ZwyPFtT1cA7mEI+PGRg9WB7brc2KNi9KBkavHuvF2w8=;
	h=To:Subject:From:Date:From;
	b=TV/l4cizlR3dsCTK/F0A38cAvG32gXHAICDiGSgKHAFnvBhq5vrcOMZERDomR2ihm
	 +FisMsWQDPxawsKIoGlzgCslq/Es8GIJWr+77BpBfj9v5eE5mdYJY3g3X4LA+Y18fK
	 wfiMRepz0Va4FE2nmkRbBGnSemVUhWtQ7GfmXMHSA4mHdRADehK1wO8dyabEu17Te5
	 lrsoF9owqYY8U2V05JsCNx3q2/sThrtHbwvYdwBSGkaTwCnKV4x2reIB9srQT0quyF
	 HnDPLJam95Q9lbhycNN6kvBcm+kqKF7lN5cy+5I9L/oRn8BfcbcVs9Vc0lTNsBvaC8
	 WrorvxLvTIr+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D9CC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 16:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172071464281.5468.16094555069516529691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff11587b5ffdebe5681c48cd657b53b335c1c91222118e47fee143140a9f5365
Date: Thu, 11 Jul 2024 16:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720714642
