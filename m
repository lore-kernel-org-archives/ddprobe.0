Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1100F507
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742837393; cv=none; b=ezAAUsjGncwyq2Vfg6LS+6iY+Mc8DwsuASoCZMiXB47D6zF87oNY7JXgAV7rJt4c+2Y2O9UqSqoVZ0S+fMGUny+s0E6Ye+qp5hO7r1XCJ8qAvjvpRrpHNy7etRYHyJMsNsrPmyFXWMV6cTC+KGBRoWTl4UXyoU+wbpTf5dy/kpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742837393; c=relaxed/simple;
	bh=Eug8PQ0tvU6Qd9ipIBy7WBbnh0f5LYsG9B21qX0Fe44=;
	h=To:Subject:From:Message-Id:Date; b=QuIiUJpHNmk/ruuceNo2D/TR5MstjUMSoVN7IAe8n40MX35ZGDVjtMp6zhLXMHmwivmKAYV3EFlCBwPt6IQJNne468JkLFp0NDAyUQsAUqwUyTgNzYCKtlrSsm+7l19ys3hqFQmNPxjbY6D4BU/15h65n1jWX2jX06thQ8zBDzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfPcQoS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfPcQoS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0E0C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742837393;
	bh=Eug8PQ0tvU6Qd9ipIBy7WBbnh0f5LYsG9B21qX0Fe44=;
	h=To:Subject:From:Date:From;
	b=XfPcQoS9bgzsYbYWAF/yNe0OecoNSimVzuVZ+b3hWZk5JIxus9epd52Y2LF5gEUmj
	 8KtoYzv+kSOdJCJXhgc/qjXpT0oaSaP/D9vuetnq4fTO53sdIrKlRhgkzFh6OofNKH
	 HUIUr43jpVs9VwbTH5XeaOFJdfSdZzYLa4jKRhLitrecPZChedcyUh23pBNT324Nwf
	 b+bvqIRF54iu3xfyG6YIo7edPsZZ8eLnVXUnLLWcREO1CNPp+V4qy/djxW4tSIoy7/
	 mH+JSgyB1XA24jLHHQeyR3LsdaQ+s0hKpNM3fN/9Vp3aDwcbzn0mKs3aG/pkUb7CM5
	 kWLGXchmvPu0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A102C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174283739358.30085.3128739193112061248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39bd3d04c742e3e3369f6c764ec8167f81aa84010f4149d3043e23688983ffaa
Date: Mon, 24 Mar 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742837393
