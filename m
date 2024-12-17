Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2730F18E20
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734415554; cv=none; b=meUeEHbkIjEoRvWceodaaBws3soI3ShUlfr95kPO/NNJbXYYOTvZd2zKhgEPVZKCkPn6Zz2G4/f0JbcD7Xwy3hhtsg7fWLSUS8w+Jg/d6frLPcP+0dr4cvq41+VJLwMyRQYvpx8AoBXfq7ebraD7fbY8CpXNqCloI+yp+zherjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734415554; c=relaxed/simple;
	bh=tdbIEhXKjGfzLa7kiuSsFq3l14XO2YHqlXXN9+xkvpM=;
	h=To:Subject:From:Message-Id:Date; b=RN1Sk3dblgls/BvBSfWBibrjM0PK9KYwDGviU2axRSpMk1nbrV9Uxa6978y2a4sdgAR3aBMt8XzTEF4N9bvcelRSZB7u0Ze8Hgk9Z/zAXjogBUyLfnTwI7TAqfxa2VMt7HHaBKOp+Alfze0KsZwfwF00PZ6gFB2+rhtQL2oug20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqSrVity; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqSrVity"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB349C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734415553;
	bh=tdbIEhXKjGfzLa7kiuSsFq3l14XO2YHqlXXN9+xkvpM=;
	h=To:Subject:From:Date:From;
	b=VqSrVity0LR13mI+7hovZJjGCiccEJt+uWHJtxs4lsNcTuXXrGQOG18X8meJnf9sN
	 ax//xU3VLGUrVhZgqAqSgADGeF/+lvMQwNHafvZLIu2h4iumu+gi2IZRA/9HQKq3sO
	 jo19h+2V3EdzIIPet0r8Je/kmgAI17KyIjee69Az1AYa6uS1lknZAAbuKxv+y/5lNs
	 6XTz/JVFtr7ES6/3ueaRbtSqe/TO1iutDocBafxh6z0TWOAKwgFpeSNm2nMbo0QD7B
	 C2NGFeeOk7TmksIN49JaJZQStN1fhuZt+rsVFG+GqtG3cdY7PEOU2HfNehw7uW8YVf
	 p9cge3K+pcZIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7A8E7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173441555360.23324.15546396660098597919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ea9d9361875a44589ebc1b398ef09cbeec1cafb5c593fae32b04b5389a5dbb
Date: Tue, 17 Dec 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734415553
