Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D213822B5
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790553034; cv=none; b=sYGRlVmV35ehllKgiGDTjIWbgxS1CqjzSfrp3vx4rJEM+yg3L9Bfz/sN6urUvZkHf2kKj1z3pRl2keMlf1U07Jeo9S1iL4eHBizt1543PgzeLBX7/g56h5ydAMGxAq3Q4lhbd8SnDjfzS86g4k3gnV26Up4/+2dlMnIcGHx8sNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790553034; c=relaxed/simple;
	bh=T3FoMD2O0bpztU2n8iDHe2DIeCpt/mK35Jjy6Ka0QA8=;
	h=To:Subject:From:Message-Id:Date; b=lKJ1cm+A1NJsLDRDDlEt1F+Fm8MHuyQpuu+V3LQbG3QmScNV3L874VnIHyXd8IGbp+Nyq3teErQwAovJuDXSe5r0janU+DTX2h1el07FumyOYBt78g60fF/dH5vZMxWvO5VVEFFbAjbBNaoE2KrO0ss79UQhZdVbiP0SnWbVgDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVWExlXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVWExlXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9678C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790553033;
	bh=T3FoMD2O0bpztU2n8iDHe2DIeCpt/mK35Jjy6Ka0QA8=;
	h=To:Subject:From:Date:From;
	b=SVWExlXRO9sEI+taFXY5H/spBYNafWd3AY4B4zkOl1D8AU4Kqxu8/ANPIvXMMA4qu
	 MeZWX1x/lwOk3+qbVMMdv4926co1zOOO1kQ81zhe7dQxNYhAE/XY2L/I9RjROL5V29
	 E3W76ztx7myOXb6KiGgp/OF1kiI/rWpR+tc5zeUBuVpnK0Ty2koPf13gi7OBuTANgK
	 C9JASjQ6HSzPg3HsgUhUrcyCdopd2zwrmd+XxMOZSZKwq2KuVBKet1uOOp18tXf/kW
	 vn9VccGGCOrfkwVeZ3Xx4lp0ObdgV6o50wHsAg1fDxjVPvllORdNMZNDzQTKxWNUML
	 jRy25XaFIyCDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B648AC9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179055303373.16892.11486018465656758726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846275ef176e633330bb03f94cc3a6384fb10f2692827b08d5f50ca8c2081fb9
Date: Sun, 27 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790553033
