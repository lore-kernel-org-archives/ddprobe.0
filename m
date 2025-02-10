Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588CA1D416E
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739184954; cv=none; b=ckbh41A8CiehYuYjKfO7+U2TjkRR0EHhBShghuPbRCfvBPybAwLXf2p/pIEGVB46pWOpBQ3LCj6BtTpvQm7poU8hsY1ElYiDXvsmjTf7dWbfM9Iv6YI1QZqcwLKjNnGSbhvHVysnTVPyyyrFX3nplNR1awCVgbBDrQ57zHo/S9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739184954; c=relaxed/simple;
	bh=c2wnTyCMef14J3kwRpgztyy3MtTtdve+vHHEezY9YVU=;
	h=To:Subject:From:Message-Id:Date; b=o3cQ/AeuCeM6JUbmIQwCS1o2dicctAOeW/5KZs1Ot9UQ9A5D+mgiWZZkRY6ThuUp/WoGTKyk+vcrVJ6syrM0gEUAtc8aSTHDwrqiZJdeLdmdW4zJQBHUJfh+yutwEWMkMYfammCXakW6AjRyN00h9QuWXAINLPZQJ86asjak4Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSPb4vfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSPb4vfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9CCC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739184953;
	bh=c2wnTyCMef14J3kwRpgztyy3MtTtdve+vHHEezY9YVU=;
	h=To:Subject:From:Date:From;
	b=LSPb4vfNa9FjrewgwLQ8SVEfQIkwwXCvDVgzvihZ5xebbAJn9gW/8JqfmI0UbDLIn
	 LXHZNj2fvwx9HZZEHMJzpOflA+VHs7PfjVryUDfAOBJfhBSfKu4q+qoqoSahUllQ/O
	 3L6M+nK7qGtsyvHfUF6NfCm9ugJ6uB9nksaOe3I7JkHUAaQu/wFQXXbpdt9NedtNl1
	 FA/uw69ryYY+6WcW0jDjaJHhMxbkRBomlvc9rokc4dKkY48+tQDddWYC409OEL/qe5
	 s3/IHnGvL5rQGSqOpDn73CRyvJ7LxG3rLZ+MAk344xyYVztS9EVENYQLXa37CS8qD+
	 u3U7mUVD6yWnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8120C0219D
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173918495374.24866.17963928463173147962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0432520d8a9557ea1ffa88594161e7318b92190af2267dc7941876a18f1eddf0
Date: Mon, 10 Feb 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739184953
