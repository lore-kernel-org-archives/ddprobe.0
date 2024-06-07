Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6509719A2BE
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717777643; cv=none; b=Q5YPcEiqIZucH0UzShrWMGyafI/+v8lYAgzkea0O2g91Kzt/GapA/FC9nSX3R5K0h94Ecmp7q9hNYEshi2yDna+T9adZ30mC5783mvx69stt4robOscd5QSWOP0s02Vj4llEd8fR4o71143xlYygdnXtPnRSXx6x5ys6YIC4teI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717777643; c=relaxed/simple;
	bh=PXLv9oZmrJzuIHMyY2qZOFm2v4WY7L4y1Ku3u53x5KI=;
	h=To:Subject:From:Message-Id:Date; b=teucKxlG6B/mMXXcC7BKxxpMF1SVxyzYsqy7bk25pQzoUrZyiwkiuLd/WeB7lo55o0PEUypn+oOSfFp0dIr3IovV7i3mZdnlvbtXWVbM+RmhASAvy2Pn7s0WYXMfgKbODC9IL0stBRK0IQto/aA12OsB5oo0cpcuvgeBBFEjOzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqOPBCe+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqOPBCe+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCFCC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717777642;
	bh=PXLv9oZmrJzuIHMyY2qZOFm2v4WY7L4y1Ku3u53x5KI=;
	h=To:Subject:From:Date:From;
	b=nqOPBCe+aM7K+Eo0AVi5P5Y/Ql7eC+GXJMggVT7Xfjw/VTma9UoQdYv1t9zoVzuKh
	 InHGttO0BoiM+Z8sahz/8CTUiZDHYPBidXLeptyt2drBaqSsNZH7I7Wq18nBBeqb+c
	 jBeJSwd+a8R334z383eg7K1WvwZKM0qQyRWHH5TiHZPObBdFvEE8OCZXnds8iJjtXu
	 sY/n8/CHf1xRa+R1eN+b/qW7VwkNZ2JXvBYF3cmFsBICHJknmMliLIEUJVKToyVRE7
	 10Kavt6Va5LiexrbVVZ9xbGJUW1yk6GKzufSUTdMvZFpBqGosLsz6AGkSOImxGkslm
	 mMgE7peNobHfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6705C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171777764278.10163.13610792813216218531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc64470ca4464492abcdc817577f4e7ed3458a754b258487c27f64605c128a41
Date: Fri, 07 Jun 2024 16:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717777642
