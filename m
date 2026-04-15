Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BEA3921D0
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776236254; cv=none; b=pmutFdOzW5KzOT1x9GhoCHTS/idhCbJK1SVSMtI8OjPTMaqe+ykWP6zbKVoYDGcJoRykXxbPxm/3XxJIKw7k03aY1M8CZBl93hSVRhG+pgfh9tV430ssAsjhwEt5WkKrPejyw26frmDc5ZCN/U6qHtkl2sKMLB3E78LupleKUbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776236254; c=relaxed/simple;
	bh=Po/lp7eUiBwTYIgYAEd2FDBjFz7pWVGMg4Y3fSsqsm8=;
	h=To:Subject:From:Message-Id:Date; b=l/VQva94k4C8mEHOrzA/doULbvI+cdUSbA2F6ELYjeXdkee9ef3Li1h9FZt2Wa+gBeMTZ+eYvE2yBcLP1LLPMAiN/eQipHUpHSf1PpouhyRu79Da18Cx9ePfxRh6rM0/numjCKl5hMJVZPvyOCSPU4axm6BIgiwga1+HqTz2/RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecmWCJr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecmWCJr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA43C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776236253;
	bh=Po/lp7eUiBwTYIgYAEd2FDBjFz7pWVGMg4Y3fSsqsm8=;
	h=To:Subject:From:Date:From;
	b=ecmWCJr2+JuKm61Awk7rqoIpSXzKiXSQjyBkEw4jOaKUEEkPhd4VObGxrTXPtszZ7
	 sHm0jMyvm527jwEBxyfUK3bgKYzyvsIjjP9QpFwWDXiL9C/EX4a8mVtEu0OctLUwCm
	 ww/nCC6ydzvdQlzBSvx/yXZwD8bCsbaCIOoOZxDrA/h01vikERSjdb/8gryhVrPYLr
	 /iBIjjd5A4bfLbNMMDUBd9IZ/kw6Z/bzyPU4nfGxLGUoILdzHE2C17EIobN4eYx4YN
	 dSY89MhJ1H4WysRLUOvtrRPxCU2wIea9ZIdzhvmVwzH/k4KmwNdDW3ijfKDz92eSQY
	 i/uBMppEstr2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF388FA0C3A
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623625368.12018.3495798117020433553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8643f9653ba09712753dd6364e14dbc3a662ef9a9f18891b2d63ef1775a2bb
Date: Wed, 15 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776236253
