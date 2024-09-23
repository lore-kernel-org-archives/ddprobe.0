Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162EFF9D4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727127954; cv=none; b=fF+VyL4V15xOlVq6eH823OsHAs0nykJPPlOKjaxeVP9n71QLT2TV9NqI/ukV2uzNlepiL2CXIjrVjxX6DVM7OARJruj/lvL3GjvsIo6+x1G9GMPBV1YRm9RtxVwUrvnwJR8VW3Jdb+od508VeAorh/fYuGI1KPHR/UbOcfU2p2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727127954; c=relaxed/simple;
	bh=q11HERoIqirA5q0vnaBszYzuZl9lp4AN3YBkXB1aWwI=;
	h=To:Subject:From:Message-Id:Date; b=oMfB5lf/QyhRPI/3EYBIehcNX//PglKSR4NlnPOhDI/Z0Q6i43JgtEprdAxnEh/1/LmmV8SxcPlJ4Ijzqcg+u/Df5iiWk4ojxoOsVBZbDCZlfuWQnc0zddWtSY96ItxE6dhve5bW7maQvyZeRzH4Zr29/cUmdkR5RNHX9pDfstM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JANha6mZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JANha6mZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C0AC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727127953;
	bh=q11HERoIqirA5q0vnaBszYzuZl9lp4AN3YBkXB1aWwI=;
	h=To:Subject:From:Date:From;
	b=JANha6mZw/m9r1LZLw2Oc8JKqhXgOtwnwyHTJn9Lja2GDT1+b+/PFEMplrjBqEhmA
	 T6V1+5VZcLY8VVPiiOx5KZNmkH7RxeY2J6wG8MKndIH64RmaDVy5p2vggcAjcGMRuw
	 aGsWwA8tk+UEnGjkoHBwB38WRi7elKFT/AkZmmwTwdwCkkKXjWxqPgey+hd2sx/zaK
	 pSGKCUOZb92znNmi7nYk7pdCQ3WZsxKSCI9tF8xajUgD0Wg60lCUTSOfTxSX78sYBx
	 JIw0ScpsdhbCdlX3Ih+BQ+8ONtqVjxTwe3KKJSIhwS2hnClr/XiO7cGHtE6wd3rCNI
	 d9wQHrjJW5VHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94200CF9C71
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172712795359.26093.14346795493864449069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2636eca83c952a5b4a005b5de26cd936ca12740841f42ea487ecab692ae1cc88
Date: Mon, 23 Sep 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727127953
