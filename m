Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F18428FFCA
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744312794; cv=none; b=fIukv1yXScdu+gT8PiSYL6u3J9EmoH5hhmjn3gNQmLzVIUH3pbrbcEG/xTsUU4Wwa1Zv5segora2qnSodkG/fN2TT5tR4/Mpoa/fjPs8/td29AyWiCldaY3DMD49KVXjK1X+6p+uFYBx+xMusS1aOta1BH4SRqGShpWKQUc3850=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744312794; c=relaxed/simple;
	bh=qmU60rKTMPwN9pRBmj7pH1D6/ICAS5pOm0SnIAar3gs=;
	h=To:Subject:From:Message-Id:Date; b=MNo2r8B9D+YYFtbaVzDU2xIVNRmRUuIe9Luat95tRAoUkXraqfv5bYNcycYEVNi49G34toa62LS2m5KXRxBjfcvhEh1lZPvDb7mNhT9oeCQzlgHWihtsCnkUp4tVtWCo4P91w+1PisDt7/ioZsjb0gem9u8OmPV5s14PpOtC+lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+mCcdI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+mCcdI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5764C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744312793;
	bh=qmU60rKTMPwN9pRBmj7pH1D6/ICAS5pOm0SnIAar3gs=;
	h=To:Subject:From:Date:From;
	b=L+mCcdI2n1yM6BPTbkQBHvdzLYw9OuFZVLE36mQnDejuzgY+VGjE3WDfwwpm9k0VT
	 oJPIxUUOhZF55mxpg1vmwKDXgtIoXlQPTBsxK+lwjO2S1/OsANd64fblpa9sju8TZb
	 CrRDz1A9i+QlNsBbWmzpCx0EnEMjypZoLo8QtVC/zYDXzTgOmB2O8ZMFtBmmfbJVQh
	 k3Dxi8NgRqpZsb5ArhwV1QO8KJIl1F36RZYdOE1OsiixWPfCBIii9vKlpGhCcKdLsv
	 JRm12Ajodk37PHCFpx48PyEp/CTN6BDKzva0vnE9J3VmTD7Ag2N5SyEeNtE9B4VVnG
	 hqg1uxqES7rmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91712C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174431279358.27648.1412410258305499810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ed6e6b6f21ea774d9a07ac952bf761b03b9ccc6f17ff4604b6c3d337b18458
Date: Thu, 10 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744312793
