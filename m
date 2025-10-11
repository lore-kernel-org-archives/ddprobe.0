Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2363D1B043C
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760212794; cv=none; b=P/BZjy7enC0mFq6N26aLrTNCp2N3ITO8/BF+yy3JI/610g5v8+QzRuN4rE7VJJlZ9t74nP/RQJMKEMcM5W2oSD79S/fwO/j4zMYUT+lmN6gnOBar/mzcHdWd//CCmgQFO5bbL/23E27psGXLnMy9OGaepxU10z7cGteW267O2vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760212794; c=relaxed/simple;
	bh=rrtjl8SNljReorHmG6cLAec4ZNaG71eNRZezjxRPg7c=;
	h=To:Subject:From:Message-Id:Date; b=IpOeVMhJLtABv5ayLGNvwz37Z5gyKkM3BGk1gRD66aH3lttQWDa8Z1sOJqOxmDKvqanJfC+qQbWFa9iwkJtveLgXpIR50wO1o8Nf7OfFRZVZxWs6Lm6A/xU7nyyzfz8T6+uE8gGPYjNbOmiosGorxQoTfzB6DWnStGeV0+RYd3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rke1axid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rke1axid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7766C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760212793;
	bh=rrtjl8SNljReorHmG6cLAec4ZNaG71eNRZezjxRPg7c=;
	h=To:Subject:From:Date:From;
	b=rke1axidXITIf8FyM9KSgl59AXObJQSszxc1mhE/KaXEhWsCQIF20Sj3ws0MYvfLf
	 NcclPuYIcF9H/bykKIr1jZrZZbfih9Ocw8mbfG+fAjTJ0qsog/l9UGLP5TUP3b+A0f
	 jgZb2ScFaMrUrb4sY5m8FtYEQbndLPqZXvymMtaBkecMDsOIJI84IfsQPWCGoqYDhB
	 iwNlLkbb5DcDdoSV50Ts1fIJcYWThoff7y0Gm2nY5rtEtrcbHy1nk5AMAZyBEDsQWg
	 NXPKTqyRZHXFk4qoRzCgZK9EK3n51HZDU82r6uBpeAoMaxvSAoEYEL+1xlTuQw73ZO
	 KaoHV2h5O6Gyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95552CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021279357.32052.1468006553964466928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e5bee6ef4a80ed178bab1a53a5fdd1b962e23e3d8a7154b524c2f83c77c520
Date: Sat, 11 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760212793
