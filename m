Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341B119CCF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775588134; cv=none; b=CzbkJx+18nYeaGDnMroozzWmTMMGOCByVul7nE8+T7otAwJrU+Owk5XQoosN5JX2tRriwy2e3SxONOEfFd+MOgkpAsSFIY8QKDyNfZ8w1fY07Q2sCyahcq59YAVRohl0uN8rqd19VkbInNJtDpIiQQlA6c9OhX20zzqss5bFtBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775588134; c=relaxed/simple;
	bh=9ZGQcK5Huz+5BufvsRq6B3cWbudm4zoFxyrA2bH+bGE=;
	h=To:Subject:From:Message-Id:Date; b=pCjBIWNun1VQ3reQ8aXCMOEN1eBVF0mDxy/yEuWkfrAsFuse1C9m5wqUHWSUSRHxF8ynS5c276FpBsnWdHNkssn6xJNKEPyTIpLHBiHBHSe8b3Y0U4yNfZkArYW3+HyVkKk5T98X/fO7DoBvzYIPvqovz3GTDpWodgxev9wAUSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZdNxMcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZdNxMcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4F5C19424
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775588133;
	bh=9ZGQcK5Huz+5BufvsRq6B3cWbudm4zoFxyrA2bH+bGE=;
	h=To:Subject:From:Date:From;
	b=tZdNxMcXXRPe78LVRohyvXFFY31CfGdk7i2wnl2C974PRKHuIaKg487jr4O57O3Fe
	 +nxakm4uaRkwvDKQvJ6OBICPGpd+TazX4sI3hCF0GSiDElulfbwMXaXw4e03VFpWym
	 s8+ShWpLoEgzLCQPXmxz/cg6uYkGsAungjHANJ718l10ZGKwav1g1uxvt3UuAjsp+z
	 zw4zAaz0lbQZa/zQsNmD06kTJIUVh+PoJeOJJeJtrX1kO5qanjHf5vSLgoZ9EHq97l
	 OappIQwIEsmHnR9wS8RAqsvvjvOvLgHCjxPry5KAQibNypWtdw3EH3/t7Zv3Yf/VAT
	 2xF63qlNZX7vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD15DFF512E
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558813369.7884.2913888763164657689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7beb1717749820ab10fe948f5e0aff859d1a33a3313b2099b48e73c40bdb552b
Date: Tue, 07 Apr 2026 18:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775588133
