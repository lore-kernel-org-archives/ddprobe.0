Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C106382
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748135394; cv=none; b=lZQXY5cRAzT6iDl5k3Ut+WdOs/3Tv1oC+hCksSr/ZugdVbmIgWeLT75IHFEic2z8S4e9TBgPZK/l0IX/qvTM+rBUAaLR3K/lTzwhK7yBQXtYLbvZygeBT7dEYe8lkO4SUb9mzviP8M8Gy/Uzx4qThwItQ/WwutRqRWKODv4vXPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748135394; c=relaxed/simple;
	bh=XGLdw3EFga7dqwgPXv0l/pUwSO4veMUQLZR91FhR7cM=;
	h=To:Subject:From:Message-Id:Date; b=DtSxu3aStZhd5xXyGEF2KmFBTLvD30RZz+TWTsr/pSMHD4lgtcqdAu3/CTX1DtpgoTl5HCt3PAwCoyLUHwe7czfW17VCzcmd8yS2uRKsSmvVEOkFEZxDZbYx+zbs9pwMjRNKiUrx9WrsNV75eUQ6ogWJpdUGBsrRFOcc7wukEyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b52/jtDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b52/jtDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A820EC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748135393;
	bh=XGLdw3EFga7dqwgPXv0l/pUwSO4veMUQLZR91FhR7cM=;
	h=To:Subject:From:Date:From;
	b=b52/jtDL9bxbICRnHVS7OXKeeVwpUuvwdcKxh4Gwm3SLm2oCdUJ+hNlO0cuQ/fLIu
	 xyUMSd6XY5rhkuZJQZ3i81TIKPwR79sYeHBJTVPNgP5UteitrNUmmE9Wdj8Kt4s75v
	 HZ0WfWD5MwaO/VXVIWRB+aWsyq//gzjKFsGr960WDcyVdpOG2qZ0C7p1LFeAEXYT7m
	 b8Be4AUGwJdZCAk0IHBg5BDyg1tI9tewT2thKbygxdFSQxJv2IX5L0tYS6vW7zT8mg
	 apoxuvfDeaENj+ZnXn85lufXbqsPQz2AO/CycgWdbsRxFjKInAPOLWemqbXMpN2O4o
	 4uKOGhO+xzoxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9284BC54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174813539357.614.5129400088507537957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849b8f70a563539f62b0c70ff726fd68818c63d6526d3224e15aba1083ea6c45
Date: Sun, 25 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748135393
