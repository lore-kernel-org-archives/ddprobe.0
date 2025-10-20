Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236BC523A
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760919594; cv=none; b=CwPBXO+MzC1nVe3z0r/qGhWZUtdGbqEOEr+QG2xcoac2xG1oxJRr9hB/wm00R96iTOVNAMY8Yx8JXj4ikuOcqlpXsp4AMtCHaKJ7nlc7xGA1cdjjm4r6GB2B7pA0YpGhjZD1MNf6X1ixZyFGRe8lDMBR72gj4nY4fbqaPfb7cwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760919594; c=relaxed/simple;
	bh=VenSeRGVxtv3/amkgYBcxeweg682sow4MzxL5vZ5iCw=;
	h=To:Subject:From:Message-Id:Date; b=L1JaQdU1SRTS53lXLJtPkvqvmD4sYra02PxWcdmMljNAcRNp5OuQhf9PkhA9+51ZYbXCR5ZTD+xeL2Grf01qN9qI+KygyA7tjvkVCszNqgRQkynlJ5I6nTV+fEgGktHDj0lAn+duFMx5TYfEbpIr8qDSwpavvQ172WFl1cE4raY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/FO6U2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/FO6U2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68B2C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760919593;
	bh=VenSeRGVxtv3/amkgYBcxeweg682sow4MzxL5vZ5iCw=;
	h=To:Subject:From:Date:From;
	b=i/FO6U2z5hn1PSc4h3W9tzYnODjR6Yy9nSeqU9D7+W/1kD0nupc1boUhYZ7uIDi0c
	 5uVypUaFImeeMJodVcjH3JorFqlz3WDUnjjjhAAMdnH0+sawmkA8dgPwgWeFOIN+mH
	 5xdxa4OdjUwdBNae+w9jNnXlwhKyLf5twpPhusP0kOs/zYz5iMNFMq/c4jIvBpIWUe
	 1F2C2F1ZtOiwGil6090A0v8hPE9MCOHrSVJEGh3V3ZCXjw2ZnCxWMt7KCQmH7zOQyh
	 vrY2xWN/kH/O45BfiPLWLxIXU741aYc0sUL7IOUIZwhyE7RKlwHMgSUj8BkT9Mk6BM
	 DNXWUvgV+fwcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B26CCD195
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176091959358.10806.17644692711286705169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab56d90c09f7fe68c5b80f56af0d6d98486258678bb091170fc22e49f5e4649
Date: Mon, 20 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760919593
