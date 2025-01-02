Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9E33FE4
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735800954; cv=none; b=iFcJoENBd/nXwv6DA6NlacByPRIL5E3D1aevJX7LWMU+ULgugCxThkqJhFDciCapxnIcxlLxcbHOgb2j87L4DZmCqoiIAqjhb68nlPJ10gu/siSB9SztYiK9+zubSthcSkuqNPaAN2Ex8tZ43vP5fZS7tswtsUDEZYhuRQ13kNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735800954; c=relaxed/simple;
	bh=BWbvgsgZ58GeMWEAe8O1XbHxLEJyDkgCOX1H7XoIcoU=;
	h=To:Subject:From:Message-Id:Date; b=I1DAR24AWANW03lNObdkUryCEwBkNcqWMZMKluYTgQBh96g6ZOCV6OsX05eEX4K4tj9JJw1rzIshTcwBYImuMcxS/rfvwHhr1yeElzthOtZa7dKnbPPNxVy8+hIfWzYdWYj+sOSyhgvo6fvu9DJ5TDVl5TFw8l+Q8KNxoS69hA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQxEPt+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQxEPt+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A79C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735800953;
	bh=BWbvgsgZ58GeMWEAe8O1XbHxLEJyDkgCOX1H7XoIcoU=;
	h=To:Subject:From:Date:From;
	b=bQxEPt+KuILhLeUgDl3rdMFgzWjouZ1aFiK1kqcnLsn6fyumX80L4BUF7+byjUo5G
	 ysrEb8+sJIFsaDIV+6wQcIjKFv7KHDVGGK3gTIjsvh3GXjcw4aOLF8J+qtXv1OMpMn
	 zGhBS0Us/AAzyw2DTE05Oqn8tWYuP4vjiM9rjFxh58tMtwtwysS0OPYkugdUr40az5
	 qOtt4NlZ72O0eRFoXjk9G3PMDE8EdXQkv5ICKO3goE9irBitd5sc/gY1KXWJxBiV6O
	 nASeSkpDz2bJ6WCh1eZ0BWbTp68cOkVenMU/HqEAihCVo8k/Wmn4bpiPstHLGR/TbK
	 WjDuhX3byP95g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94979E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173580095358.24813.5862947325432496449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd9cb9d00b6070f0ec94aa4836affe6bd2f4f6b4c64c08a29505891ea1cb8afd
Date: Thu, 02 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735800953
