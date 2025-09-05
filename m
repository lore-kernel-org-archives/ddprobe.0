Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6B71EF0B9
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757041794; cv=none; b=PdCVrd8mO21/SFwHu5E7lTAD0eobWdMP1bSHaujwXeIa8QDz2Me8C2cMHIwEN9csJHxPA7Eo4f3FIb/tD+mV2kEN/FDys6pQDMLBmm7LvgUFZw+REvEh8u1uOQW/hPawAt+3oyM/PkdG43qghT6t6qbAAqt6nLU9llc9WZmNWOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757041794; c=relaxed/simple;
	bh=54Mpt/mlAcatdi0szzQJjos0gAU+hrOPBOH3XvPN+sc=;
	h=To:Subject:From:Message-Id:Date; b=AYMVp2TvHVkODeyGUi691UmEKDyfxY1FgTmELQu7eg9sbXSkna0HNphnidEZukgpYZ/NFGSQZrJfovuGpsEEKsq5gK3Svbk+AWQyjGDr7D61hQVJz0PTBbk324iAAsfCHiKA6IbFyAhfYXcbzK5PsPR/8N3J9G9KqtEATEE9WWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4YR4aEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4YR4aEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0924C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757041793;
	bh=54Mpt/mlAcatdi0szzQJjos0gAU+hrOPBOH3XvPN+sc=;
	h=To:Subject:From:Date:From;
	b=l4YR4aEcjdW2n4ZDAUDYgEmW+owv7qJi0fIhFITu6X3L0HPliH0wH/VShTSn0Hd1N
	 sfdTy4ReuUkCmurD9yrFWNN+MmHmSoorkUghMebxQ1AO1xrWZQSxTu8yZ7qQeuFUEA
	 ixHxkk6OxZwKZcLVzgjbncklDjz3dYuHlnWONyFJFbZGSccIfaQg+e4jpwpBFqfl8E
	 NYEoyY6cxkoJQh9cFp0QH3ry6NHoWQZLRaM/WO4cn5iwnd2qlOeGQ3zPV+AXsBIX32
	 qUfPUkn2ZscbScbU4nKHwuOp2xiYV8l3cXKHUDpc3J7cL9gRvknov8MgXG1dvaWQaA
	 +9JVuW3kEWeqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF9FCA1012
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175704179357.18736.11229843200583244547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b2ff4dc863e6d4f4057f79f281ef9fd4bd7a59da88954c6cbefb2410a074c36
Date: Fri, 05 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757041793
