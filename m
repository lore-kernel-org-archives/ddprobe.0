Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340E75227
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758163194; cv=none; b=mhtmJZ4LLmZJMOvQY8UOp7GF6Xy70NjbDj+yvpMEDyMey1xC1u7As1P7T5aEfjo8zpVHtlZXjkNoYiZdJhexIIb8hktx8h3nAT3kRXdSeKMmr+oBzWLzM31yUT0FkbCmbrwPDp7pnelifbqyQDDf8bx2zSTQb9CD8UZlB3pNxXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758163194; c=relaxed/simple;
	bh=5lpABSnozdHm0wc++KT9K9xCXgV4zSSVCIRe37SjRJc=;
	h=To:Subject:From:Message-Id:Date; b=cg2K0bI7X9jy4u9uBa8YHiwatIugs5ecp656DHdCWTA+P9iqxS7toeFsMfbYNUC8e8d8dU6CiAZanULdN58mMbgFlueXaWlwgjYxFhEXjPj9MecY+y1CanIbbmSuvKDJWHkj3h7n/EbWlRP3NEoxJvRYFGsGslf4+AV4a5VbWTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bek+VUX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bek+VUX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4796C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758163193;
	bh=5lpABSnozdHm0wc++KT9K9xCXgV4zSSVCIRe37SjRJc=;
	h=To:Subject:From:Date:From;
	b=Bek+VUX9+kQOBtPmWwmAmiyERmj88GUAATaoHXUpa3lkSqOfHKbcMKABjFQGjZSfX
	 MfSFRgoCsLZvby3D1GMUcchbzfTSNZjY/aaHsu8gThfpKuGTQCIdRkrPb6YNNtdKOk
	 eoqD7i92dmTHAqLm8cj/lIwE7XIUoOdDF74n20N3MeELsjvblL5xDYIrSmnIUAG8C8
	 itY8u9yNJhNNPq8NmELlg7yWg190VVcOXJFfLKIcRKsKoM74BeeIKJ6A2scV6J8DgK
	 3KXrEj/j28IRCP0EIv9HDZqrw+9G0ACDJq6hR1M+NHGmAZXjWfpDHQVCO9LYPUlq1H
	 TeHv/rrpkzmFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB31CAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175816319357.11010.14311477785794521641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c9cf8c94a1799e44ec8808cec9242d6deb990aa72b5866def7dc6325ec180a
Date: Thu, 18 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758163193
