Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2659D221F3C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750447794; cv=none; b=QF+BTYODEZpvVMcXe/e2zF+kTS2sk505oL0qXoZ74Ai5IQe+NRJ6E8EkBmjZVyYk0tO/IwidpsnntPLSDLWk2FeDfpW5XMVqUWxLJgOwLaw265S4rjOvgfKJVE2DZrR3U2/5+iD1N4qrTbFaSaiN4+Pt5CnObd+FZNtBxD3oCIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750447794; c=relaxed/simple;
	bh=6Q7rnFLTLrdOq2rGIz2VFEugoW780ZzplTRIH7h8/ss=;
	h=To:Subject:From:Message-Id:Date; b=Xk/45KRPAW7967lVXgm293bMmrZs82zBqoOPtyYFH9gl6GrfHZF1kZh8m3NvUt3xQje95tiaa/KGZh/NTtFDo5gtj6js85SYi2FB12PV06LVWUUCj/OR5SdnsvhDTyJy3Z4AZFVDOREMh3k75NN5TRRiUXRm6cyGnQDN9yD3nfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gl/eJrmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gl/eJrmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB96C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750447793;
	bh=6Q7rnFLTLrdOq2rGIz2VFEugoW780ZzplTRIH7h8/ss=;
	h=To:Subject:From:Date:From;
	b=gl/eJrmXZZuIUIy6yECtbbTza+yi+JXDz4lDYdWdF/bkvvNa1KAFuUgdqVTMVEp1g
	 Ov5cMbP9BbrUNlE2g/1QueN1wFaCp78oV9txirJu+bIDBu3JFOeVH1sRu9JOzn21kj
	 rSwpAEgur2L665auCYPjZZcNQAt4NU5Sv0NceA1m6JUa/8xGOgXlbLua929yaR7Myi
	 8L4ASCNKMJECVtFyQdjIx0z6w0+Bf1inp162TrqboccEXcK2uC3HFr89pxKA1DdJNL
	 Yy3K4yFI+a1KcCx0vcSFFAkgqEvY18Ngf6A+Lv2Aa9LAjnrY3ywae1VVOcMT+19JeS
	 MraOQ6oDm6EJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDDAC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175044779357.9260.6605121636096392916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b5b8d38592f26382821ce6c4f38956170a07c80bec0ecbcda732ef2b434f9f
Date: Fri, 20 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750447793
