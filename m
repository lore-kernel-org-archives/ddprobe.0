Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA1118DB2A
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760488794; cv=none; b=QJSOmpUSwy9ZycE14NaXW9Wf/uQRwJjqMxv0/5WrtvqBz0z/fLn/jFu3x2B8byi7AuNJFobwI+RzqwrcnJKpUx5s14+KGIFVbBhaoRaqzXPn79nGe9MNnFBJV8oWAdwYm2pZanisDBVr+rKUm5ZfRBCZJnB7fAqNDUdBLjEKj3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760488794; c=relaxed/simple;
	bh=EH55GjsCb1O3lKi4OKE462Itj/iGCTYQmn2OxWmgRzw=;
	h=To:Subject:From:Message-Id:Date; b=WCtv+0CAR0vniaL2PUh8YNCZW3M8MSoEuKpP7ugK0vPT7IDBMAcOnDQHTKL3lww3FyHeG5x8AFZ16pDQ3iF4ZFR8qBZ4Iq0m1bi6VP3UUjDz89PfDJN7sl8AUGLxNxacF28TQ6GbYlzd3evDUUpbj46bKWF9I3AEwy+Vxxp7XrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WklZoGCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WklZoGCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A770AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760488793;
	bh=EH55GjsCb1O3lKi4OKE462Itj/iGCTYQmn2OxWmgRzw=;
	h=To:Subject:From:Date:From;
	b=WklZoGCyvz2KC1d9nRJBPWQGuiUTkGdkn1U0H/IlHzONig5moyWAwGi1hP6IVoaUW
	 2+Ar1xlqYj0nlnrE7XOpPAbVgqukBfR4wakl087kHi73qybaatxKu6RosWpuhzUCKW
	 xhPYP1t/0sOy7dgZ640xl0F2IHfwTcBRtbRjUgXwiwQDXuXXxZpj01F8VPxZsH5KsW
	 +NvXfReLUqRfSo+47apn3t7yl4SsO+6aiJOlKr6RUIt3z4RUpxWWFrXab5LSBwUkKj
	 N7xDT6luu5W2M8aX/hGgVZul5vBZb375/nYvfR9YTmM5Ca+yk1kU+IHnT6AeQRom+g
	 j07UxY3IBu0rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A35CCD184
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048879357.28902.463494094721704932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c68eea614156a3053cdfead8a82cd7209211c1680a406810261f6cf6db4a6c9
Date: Wed, 15 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760488793
