Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4095C22069A
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755739794; cv=none; b=ObMJoa9+su0lVltHMHQrvi7MxU5Jtv454NuJ0wc/4XEm2+fq5TOE5HT4C2VbeZKKU2IMFBOie5PaggrNc++gGnKjNvM5lXBQu/T4TAZVRb0k0uWSVg6sddS58+isEejr1k+UujFTYDtnsH4zrUv29u5rhPEMPKOmo1DXFJocUV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755739794; c=relaxed/simple;
	bh=dRg7/QPoS3MqZz6wfBe8XxJJ9oSW4Iokl/ww7OmLHSQ=;
	h=To:Subject:From:Message-Id:Date; b=clqF1o3m3OvYA+iLOQU+DUdgptZbCxSe459MSnJfr1nTcn4znos3s3F6lqdGtDQz0rRkNDDCAldd2Jxr2PAli2n5WABb7PgPDgtqJAf+6RTlfhbe6jmdeFzNe/kj+WiyMMv1r8Wt891lFq8V2lkFZZfsLnkwF3PiImUuYtWrSq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uM2gkVGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uM2gkVGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE5AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755739793;
	bh=dRg7/QPoS3MqZz6wfBe8XxJJ9oSW4Iokl/ww7OmLHSQ=;
	h=To:Subject:From:Date:From;
	b=uM2gkVGafUlNOjAZ5nsiVPNHdFAjb6I954TfdWm0ePf+D6s+2FXC7Cer+aGEYofS+
	 sVw0WqHbQ2Ju9vPrdtaX+nfizELfIFGVbMwexjyS80mR6dWQNG9tc3oanOqFFebe9g
	 3R4sThXzlZqGfWk9NqZnQt7QYfA+HFnFzpPDnU9qGgT6eeYVbyXH9FqAQ4CjY28QHx
	 tmpOzT3LqUt6f0yBXlQ9BolxBGcacAeWnlafL/dxaNFzmWn7rTn0M5pW6y1sBGxlKc
	 ga070VqM3ajU+iRi24c3RrShO0ikQ/mburgq84C+oGwyVh6SbJQSr2o1LWD/YOLXV0
	 +WFQofJjLDniA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3C6CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573979357.31294.11722735642961612588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7d6b895b709d6593d41be76589eb6fb22ce8cbac0596b91f5152eb952232e8
Date: Thu, 21 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755739793
