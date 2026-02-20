Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110242DFF04
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771628094; cv=none; b=So1buSD4zayqHD0wTPN2M2qtaN96UbYXYvIhNq/0YAklC+shAMAAaAN1urQJe0IlIFIH+C4u82zXt7ObgCYYTYOr5yDbWC5Jc43WTXgMymXxkx3yKFbo26DfzE8U7AnfoyilulXtf5HkxvlT07zlvsXOQ5CzhSaRRvQNSbguunI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771628094; c=relaxed/simple;
	bh=aVWz8LPTfE1d8gqGGo3t8C3dX2NqEJ/NbGHcaYfsy3k=;
	h=To:Subject:From:Message-Id:Date; b=ZlqhV2NTyPyIel2wrWi0LL9H/OYVo9W036tJfjnnZ1Ilscbf8U93DnbwrkJrFR0J71Q4Xs663WDgfpHl1SQrG550HZ9xZ6eXAc3z9oHFoXsJUJCAd9YLXMmXybwVsFv+8yyIjgP5km//WMgoXYLw2xrKImmg3RgdPOjj6f4tKbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQc1WJID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQc1WJID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D4AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771628093;
	bh=aVWz8LPTfE1d8gqGGo3t8C3dX2NqEJ/NbGHcaYfsy3k=;
	h=To:Subject:From:Date:From;
	b=uQc1WJID0QsH990bjm/XO0QvxpqC0LmCVc67yhyG1K4Opi8eaVcWHG2qSjlNe00YE
	 uZgwAYr6mGJGXIm6Met+z8fDRs8tojtD/GOb583dOZ7LJmmokPo5DFcN/TBhzd5mj3
	 t2/sazHs0ML56l3ZQtPQquPiv1DsOCNVXRhx/QzYwK8pTWhLhXOJPydk//ZJvkjOfU
	 52ieqRHDg20WCCm9TvjD4hDmoB7mm9pg8mZnF8USxAWIPqU+YVvzdl9FSOTAtT0esN
	 EQ+qhinD+n6bIbzCdl1dCNGhcKp0obvO7H2QO3d9lpO1qy1bZUclYFNtqgL9x2eYnE
	 ONFT7VVLpcyxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94897C5CFF1
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162809358.21011.16898776222307467637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7355f1d3579df99e732fe06cd8cbc9a4327e057dd62b0849352fc2c1153a41a5
Date: Fri, 20 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771628093
