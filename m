Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22AE23E320
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763774513; cv=none; b=RP5Ff2kfCFC1JkfL2AIXGhLNoiIMcAqESFh2SkynE4WtXg079djISoEqhbfpbfVJpn3HW6KWLNTQG/iINuMl+pOzb54Dt0Fh7sr8BPxtOyLAfLtYV0worTDlBHoNyT5SntNcU6tJWK9YApLHDgi5sXcCJxwcm2XYboXJnGAFyUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763774513; c=relaxed/simple;
	bh=0Rrt4G91aNKDQzT4UWe+Trw+DAcuiyxSwHUFZioF4xs=;
	h=To:Subject:From:Message-Id:Date; b=DOxrg80g8TiZ8kFNsN9QpvtSMOI9FdwGBHwiEhsJPqxVc3NwSr17EtdsdCcRnSJe9PPRHpyPLhGeK4VJORVP4YgFUyLPr8vniIP8aua1yx2hexZUz5m+QUROL/grhh4s9hK/fSEedokoYYVEZLHpjQTsPkkgiRb2T5NeHoDEJVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUxS/nkc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUxS/nkc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C9EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763774513;
	bh=0Rrt4G91aNKDQzT4UWe+Trw+DAcuiyxSwHUFZioF4xs=;
	h=To:Subject:From:Date:From;
	b=VUxS/nkcsUc5mDdooZFwQ9vETUrGxU24RMskmcEjf/AJw9HEfiDorDz6sSiF4CGAc
	 15NPh0X8TZ+wVnq4Sdtf0k2ORS/B4U6dC1s6ddKBzxd4cd2syyTUo1BfHmXFuA6U8+
	 Bt7MuknYY99jWtgCGhkeyn90Bp+aWl4QyRMDbVTW7w2jVUDiiqUInUELyJNqw9DF0e
	 3GcGJJQJQIEXDam/jS2VKmRQnXYZY3u7K46mDYrS30UV1Ec0P9KtV5FQEnoyLsniEp
	 iQjgKZk0chbxn3moBbwvS5d3bldotjb0kOC2VgWOI5KqzXFdx9FbRkzsjYkbPkvmQ3
	 LjauR8/wWELlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92054CFC516
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377451358.24383.3553769492732077186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f3809afc60073cc844a41b33e7ec3a1ce1d5759558a73c9a1997eaea21482f
Date: Sat, 22 Nov 2025 01:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763774513
