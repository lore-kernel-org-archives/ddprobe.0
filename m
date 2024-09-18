Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50423C3C
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726679753; cv=none; b=CP+SVuFFp7llLgnR5CMli7YIsTAJQdkYq716/4XD0cvTrNSv2O06q90CRzWl1BK7+cKAYlhvzJ1URob2OuL7q0PP/96d65Lw0CA+EIOWUQTqUXHg2Anm+vL3odPVVQm/cuccFqfpNoT/WuYIZ5lmMwMDB18Yf+7WzR7GGTr4YAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726679753; c=relaxed/simple;
	bh=kb5dxHtPZlSSTfxbgNclw7qv7VsjPhj/aP27NVUKdFc=;
	h=To:Subject:From:Message-Id:Date; b=brMB3FK/qgyWExHescOfan5lizPlcqowgk1qfDnpi7AaRGjmO2hMsISHhWh2dywWJ+Ug0C/Y92MutJAxVunFYPNRtQGQcq7VZ6KKd0xyAAlnkuK5iA2c/LiQTXigbwemuhKi2ueFGImXRaGJTAZkPuGxJ/nYltjjji8DUtdNRhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsdPJ4S3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsdPJ4S3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21B7C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726679753;
	bh=kb5dxHtPZlSSTfxbgNclw7qv7VsjPhj/aP27NVUKdFc=;
	h=To:Subject:From:Date:From;
	b=dsdPJ4S3ixzKNet8NH/NllW1RzPn2hfXIdXFlH0Rn/WLHCHAqF4AyJjoIxzYoyEdU
	 eJQeaDXpC2eEzQCX8J5G7TK0DOIg2q1mnb4DRoXXDpf2CF4gJduX4wzuFz30TEz4gc
	 h5gI0EFkFsLxk5XXmiFZfWzMOCT4WGS6LXV/i6Hezz10KHRCMXg2DxEdzTJbm5g3hJ
	 tWe1AhzdhKANv0xM3Od2uBzotLDyZlKNH8y5C8Qbz+rixyNMs5z6bx+DCuFGCGhs2U
	 hzbPoh+Fm/cc/0djOiLrjtr3vw+Rkk47RMT2ay8XJIUmbWnwPfqBZaTGtzJ2UqxGfi
	 xssaiHiDZWSjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951E5CDD54F
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172667975360.14150.4958783611599197880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd9ebbb43a6f8622f453ef267cbfc9775b0adebb1f5e8bcb64ea56c96378fc5
Date: Wed, 18 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726679753
