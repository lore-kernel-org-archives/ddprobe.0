Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE55137C35
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734797754; cv=none; b=V2F+Fv1V+whLedcPdcMclA+ldbHkS03WiQzD29yUMUFwTYVRmqbIwe2ywS+nNxIMpvw9/9W03UHzQzG+VYLqUdAYSPS8BsT+eKIe9xfI1wYAJGouwZkXf1cBMF/VRhkCoDfWvpof76A6HdKNZVT4eN282mSrxNjSxqDIATSb/7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734797754; c=relaxed/simple;
	bh=BiyjThiknKNmNvIyOz7qEd2y4g7a4502ut+tg7OZ1gU=;
	h=To:Subject:From:Message-Id:Date; b=BhmdP5Rapk158go7Rg1c+1IbWAsn54aZQbdx495vom6yopBF29g5kDvZz2nOO99IBzDWd/6oerTztQoG8/vOV26SUveogEQ0h7EL9UdWZl9xbFbHOjUgr/hMHB972x1oXA1VpP1+kdRuQc+97MivOOgH76XFjjyZNhfCYsa9PGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHeYEfEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHeYEfEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0613C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734797753;
	bh=BiyjThiknKNmNvIyOz7qEd2y4g7a4502ut+tg7OZ1gU=;
	h=To:Subject:From:Date:From;
	b=kHeYEfEh+hFwlfrALUSxWab80m/LXIoh/DvVUbXTrBEfq/2rS9MvsBbcdwr6Xc1pt
	 xYQI75JfGkLUdOiEHGcsRVk/RugrFHt3c+wBr9AiCFs4obJxmEqBOEn/83FVcvNMfp
	 lDz8wsULX79rEcifjmwTu9wc9l0lOoiej6KWVw/4+FKMZYSRvjyGqoNBZvgWqRaN0Q
	 ymzyUY18TVLhjBEj85g18j3/ePlcRka0aDHNYIz+kC9QmZhkLCU8E4aHm1DY3g694H
	 VWpWoHg2rnwG01fYOpLARvgI2N0VCE7aY08cCCisqUvU4OyCnSF+DlwcwRs0N31UI/
	 M7OB+Tl8GOGog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99298E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173479775361.29884.8871310432197349510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00131f695b9eca99d2a65c144ece70a28f146ae511dfda2644f8f8f59f117888
Date: Sat, 21 Dec 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734797753
