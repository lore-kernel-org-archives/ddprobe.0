Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E7A420896
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783684116; cv=none; b=sdaBvXmcdFKS9sRBADoKYozWoQISvmtpz834qahbEoT2R8NV4BOGqg2u3MEOvtpcTMKfpqeJzLo9nujCiHVTZiH5/68w0e/JzG/E/G9ZgL+W06HG8XsnmAkoGHsVIIWltomeOutqkk/Pc+HIR69KMWsg3G2Bz08fuCg2O5EIj+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783684116; c=relaxed/simple;
	bh=IcShdW5z9FiKp32d2Nm1SB40a57xu4Vd7s66WP7lQU4=;
	h=To:Subject:From:Message-Id:Date; b=hDyrF10/heN5jWjKCtN1i1ot6cAiRoQGiPZ+6TUatIoN8bS7bVHUqCcbttrj29D6M0lAmRacz9yo75LXYIuFC6ARInBsjdBVbR77DrUymZuO3aTYVowiPoQjVij81WSEoLdSSdPvs7ZV0x8iLQxyhWDUp4V1GZRRlcsmdofy6Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3WfPmIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3WfPmIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F12C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783684113;
	bh=IcShdW5z9FiKp32d2Nm1SB40a57xu4Vd7s66WP7lQU4=;
	h=To:Subject:From:Date:From;
	b=c3WfPmIjRYeEIwtxenlorQ6qel5MiD9qW/HnX+qC2nGZ9cHMvoj53z2NUnNIHpoCd
	 8GZRzcUdIRqwXn4F3Ymch3JUQJSliiEJmMybSefNLkeqIZID4ItZAWoKnmVhejjSkp
	 VYs/hUXxbeLYrEQpZHrlaW5GKdx5HRmEUe9UovAH1sXSg0HMiICx0Mg1q37jXmXFzD
	 leybKrF2Y3fjF0d56h+8kyk1+XAJZVWAsBwcJcWBA0a+XlDbRcCOZeNGvBPIfp0EdS
	 +LIGnzuzMeqoVJ/AEyR/HslzX0BevL9cyWtVElBeLuVtYoA7Mi1pC3IdkuSUD7tF+U
	 pf+jEUcN5vNBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9023C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178368411368.32490.6495285666303579688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eab7b3d96950125f42b23e453f92bde11b85960f6af3664d498f56f64334c8b
Date: Fri, 10 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783684113
