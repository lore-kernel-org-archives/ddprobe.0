Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F7C425887
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790282434; cv=none; b=s3NVRhPhYpGKRIdrEe40GtA/ncaGqRB+fsEvqLNdRNqm+gynmxELpL4DVoZ4V53tK5WwimuwVuYUiN3IHsyO4X6vvhw7sxWRiY4vBuvGiLc2fIOyeCkq882mVlY3O1wWQN8BnxGWLEWszBV3yBiL80XgwSj90fCbJuElUhHwoBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790282434; c=relaxed/simple;
	bh=6KPiw+QvvOFIpfri8FMrUddUcPinaBwgWkb1ObTkI/k=;
	h=To:Subject:From:Message-Id:Date; b=NUvDGGqRlKEiHzV15RGP3ivHrZtTMT33czOpZygoj6Y5CKKtsBjDFYwnM1kyB+d9o7kre7wXy5BVirMEhqqGwZMkX02UHnfNIk/L52WAjNDpwnk4atlspaZGYImOegbAHkgUUITD9MpCOGz+iwyi3sPIBjTkYLWdFTy7TMrq/kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=As86BwjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="As86BwjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8D0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790282433;
	bh=6KPiw+QvvOFIpfri8FMrUddUcPinaBwgWkb1ObTkI/k=;
	h=To:Subject:From:Date:From;
	b=As86BwjHo48VFfMR+udILoneVxb6k0vQA/JKgK1kkqlXpwHVp4NZuCerwTV1B6o6H
	 F+tqjInPPraL5AB/Tme8RfScXnvosdmBoEeHqP9Dv280vNYRBA1onVFgowAx6fTYzk
	 YSsZHcIJizx7WZNPdtdHc5jfyl4/sECm18MQ4knFVmRXDkCLHYCbzLrNauJ71ahtln
	 +E3Hme8MWydARE8kpqkLKdsvDzHsseMoBzzhH7CVN1853egDjgaLxCmIOW1RlYRLrG
	 ORXdScPCXcw7+zgvsJSjPtkC5LKnQVXPBNtI/I6RgGEWEaSGsUUmPC/Z5EPeU/sj2f
	 QVAMgPnN4qtAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7455C98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028243373.23292.7655434765144720745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e82bac1f6cfccfa5b0d0dda7688208f45d4fa82f2367b13e734e74fc5490891
Date: Thu, 24 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790282433
