Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B062FF662
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767045235; cv=none; b=SdWHebuaaREuu1O8xH7wF0z5+S0ASMjPO0GTQIB30dOdeyAHR758ldJkxIhw3R13uk+GNdXQVHgdkiQVqNQyL8cnbUOj8A/vr4K/lwviAVuBQHPCosEd737Bjn0j74p7lzD5upuz3GjlX66dW5WZDB6vL7p4+CPK9oIjYlTPZ+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767045235; c=relaxed/simple;
	bh=03T/dN2qNOzcUimkoUFeOYOvThXz+/x6MTJbB4E+GVI=;
	h=To:Subject:From:Message-Id:Date; b=AqeEsrA2cT5CqvJm/dQDSztKO0qwSWeisxmtZ4axIBLgN60oO6qYWAtT8VUI5ONVWJJNjwCq44us4FSCqsVyRfPxk3Dr2uF56HdgGURI4j8M22VW6TtwP1U+pH4BEHXOUCCQbCfa/5iMmC7WSGJ+V2qyDoHawl0iDxupkK5kmzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VV0wjQo2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VV0wjQo2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9287C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767045233;
	bh=03T/dN2qNOzcUimkoUFeOYOvThXz+/x6MTJbB4E+GVI=;
	h=To:Subject:From:Date:From;
	b=VV0wjQo2BgVL/I8PzXDmF/NMbLpthlnz73BRoBiLkckRiyaXD7GCcyWVmqUW55f2V
	 qB8hZgZbTHptFK26Vrxobc5XvUDKLFFmDqetIBtQzHL85OyRMDzmAab6yVEZwNdFS+
	 UWOdRrZzcUWMAmx06G00URSbRZkxNGCmrgQoFdlJ/unDkeHvvVH9ozt+p/JUeqh+jY
	 7VrWvtJkb6+uaFll5/3v0SguCbAXAMWwwzfEXcN4A5hRloHr6F/MAfak5ycJ5yaoBX
	 v+6To1a/9P6psWQSks9PfytQ5PJ1PSxlyBaQETlKXZ33v40pnzOHEyooFsJgKVMHdh
	 jRCWYWrTk4w8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9276AE92FE0
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176704523357.30130.10395286120744726053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244a4fb5ebfe231e9ba9256b407bd49e90930efd428cced2ae02fcc8ee9415cd
Date: Mon, 29 Dec 2025 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767045233
