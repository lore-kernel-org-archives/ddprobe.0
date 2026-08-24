Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CB02C21F0
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787580034; cv=none; b=B4pmeHblf+WXTW/JKsXzqwCcV6TGxBdVMXCGT0W8lqPZQUZEo/i73xAa7pIAZVVTfffsP3BznNjfBNwbH+HrE0/N7Qi2c00OytIp4BCKBRjl3sgw/DBASsgkMKU6i+O5uabcHfgs7gbj5SQDONsZDAjRTHgXQIrj9c5tBoiO+hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787580034; c=relaxed/simple;
	bh=xEaS7bgyoFqS+10FI36o4RLfU/Qr1MUDCbAQkAkt9B0=;
	h=To:Subject:From:Message-Id:Date; b=nGd2RZBGCGQ/O7dAqX6Xq0MVmrQn4HGe5u6kTK3G7gF622J5ARhGStcj1JtmaMOq1pyBxdG8p+t42QbrEIQlhaPikXM0oY5ZmKa2lxdXMFw41UEiZzAQN1zS8yar6NsnimfNxPD3K41P8rbX24zln9Uos85qk1dAFHrmOEk07to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndwQLlvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndwQLlvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC6DC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787580033;
	bh=xEaS7bgyoFqS+10FI36o4RLfU/Qr1MUDCbAQkAkt9B0=;
	h=To:Subject:From:Date:From;
	b=ndwQLlvIuGklHg397JOyfe0NlmVQ4pKN4FXyRUmcKUKv/r2I8/tH+rHzZp2meVKSu
	 RbzzRM2FSzdcG45VRTHkq/c8ZBp6XZKreWSBXjWTLFsfwEB6eIxyL9mI56RFOfhMi2
	 buboNCATVVbJ2QJO9oECqKiq+sEspcoDEvBKBEIHDMRHz5T5qHcHIo6/TMURhkZ07e
	 17i1gnSi/AXn3jdcQw8cPuNM8IdaxgS7oOyShFfBmzi0SyI7uxkhv55dgiDw+EWQvt
	 7fe8m8kQJZPcGI0qEnopG8tHVN9aVgyUoHRSpBv9HDBGFlIrtcYFN9qNSX+MZpOZ4W
	 0NAmupC2wN9LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD19C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758003369.6093.16671962241694348846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcdf95532636fa2952365edcae6afaa8697c76661e9fdfeec0e1e587f556c87c
Date: Mon, 24 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787580033
