Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95A614B977
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755953993; cv=none; b=DL8izDGOWwj7s2mbm/5meMwIOVtib9kaZktGyPC6NR0N5mGVIUoTEKAVcD7h4NoS4wdGvhwsqiLBS2jBpytCM4QTjeL3rbRPWvtrZM9t6ukIr9/v0OgXUnbcejN+1uWnmnMnZYRgJa6Yd8W31FABSNZOplEpLBYkLsFAwSxbDvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755953993; c=relaxed/simple;
	bh=rhQi3uqDWlEmqmRqyEPkcmKSPhoejijudNKj4XRyP5c=;
	h=To:Subject:From:Message-Id:Date; b=CbISQUwrM0x9KIrg7YHKkmUFm3B2Iic6DlL9akNpDH5JF+ZtG68ucDcj+GRFOIrbFYmx2pYvbg2SHh607JRXjucs7lKmk/78TvZv8kjZ2nE6e+kcCmmXe0nPqqkrPFOfLnMSN4rdqan9mcyzsfekgA27At5/P3/E8bKB7VhcUtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=toGEWW34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="toGEWW34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B073EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755953993;
	bh=rhQi3uqDWlEmqmRqyEPkcmKSPhoejijudNKj4XRyP5c=;
	h=To:Subject:From:Date:From;
	b=toGEWW34Df6JX6sdviK+J6NmNZNc383P9NiVCV/evrl4/qo693hQ66MOlRBNrjkLG
	 eZt6OAzBp+UjGH0qhfjuCaMDPFPvgTPeuidxAZigaw++RdOX0ULpMfI/ExKIsZKDVn
	 Ed/0Q8rFAawsoF+HJhwljzexojvRCVdKAwtRApINTkd0VZ07k79e26qVqAAGfQ7B94
	 XpqV9WEo+P1zL/cCBNqAkGk6NQHTjzv0fjI2kYEWx+TD/Ww/H5a5OCw+7mDDFeHZwB
	 EkywzzY94MDvrFjWy+5ihthAqrO/D9PLaaFfZaUNJzuiHSvH+bJiZ0MakZZU8K3MER
	 RrkjOOnTfigRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1B4CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595399361.13165.2866849683554474710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece2a88b9cc7e85fe2011b0c8af705c3b4dd64d6c5177cf533c5dfab4e02e10e
Date: Sat, 23 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755953993
