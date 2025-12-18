Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7C521B196
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766049834; cv=none; b=cI/SU3s0+SlqtHp4fVnZguKH+W4DkU+qcH/AvzvZmqQw0E+fxAvAZNMoJ7sAhZRstk8IPVpGnuPieOxQMZ4imML3xeL7QqPSTCXpSmbxbtp4P5bMKAe70LgzIyZEP0+MDLInpLBu9DxAw96CsWn/ckYfe7CwLV5uyr/5wMHadOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766049834; c=relaxed/simple;
	bh=jLpkowigl1/IanL9Z4Crs6MDyzbOWLDQqQVSQP4F8+U=;
	h=To:Subject:From:Message-Id:Date; b=C69jMHfnF5y8asVVE/dHPWrK+R86T1UZtuRixlSastW47/WcdrHkXw22DouhERYOT+pBEL6X5TuFskiipz8jRSllFlU5qEWrlwlAwUqJmzP2rRAJwtTht40Y2uw7t1M+XjFAnbiP5OrejXlrz97sSP6bS5JqKu9ulg+kv2kPadE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzvB/dHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzvB/dHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A388CC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766049833;
	bh=jLpkowigl1/IanL9Z4Crs6MDyzbOWLDQqQVSQP4F8+U=;
	h=To:Subject:From:Date:From;
	b=kzvB/dHZvjg/Y+YPPr4FV1ZRhjYBhDHBfWVg8DYQUSxIbUYN0669aGdWLyUxM6eW5
	 ISlmQlc0cEo0fd/2fEfTSuMVr2R0yocLGeAEbb3p3VPvtC7yiFhOabHV2NwdnszYQY
	 t3jXovfa9bFDIAppEgXonhOldAHj/Mn1Z1m/Z//PAKWR9z/2u3AoX/lfzDeaMn3eca
	 NOiZmszzDz6TACkqwc2HsV2V3A9EFWfQ6tx7P8zKTCsMXeokAeyfo7LaAg5dxhQaNl
	 YScVfuGq6ArxbfcJSFBKUWdy6srw/O2rc+bjijjibE/b1xRK27arYDP1Y/BNeu3t0I
	 5FkL/MoHusXjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934DED68BF6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604983359.25307.2437194137307056435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c59692bf86e0b1d2525d016eda3139841e04992cbb6a5f87497f5610963389a
Date: Thu, 18 Dec 2025 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766049833
