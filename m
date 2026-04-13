Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2364A19D08F
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776121654; cv=none; b=MtT/pSbXpoZxtNt1Ck7AsswBiczpdN0xwmLUjUwJ6l/i//7I0dsR+/UHo+vczWBBr2ytIOZ4nu84Dy1ZR7JMH7IWgUDo2spm1n26+MPiLjS4LLJDoEos2gZcZWRVYEeSFjKDIiaPb5kdPc8KRrsxv1Rf+tC6V5w2WMOZCdzCuqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776121654; c=relaxed/simple;
	bh=SuaqkaLkATeBLXllYCvlgSQy8WvDfaZxi2FSbVEQATQ=;
	h=To:Subject:From:Message-Id:Date; b=QE9+a5ZoCp/lQlSVQaqjRmOYTCW4UK5zhQlC/CNAXR/SdfbfpRcP/7Hrg8DNGX82SJtxm+UodtAKa+rK4y0sL+JL1xyQtsSKy53NDmh65mqK30jcmlW89gvFt6HWBSMHgrnQ6Yl4v66p+vzhezy+IP09BJZWTbPPaITVwQEDBwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhflzIP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhflzIP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17C6C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776121653;
	bh=SuaqkaLkATeBLXllYCvlgSQy8WvDfaZxi2FSbVEQATQ=;
	h=To:Subject:From:Date:From;
	b=BhflzIP1DPqKvOnUu+q+Ndp96pGjaaP9mhZdmOfMvHBiH2QAc4WMQE1HIB7vfG6JI
	 O0plNfwxo4PCA4Vr0Z7Ob+5Tz6/4h+GuJHqRmZeq7/kRjTApg/4/b9y6FFU7GvUHN/
	 wKQirCa//FeXY45u31LMPPTVXVHoWd/iALMF1/irmka2Rns28+PCLBMmxWHUQxMNnK
	 8Ii2lO2N3ZbZloG/yu/2cRMbh0G93lFiWm6ke1Ks/h0Cex6T3jtpaGQG5gtMqjHbaf
	 +t6h83V50fvwoNSP5t4bKhyRFmqfEAvHwFMszWxXU0RS+HJRb8tKpLoGGHlZVDo2Sk
	 wYkp/KFIYcJmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B006CF531DE
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177612165368.29710.7670020106557145644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af3f324d2984de23598b8bcff4ce6c3de788b9be4c1ae555b39ae5970358843
Date: Mon, 13 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776121653
