Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F84C1B530E
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725879354; cv=none; b=h61nPpjBwsDpb2w4mGyBR6HryJwOvEM7GLjTLSvMm+/J3oI9OpNO0YrGIP3Ahr7FQbt9LLTMh2Fdn1tsgmAvSWIbOXqZSChqC67EbaUG69JaFj4UKvdVi8So2Pc7PPFV7eH75dsfevg3TczAGs9bU6nnCUIqvtUwB2UOn8HwSMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725879354; c=relaxed/simple;
	bh=9s8bNL7NSozjYklHdxDGSZeH9WFxszNS8LQUxCwPoXA=;
	h=To:Subject:From:Message-Id:Date; b=pEFtIan3PwvvJQY5M101rEKZhM5QGJYe+kaA+vf9yXg048Y4kDVJR/r49Ks+9clrViJEF5e0kY0nTu50Rwl/BsczM5yLM0MJVVbl4Xcz0dQN7Ketppy9iJwaoGsEYS3xtSjXrtN7sLxdyag3i6W9bCtrmHABureHgI4mwYKZjZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSJccvbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSJccvbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39E9C4CEC8
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725879353;
	bh=9s8bNL7NSozjYklHdxDGSZeH9WFxszNS8LQUxCwPoXA=;
	h=To:Subject:From:Date:From;
	b=eSJccvbUWaCHP4d4c2lg5OULfG5G0tjUd7LJc3c91i3aT3td/qvyibmkUyTV8W/0L
	 CIztl4b+cRibrXTII1k8mRHJO2D83/WjaIdr+WIubfj1PxO9xoIrqguRFnOEk0X9o6
	 WSklXYOQVvpW+xsLB9QmITBsE24C22jwAEy2ePCVEi5PGsKFQED3bJD2XJOWBFAR2I
	 GbV59FrE2bv48cMtZ8S14pZck9LyZT9ExVz6JljGsCFaeERGqpiru02+PpigmKV7Sg
	 7v4UuOr9dIggxwTXFeRe2UNZ2sK50telzSbHdPB81r6OqR7kE8Ytdyk6mHUjmnHS3n
	 CngQgxWQyOYKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936FEECE579
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172587935359.4896.1944542840339871219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82e6a720b5d422cd2d60d792df4bf3993c8851c06adb7b9db068519dfaa2d77
Date: Mon, 09 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725879353
