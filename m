Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B54D25A33F
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766193834; cv=none; b=qyfsFUt7Z6B+zGHkszrnHIQMo835SSkR0/WrgXgHkxYCQsJVbLO56JZONcN6YJtghrnL+OXVCXNNA9BP9cgrA5TsMWs9sYMh8fnm4WwXwT2LFVGLVptaPiyy+xsY89Wq4Z5cBey24EwJ1Hhzq5cksgs36RroJHWorMn4uJ7ucJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766193834; c=relaxed/simple;
	bh=eI48Xfs8kyuZf3ckI80WULeiGkLnHVkAZxfGA6NJd/E=;
	h=To:Subject:From:Message-Id:Date; b=CVac7tZfxRRYS3lMxwDbI/xEwE32DNJjfWThKueMAaMuDJul44Ar8U4b7BPSEJHpmhxLugkA4pIA1lQqn4lvK0Ib2J94qgRaiP43lzkVt6Z4FI6ekHdjcFfOs5V4YczZwxbf3B2nO8CWsjUz+Fu371mpPZWPabC/OZV2uLtO7LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SopPMv9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SopPMv9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE6BC116C6
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766193833;
	bh=eI48Xfs8kyuZf3ckI80WULeiGkLnHVkAZxfGA6NJd/E=;
	h=To:Subject:From:Date:From;
	b=SopPMv9OziFHSVNhUaLQ7a6SyIYCxFZiVJDHnYNJFNKpQfxsN+gG7lvgvkly9ukZg
	 IpKS8QhGaGPqnSmP7fdl4+lsD7je7rU8zcYVHgRjtKjoQiVBXAFFx4K619hFdCumQQ
	 pjYMwYlBsNYe2Box57Bk9uLbxGv1gQwYfJjeHV0Od/lHU9wx7gJsz3mQoTbWi6DdC4
	 h5KMyfqkMK4r/HCQSTcjD+hsfJWVzBgu3CYFzYc7ky5ycnTVFXey6Pyd7J3CuAKpPN
	 090gfFCsKo6d7XChqD1312+ZFcMFAhCTRAJw6jsZvxqwPD3VjA+rLHGl8vhFbUNWDC
	 M5S/ZKApDOcBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD9AE668AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619383358.8186.1785210499619479670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08a75bbeb90e73b2feaf1e231fe7af2c19083739089b78dae2b139a954950d1
Date: Sat, 20 Dec 2025 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766193833
