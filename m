Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBE73BB48
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764564774; cv=none; b=LH4E0ibWytbVUESZxvlXi2DceDF/EqEzeZ+hxSBrClKkMJ8B6oWUGBnh9mfFRqbIkVUgoietjp/Jz0JZiE0/dTUY74NxhRVbT7AbEbTuhJwno2cig/aX+8ibguOwUehRstKwZCk/2H9DOlGfbokauEBjObRfhgg6tqZlKF+0Vrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764564774; c=relaxed/simple;
	bh=AJtaEhqMTpKcSaCgUzCozzynY7DqqzKHRpYu0Ca5yRg=;
	h=To:Subject:From:Message-Id:Date; b=NK3ccmhEcC6SDwF7Qm4t25T9K9Ulex+XU8CDEh8/ztNs4Jn+7eXwSbFl2f12B3/fAp8CjvFF5xlqoxLYfnwnIJvB7XQXWfipKR5SoLdaLv1A7sIjdZCV1jeUcirefBN+mLMtsIvG/HHvduwyqt3OTdUd+MktT7aB9xHnM4hFw0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYqhWPoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYqhWPoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7DEC116C6
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764564773;
	bh=AJtaEhqMTpKcSaCgUzCozzynY7DqqzKHRpYu0Ca5yRg=;
	h=To:Subject:From:Date:From;
	b=YYqhWPoH5+y51bmE7FcauV/e7sXYRvkIvPfoy1uttwUwtzl5GzCk3qZhwM1femRJN
	 jRiqZ6Q8K2u7u3MDYq/LmIAPTjmNGtgyTRJrWE4LmPP7bJMed02pd7Tw0TLh4VN6P/
	 4zIa5BPSnwQWt2ZU/8dd7KjydtbxgpmahuiRh095FF4tW7LAq+s6xdZ371K1+FETiy
	 LlPFUoVgWgR79hkbuKqSa1EXW4Jm2hOOyQH9arveU91gJ6k6N0bfc0VcjGvBT5kk7n
	 Z1M/AhGlIU9Xbr6Lc0km4o8JXsrU+AHi0GK7IMrEcChUG20QcVvcU32ApUgTbavA4y
	 Q15ISplWTuArQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E5DD116E2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176456477358.15714.5234087690143961353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: befb9bdb73b78b8879ed65f2d236098105873e2e644ffe18303ed28c4e9e1962
Date: Mon, 01 Dec 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764564773
