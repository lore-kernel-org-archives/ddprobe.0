Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2019B22256B
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762783794; cv=none; b=VgEXCUF78Gvvw3Nd6GtJ1UxKotHBxA1HRk5fi4mUaEcTL8iLxtWGsFbx55XPzUC2s3fAU9k9Po9i0N7y03vuSUFcpB5SJgC5TYIb+4MFHgd9X3sUiO5jlUgK1/4uMsBcJbPH+JqdlFxuDRyEmMJgqwd2eiWTPXTRPN7VG42Pv54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762783794; c=relaxed/simple;
	bh=ALRtvUEJYtX8T85iN4vJV8+pqxtLfW20gmp0m8Ma8Ec=;
	h=To:Subject:From:Message-Id:Date; b=rfBUunRQOU8gZcQ+J0/lmA16Ksj4wvHU5miJMkhaImnfzQG/GDisLmrxSuKjhMCS2JN5KWVwbA3MVlrYilMIC83y/Qih4nqX1xunkGt3oRQzPM0ze9gjvZo6bT4pcQ1cYm6TgqyEmGwb865TmdSuhF153MJPZTXOTrUNoAWQNz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPJQ2hdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPJQ2hdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF43C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762783793;
	bh=ALRtvUEJYtX8T85iN4vJV8+pqxtLfW20gmp0m8Ma8Ec=;
	h=To:Subject:From:Date:From;
	b=mPJQ2hdcgXD1rboqITCreNbEuLxhDbUeNUfzBXo/XoAVj2uJvLM0da0U9RkWxZnZR
	 0qxzv+19HhFa0XgZfeYmt/U4WmHdd9B8KO0gF4M6Yj9oFWBJPD27WAAUWfmqiQrUEp
	 IT5lsz5Ns0Vm2d0LVZ/B9A5Qfb3VVeLoEsje3jQWIwohTuzgXmKVOEhVUrhcl3oJUW
	 d0aXgVfSRRfJaBM4Ba3qXL2alRCfL9wMR/QJnpo4avsLBnTXapqMNR35myj4kLVmlm
	 lVeH1k0ASbH9xiGvYASU3KceJAfvrUheTeOKmxaKS46fV/2Iwc8OnAlus9Jvu/JlPd
	 toECawLV+jIYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E84CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278379358.24995.1849150904422750522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d45405d4d63b3f3deb21d45ebc63fc2995262d01ca219fa6be9360ec836819d
Date: Mon, 10 Nov 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762783793
