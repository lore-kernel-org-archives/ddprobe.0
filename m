Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34009476CED
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787239834; cv=none; b=a/6L44NwdaR3TNLIE8y4LnneU7ueOy7DIic92u+CI5rTtlqBabphM/nO1Ub7NpLegt2O18GShyizVhspU2wKnteTozu1AcCqpYmuT4MVZ2i4zegCvzZBnA0p1Q7jR6flevr6nldXEHTA+zKjh1AHmvL1FHqVBgHTuhexFECpBAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787239834; c=relaxed/simple;
	bh=4gyvyycU7lJ6uQUqgTvNnQ8CU9qCEBhjbe0m4ICZL28=;
	h=To:Subject:From:Message-Id:Date; b=oQOXLqIB3S2+XiaHqI7p6yf+sMJxcE2S3aPJFa5ielrwTMq8rBVHWPmKgmc98UW6ux5/PlGTp7PrU9iKRlaAqMm/NFvGLtkWuAwArx93GfL8OLEj0IDJ2qM8UHm3bHH/zJRDJcWbGunpTIz4tySS0FlhytVh0iWWaOZUQKMyIFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=taA3IA6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="taA3IA6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B91C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787239833;
	bh=4gyvyycU7lJ6uQUqgTvNnQ8CU9qCEBhjbe0m4ICZL28=;
	h=To:Subject:From:Date:From;
	b=taA3IA6ZWaPz4nJkGY2m39E9U9knG9cvFyDxKqO7WO/LlvEr/82uPGoh44xXNhyf1
	 l9brc4pu9iz7hed2aG8aL/0NlS7MXnJO6aD9Lm/5pH8h9Xp2lAFCqMeEeeCQMtRcub
	 9Cpw+NcM+agpqgNbtAm57uvxIaoC491ENmMqhm0AjLAzpNRDtpQwQY09gH9HYpfakF
	 iaazDV0D8vhz0HrGQXP7yc9l5ZJQn9+Bt07Z3LAknsu0VjBIu77mV7fSfb8a5eT6oW
	 2KD++d8Q0glf+lebe2Zl+Lm3ihZ7UYKPNkQOPEdqb96gqKKgZveDCVvdG5tEJcshs8
	 0xoGEaSJw4x1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF71C5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723983369.1344.11115163361581290317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ed8c277406cc2f3dfcf305d674259f4f56e3e1a07c5a2129d4b0eea4a79ae7
Date: Thu, 20 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787239833
