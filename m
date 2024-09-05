Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410FBEEB9
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725506754; cv=none; b=Ai5kZzeKzZuZqr5pv4mDysFH7jEBLOibnh/zngvM5LL3e0k7AkALwD8NPE1xCKoJj0TuJHv0xPr+rWy7bKRgu/83lPKDmH3qnoRzb8RvSvG91EFvY33boadfMUqz9k32mob5TU9k5Xet2hQpR6UvJk0z0yARlK+RpbcCVNtXOEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725506754; c=relaxed/simple;
	bh=605VNdyHg0H8QQL3YbH1uAQ4GwNjAkkhrbHt/ufgULQ=;
	h=To:Subject:From:Message-Id:Date; b=VAlkr4dS+wrYas6Fwz0WCSubXLuc+1LDgaEHj9Qb6Itl/IBMpeIM+klvI70eXwynAbqCl0DDScGN4iJeeE9dDS6Z+D4dQrbWITaT5HcwZ0fWydyZfMvpGPHRpjR+MAe56RT3pDoWBZEZHmgsG+ZJ+M/6gs9D4BChesbXEM9KcIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWlYeXQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWlYeXQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3EDC4CEC4
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725506753;
	bh=605VNdyHg0H8QQL3YbH1uAQ4GwNjAkkhrbHt/ufgULQ=;
	h=To:Subject:From:Date:From;
	b=tWlYeXQjwKdcB0Ms+Sp0W1gnTKZm0SmmD5odtyKdzGPtD+6BIafZ9DxywNqVhOR2R
	 wGHYKL3xHo3R/yKMN+2CYOC61P9fGc4Pg1jNkQtY9p0QQSXyCJG7qtM2L2KCHe4qwv
	 lPxGgiID8KwWiV/d3UJBY7rMkBWxN848J5Ds7JIroAHRDAg8Su0QoFak7TtP6Iio79
	 6owThQqEXupsQiu008IYhUnt3PWzCjXrIFw4zEINYVmN+XA0EvKDp9CjjmCoja3CmS
	 pmeTwT+DFcx5kjuWUhyKLskplAGb5azF7ToeFqgzjwyfz93hH5GtG9vFiOBgdUo/1D
	 3iLj+aD5T9gug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DC3CD4848
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172550675362.15077.16239558077685504841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a01aea3be91c006d28bdcd6c516f8315965488c4fc4e2481cdc1dc347ab017d6
Date: Thu, 05 Sep 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725506753
