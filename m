Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EAC221DA6
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740643134; cv=none; b=TkdLUwrzKVthcsE29GFovUa0FJcRWqvN5mB27xJTKJdbaifGHzBzqUjEL1aTS+UAO70/U9fMWFuCzDZmAlVUFuxuq9s7ru9FgpLqrcpsfzEofZRV0u3HMcy8Kt+t8FjKoFDmtBrjmXgFmg3pgkIlu+7n+Qq4lcwXVulQ9ZGtorM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740643134; c=relaxed/simple;
	bh=iF4UVPhIkgfEdNRmb3R81Qec1sfnaJQtjwbBftFBYXQ=;
	h=To:Subject:From:Message-Id:Date; b=Q1YWMnhU/NuIMbwnebvik5PlS8jrwlUd9NGmHYZdxb9PIosQImf3onY/q63OEDnk2d3FaW1pc9KUkZ3lO2WQlNafOc5oWtKQ20nF9AZJaQDCR2G26yFSflprIvllqrRm4jEPR0psGaKWtyMbxSmVOIGCQCaVWTUJxHpj5NyEz3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHVjAfOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHVjAfOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1ECFC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740643133;
	bh=iF4UVPhIkgfEdNRmb3R81Qec1sfnaJQtjwbBftFBYXQ=;
	h=To:Subject:From:Date:From;
	b=sHVjAfOyjPtWr15oHevU9w+pcvZzoUPavJSTykCw+ZWAVVh5ska2oqTY46OprVw5U
	 OV3oTCpHYSLvt/dQkAxq009FHDW3g4jALXXZjaKgPY/W3TRhM6wP06X2YEnCxMkMUg
	 h2sXfmtYDt4QAYsTzmB8Q7Cd+W4sLNXjX/KYJXl4R9XZnI8lRtuCCANUoyvguwvIyU
	 x6YoHi073QXnqwq1xuydsQLUygZTzOmEHmoxYWYyTJzI/nbpdOe/qr6mgFlbVBKvS4
	 X3C0RBjw8JmRdFJhFk69VkzrUI/sohmPWPvTfmC7XlM2lqHQr20tEIdGyw3VJ6OYEZ
	 f1/gu5l4kQh7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997FDC021BE
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174064313362.23108.1802572341155118216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809e20389b69da760e52a40d945c68d6264441d4b9b04ec679303d27c32566fc
Date: Thu, 27 Feb 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740643133
