Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6281E0DE0
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731954354; cv=none; b=mjuAP6vk7Yp48F9AnThdmu364vUEKTODX2UJkkMzl254dkTT9OLlZfFko9hWhzkDDe6ymu8oPNAEIp0J61kyo2/OhqIWdZUgtiinhGHuIWve7CfL9tCzUToEbMhu+4Dhv7Vc5E7OemQsjsXtke/PeB/6beU284puT5sIOYjYKh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731954354; c=relaxed/simple;
	bh=suJdnZgoaoWtySz77vvaXtIsMMJ9abPkLN0kly9svRo=;
	h=To:Subject:From:Message-Id:Date; b=edNnFBLRzgohazNcfn5gjj4ToiSiEKOz3MwLtUiqlv4mFPF1tkDmPqp2ohEmmYmg0xeiMNvZKeVWFzuYvXNfEXACbvviwRfwpvSoO73NyOnNzZFegT8kAH5QMLONYBSvLrKKuJs0QZqSnB7zHjao4oE9isUM+tmwN79eT+HZIbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrjMIBP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrjMIBP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA67BC4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731954353;
	bh=suJdnZgoaoWtySz77vvaXtIsMMJ9abPkLN0kly9svRo=;
	h=To:Subject:From:Date:From;
	b=HrjMIBP4j/XgHV6bexysJNLFaFiy7ADw4d95xRd2KC1ZAbkXKsIe9cwblrMDrqfqm
	 A4JeCDksFo8XDPS71gEwoMUHfUOni8qnDGL9EMmyeH7jt1o5/KLeGMMKx9Iqx6FC4b
	 R4OkZSYmcVU5BTCDtHUHAw/m9ZK7zQKcvwLoX7m/W1Ty5HUfAFv3fHJFwcKvYguR4Z
	 cIb4ttIvl1qjItN3vF2FvKpYSJcfgMYsYNhL4WRtiklScZ/lRAXIhsUm2TQPo0rtml
	 GOd4xyg8VLJ5FotxQE1/5AN+ZUSPtwyhiIJWJDeZYp8y3y0gr0pPuJ7cRPLFAH/w0r
	 +fcS/OZ8lSxhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96069D591A9
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173195435360.6822.7968822377943087103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdce3539ae9553be722760019d828e15204a1bb8b348a6efd3f1943a02ca6d22
Date: Mon, 18 Nov 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731954353
