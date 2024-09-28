Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BB62CA8
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727559354; cv=none; b=KQQjrNnNdm27WQnipAsmgkj1mJXAL0pQmXmZ55NHT5PjPZRNyodbuGT4bur7FxI+9s2oE3NATBRh+OwVOVtmFmMzCBgSfg7TbXh+82UafAENudtgqoDq12wzqBy7igAP99l2UwK+FickAk92hhiCjhqN7s37C3G0ZcP50EF/utg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727559354; c=relaxed/simple;
	bh=BsUJYoWQICldcUmJY4izlpwcLyF0Aksjfaod1dyyCL8=;
	h=To:Subject:From:Message-Id:Date; b=N/SC+cnTun36cgpVbXiKLY8Wgxt3Gzob04qPXJSe2JLXPjdqT3o2AvkFBHOTKIVkFZTP3ppvv7yXkH4WsWC1Wd4I6uqd6qywCfBYGHYYYK1fGTPHRcAdxvkSZd5mQGXu1CRbMa3MtlrwrMNlWRfDFAffWyxVGKEuBqg4/f6ob00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcWKhRZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcWKhRZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAFAC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727559353;
	bh=BsUJYoWQICldcUmJY4izlpwcLyF0Aksjfaod1dyyCL8=;
	h=To:Subject:From:Date:From;
	b=DcWKhRZHO7EGQ6F51Cz91yui0CIppHXC+mtJUsERVsh4DOV++UqGHYOvGS28VWO8Q
	 zOPvUcnGELglEVxyqIq8XzFGzBoaHnpS6/lgVrBPXqudXqmoo+5O/eNvALlxQm0GF9
	 vrFZ0+54/hzsy9te/jzxXNpgISz4i8X+4aROqqnDjq2xeQpEQmKSuNczLv6pXfAB9j
	 OpcgvlIP0LVNrKskk/PEsEtFZYOBRrMlDLtaPUtgb9fNwS/cFFGScIz9+tAeMCX51T
	 yOOXD+JMvIhO9+tpxf3o6GuZYz9TrBi8GXPktZscBEWSjvAAI5gH7gSn+xEcOpGwHJ
	 +FLKDTcGGL6Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5BECF6496
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172755935359.31978.16492923989480180336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69a1372d2618a2ad75751ddc90083d575eec930c40effe57b453e5d040750792
Date: Sat, 28 Sep 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727559353
