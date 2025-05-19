Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9831E5B60
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747698594; cv=none; b=VH2AphpAC3dGNTc3BVhX9w9B35cwhYqRIt0yLwIhnqKrxLy4vAr16JOwff0FoFXi8acTlq0kRg7BBiUZbciW+IZsE30Jv779xadsUrrE3MonRup30AwHlwyVDcYX0rNrnvWthcxgVZTd1MJ8xpCy5kqvEWIWHyiS90EJvvCmzQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747698594; c=relaxed/simple;
	bh=7GdZaB1er+CwPOlDiIFfcK+dauaDMGTmoPC7SL3kEIg=;
	h=To:Subject:From:Message-Id:Date; b=KnK5vEUEl4xfiYhA0dFOUQAOz4wDlTLRL3wyk5XDat96CV1sZnLa9+2UPzdKXFrIPkWjm3uME4jewqzEakO8krW8x10GknCJTYI+gxAMvWc7vQK+I2iO1H7IWydzXtddfbYYZkp4IF8N5ol8gvUEkUCbQW53fea4puJoX9ynvjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATnalx07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATnalx07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECDEC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747698593;
	bh=7GdZaB1er+CwPOlDiIFfcK+dauaDMGTmoPC7SL3kEIg=;
	h=To:Subject:From:Date:From;
	b=ATnalx07lEjyCx407T+pv49aJ+zm9O2FvWSLz4hQSCCCdfA4l+4SrUmhNIgtAeiDA
	 ON+CRrquOfTviXDApgeq9N91YbbKYZRyDnQfm991+pNdPs8b+amkgZxy1RyfnDDXyv
	 fLj9mI9E0XCgc/qYJx53+qTcvsjp6A1lzW2G1RHUc0hVfMhFukuxxtxyrguJcjKz4I
	 QW4NSZN0PGoZ62+7rYhehq6UgrLT7PiU97I7wJ0zt4p/NvKYHsQggAHLUV6tHJN8Eq
	 ZRUb+ZBdPn8ECDzCGvDdvBp9A/yvDanOQAA6ncvkxRam/4EV+IsE2osdSKJswJu623
	 3TbPWtuR6DISg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA23C54754
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769859357.32287.17345382743038184021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb75b74f6b4e910e4f7cc31d2813929c64bc26b2e0e21191a65c2369e91faf1
Date: Mon, 19 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747698593
