Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE98EAC7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769478833; cv=none; b=om1KbhXkc406elxSZKYRkXfLPyk7kTi7GXd56kgUMinhbhi3d2et2GqOpA0WdNzMrltWpANOdi4IlCQWYjc+7x7BL6+0tzO54xYmw/4OAW5r0XwkaV8EbiqgvUfo1aRblK472x1/B+XXuZlwzNM2FzI4PqtWW14czv0JK/bOASA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769478833; c=relaxed/simple;
	bh=2+QY19TnsO6HH/7Ql3u5YUqOA5TrPkWrhnxgdnM9lP4=;
	h=To:Subject:From:Message-Id:Date; b=fSoN6aHGQGxHhuOImwujxAhjogJNkK41UN8cvBHJbWY3UVmZa0L0ZZrBc+n7Z5e9NbCetj7yvf3W9rr4gw52JVTklxSWdFD5Xskw0jd/awPQ7I2CPqRLQT6VWrV5eabxh7fXh7LMlQca6WdbqvYSK41YtNolfNiABvus51nb1MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRk8uxqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRk8uxqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A428CC19421
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769478833;
	bh=2+QY19TnsO6HH/7Ql3u5YUqOA5TrPkWrhnxgdnM9lP4=;
	h=To:Subject:From:Date:From;
	b=eRk8uxqFMvDnGPb6ybX6MXsWR81QqhPQjBNNVv8HWXXQmpM4nilgxY7Ji2y9v5zHB
	 IqZxZtrqLFqpw07AR5anHIt/q2UaunQLkdWCh7R3D34x21dbaHhG2IK/8BjADYRknO
	 1sUc3Pkq2qcbZaOfSP9rb1lBWwI0D4sGoDyNGSORSjwaz/mx98kN5t/aUopp40MFT4
	 3J7hpHLhEAyiCkSuan4UipUeUgND2/TnQOa/yxawWXG1X0x++Kh8NxZYHW/nGustUH
	 j4nZoUikAlK9nYSUnaaE6ieva+SjxQzHnxPl9K5oJyoomLBI3z8bwNUBzbhJpkE+bk
	 nf32LfPBgbW9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A48D1951B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176947883358.3121.4753223543261874123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2441e62a1f9d2d87c4012a278388dae4e90c4eccfc764880e06957a28a0e48d7
Date: Tue, 27 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769478833
