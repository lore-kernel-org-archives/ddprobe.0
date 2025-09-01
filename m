Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409EB2CCDB
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756765794; cv=none; b=WipWaWw7kHOYePPXjYTkfXTP1lLupqFTvTSdA07JjY8FXWEcWn6L8Wyqn/eLVenSOL7YYmKssmpsxVWTvaliZ4D3i56ZTq4YX3hk8hzCTBDQ6NlSLlqGHlhsHZBnpFPF0V8D2TgZqgOEkeOhxsatBBVInd6sBnXhR+MroA3ZGt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756765794; c=relaxed/simple;
	bh=OD491c09xY6rUKJQy0/A/HZ/Kq03TWsn0IYEcTCAhUM=;
	h=To:Subject:From:Message-Id:Date; b=RsFuptSva4RcVATDtEzVkjQDBXxHr8BCX8UcPYBLvYKDhwHdenY+VyaVvW7HX71oCjVhhXqfoB0onpczzOV3tzETB9ohjnlhagC4dK2MRy1toaTgASKGsu7xrVbIpicxU17dc12wdeNLGxjoLh3rtO0xOPbbQiJHzgN2GyFwHOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIbq+xpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIbq+xpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EC8C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756765793;
	bh=OD491c09xY6rUKJQy0/A/HZ/Kq03TWsn0IYEcTCAhUM=;
	h=To:Subject:From:Date:From;
	b=FIbq+xpMTYV4QVLcmb5dLg/uXraatIBmwbUxzOpzWGN/uyS+oRNIrMc3pij56uc7H
	 qQyMufrqEi0b+f1RUt1QPJnAbskfIhIO+ovEeA/JpwsaNR72Wo6B9ErcYs88PZ2e3b
	 9N0VOqZdZHcuoH9CMN1/cnq5Nvc1d1L2CCwjmWhiLaGw/NijwelH8SxFDQ/xcSKhA+
	 i4i1wNhMWZQ5hjNPXHm1A/+93n4O6XzGwJJ2mXo5lOdSG/CqeJCJp7UQp2aXyhZo6J
	 Vr1EaC296p9AE6p4jWBbOuU5ogq6ETRj3TqfMKasa8u6i5m72nL4IJ+kIBjX/baaUT
	 7Gar+U4EayHpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C444CA1002
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676579363.6909.17073968999215618771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2622bb55ffac1025857c2f6d4d7a0f9245c2e88c4e45f7918f9af353e5e61223
Date: Mon, 01 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756765793
