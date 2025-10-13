Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEFD27A477
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760380194; cv=none; b=Q8tuu8dFnnZ/w7/i0Hj9MoNqBA4x4ZGaS82AOunkc6G9cQniU6f96bKEKbZ8ttaD8pLig838FFx6XZpEbdQBsp/xhv39jmFBa9WZ/yREK9u4SXoQ/jeoGJGOZWZNFZjDynEFEax1M050dL8qekh6vwtyiU8b+TXPKmmad6QkzKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760380194; c=relaxed/simple;
	bh=JUJWnscQvePunuYmI+I5sQp9wS/le3iDqpKod+BsCm8=;
	h=To:Subject:From:Message-Id:Date; b=FIQSz51JnePTXO6ZpJRGWQLhDqHB8BdnRzO8RVv49gtwJf5yRk6FSxrfmsg3fIPAoCEG9xz3Me0GCvp6FoeVuDZjt3n835CjI41dnPzSD9eGC3nRIbMhqskVsXdPb9XTkz7Hg514P8hO601N+Je9MvTLmKqK6DvGmRysQqFsHpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atgnqc+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atgnqc+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4439C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760380193;
	bh=JUJWnscQvePunuYmI+I5sQp9wS/le3iDqpKod+BsCm8=;
	h=To:Subject:From:Date:From;
	b=atgnqc+vyENMKKHFn3gjGNnzDodfDuHUr5voEQ9cFtdaNSsud4tf/hcWu81qOGLjr
	 4Ikl528J02Uf9jxD0oLjpbYDcgtnvIIKWn63kTuw0Jcvuy4M6TkBbflWV/8dzM64ja
	 RmYTVxCEm3q1Socy/yZwz2RvxHN4PcHZDWJTt9YwAsM/XgCKCGuxVTeXREj1D/luRL
	 lhMe2/8JW4hZXWqOcpoXQyG3HbCqU0R33CQsIoC7v6hVpEu+y3vG/5ut6fCGzVLJz7
	 k7gAGttmXlt4M8S1Rqcs3XHeCSJYsB8loSdJvJGvIYpAwePqMvBnwa6wXUedX0BUX4
	 A1YJGqNAhl4xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCCDCCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176038019358.17383.13885768101669172115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943848e6fd062786f9b0c67d1ac9bedead482c37ca3984c86234194d8c30d694
Date: Mon, 13 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760380193
