Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC922E63C
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774830294; cv=none; b=nIEohwiBIbLgtK2a/8tKnAUQqyTHJRAbsweLrWhd87EwADcmAe+JCCzpGdylDNtErsXhaIMgMsD+HSmCrF2/0unKnxrRgkf6UjF6k/PT/AwYuixf/xWwrtf8v8fQkfJcu7lrP6m0W+nbzEdvHq1AcEHI9+rZBa0FA4zQm/1MEPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774830294; c=relaxed/simple;
	bh=MNTIk8IElqzX5sopjiDm/WHT6tyfQpT2UEIy3DZ62is=;
	h=To:Subject:From:Message-Id:Date; b=EVrKDgJeoJkMebQEu4KWyBFnlckS/NMNly9VnQySdpiPvqvsjN1eoWzFALz7LoldQYro8MCrgFPPeUFfh6xYm7ylqn4fWPg2U8YSvYAGvbRu+ltSmvRu6+M8D313StlM7+7dxKttzP2V47EQHwFpHMCzT/vFqpIsnowtWx0z4us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDW6ilPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDW6ilPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A877BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774830293;
	bh=MNTIk8IElqzX5sopjiDm/WHT6tyfQpT2UEIy3DZ62is=;
	h=To:Subject:From:Date:From;
	b=kDW6ilPneJAVaVsPtyUT6YkPrf9OuG/2G63WBz50jP9CPufEcrLQvR89OkzenpxSj
	 kObrak1uNlXg1z7RKaYLz4xDtt55MIFBKzl5xyIyhSI1pNH78OCIixOXj6ED3RV3nl
	 twoqW1kZ4AnsOvlrcJdew16Azu19TcMCQospEmt0O2IBY2g3N68sHdJOtnVD7LVvdC
	 cidYp2UmW+MCUmV4oAY4zQUfYPorBU2YWNrLK6fk1D83rce2f+N7chc2NIWGo4sPTW
	 pCxc7KgqTN9AAVfe381LD3oNrfdZmF0yrGV7d8URLCnSvxs+KV7PuIYmt3LJa0+/1R
	 N+tynOsFLeQjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957AFFF4923
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483029359.29884.276252719414715238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe461d29f09939dc26258b6fe4a87d66b106b22f3174705c73824ac1bd565dc
Date: Mon, 30 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774830293
