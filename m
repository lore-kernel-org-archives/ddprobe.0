Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2472E737E
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791435034; cv=none; b=ZvRzHJfL7UHImmF5xJXR6+jdiD/rQK4Y/uN4ROolVvYS1X/jghSI+A+11qqFbExYeKTSds6H7cgwrsjI777FNAJwU/hHv1CdMOEsi7ZVN0+qrcteDOz6I/tYkfuGS5j0jtuFU7fCQKzUAdYN0C+H3a6UE5x8L97oHMf1kR3XnPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791435034; c=relaxed/simple;
	bh=l1fJunRW28AtbVD4f/nd5Q3Oeq9OWZ+lSBuicsUPS+g=;
	h=To:Subject:From:Message-Id:Date; b=jzxSLHwQQpQFHRDbLvIzJMYaBms3TjrzOfCfUjxin7obeN/zjkkLY4n163cHv1sNWNRz6FRVZe0njNOzzaSEoWwT+uZNbkfQFrSfUIDQs0foh94ES7Ae+xhfCeRWoe2Q/LctK/DzdQQCy2Rb3B5KU/NA1q/DNic/ILF7eJQHSAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enKQpoYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enKQpoYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E32C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791435033;
	bh=l1fJunRW28AtbVD4f/nd5Q3Oeq9OWZ+lSBuicsUPS+g=;
	h=To:Subject:From:Date:From;
	b=enKQpoYFWRPof//1zAKK+3CQspjvnpKXPBVmXhzxVvVrw78R05WCTF7kJSE1fLuEo
	 yJhCe5yxe4rhGJz+hCfLlaZtmFqWhDa+rlKzzV6bktglbEBEW3rTsCWcDRbIpBCHa0
	 QK52Mre0mhl0cLJzmaKjSXGw1QYOmDpxiSzUU1VNKPYn8qKypptxPnpVkwR/ib1QAQ
	 kNPjnTq36axRuwTpX8aArnBe+WXNUHJdHcbU29JA1Lk7FkTQQQlJDhu/Xsm5PkOwlF
	 sbeDkmAWq6t1Wz3lim2vxO3P9YhzJe1Va7ZC16T0NcwOBa9CvgQGxjM6yGGSG/UaTD
	 MgA8tVgm9rLXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9620CA6002
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143503368.26795.14571321415161371620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba442834f4b9911f69bd1c8b0027de5c15fed9bab7c3ca9cba03806a3cf646fe
Date: Thu, 08 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791435033
