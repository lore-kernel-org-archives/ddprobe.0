Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1593A28399
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726911354; cv=none; b=AHPVVZQ2w3+TDppXHuni+ogpQotsaRczgfgwdExGRLY5kRd7Q4QnL9KKbI6orHNb3v7mhXTwPAw37zIqVCoCgUEwzebpkZ/aDQ+SP36SYlf960QUHLIPNXwzBrWeC5BOAlvHwYVIPWFHho1RfcwbigMdVOqWMbcYf9rNH/ym0mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726911354; c=relaxed/simple;
	bh=LIdxjrYSSpTVFLtCUTQZRGQjw+cb9kl4ZGH5SwFbDAw=;
	h=To:Subject:From:Message-Id:Date; b=tNYg2wLOSjaT6bjynwkIN+yXd3iYPg1ii5NQAmtrcypJAho0ZT8kYHtHTVBfusDWEG4yfGbzuTMwhKAdzhFNW0USAWj2LSlZaPhug0Lvmpb+3ZdSgQLKX6Ld3O+bBr6V0rLljV8zjVc021a0PkIdTSL8Duk7sNyGeQl862lYyAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVd2grX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVd2grX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A632BC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726911353;
	bh=LIdxjrYSSpTVFLtCUTQZRGQjw+cb9kl4ZGH5SwFbDAw=;
	h=To:Subject:From:Date:From;
	b=eVd2grX6B4hmFtm4k7vU9hctsvEwalz4s13J3gjN4x4Hm5bd9StINkA3BcNtk5kdl
	 FE4mjk521GLK0NUJBsyucs2G8XV4s4hArBCnOqryfZ+kIKxw5LkW4sCiBs+oLkvaMX
	 8p2eG2RN5wtbR3F3zbw9QlwWt9vLT1TyR901s7JZYMGaFZp9I36CeoGobAQI3M3B9r
	 YL39hoJ6wVPLkdFPmSVYQ91CIxMfo5pijtKeuWUqLrPKLBCrD8FPUOMjgeF8mmSJhV
	 Phvl5TiC9IRrpjKLe2bVPpGGqvyP0qm0W03Pm+8XcPAfppPxTNRSl7k132vbEeVdx2
	 7e2FSt0tHF/7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F12CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172691135359.19603.3871645053999153000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263b9080cd9b5c8de855b0af002c962c79aed070c00d91b649660a6f8f7a3278
Date: Sat, 21 Sep 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726911353
