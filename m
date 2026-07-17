Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5729026FA60
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784278114; cv=none; b=jfbaaI1BKc+LcOdMZwXPkXCxb8cLIPbkBTBEG2E97joH2XV8Al3rH3B0bNcz8W3/S04SMRSfeOO5GNSaUiHJPESxoR//OqXweL1SMffqJ0r4EAqr4wCQechAgCILgDN9S4oChvd8XMa0vj7dbtJmPjL7k/4mYHJu5YQ3RiOi13M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784278114; c=relaxed/simple;
	bh=5XRocuidxPHKG3ETohPn8he2Xs/lVN6vskTvd9vLILI=;
	h=To:Subject:From:Message-Id:Date; b=Aj35DoCBMNwI32XZFM7bkIYg3VEc+ildGFYm1Nh/gHA8tNNzHtw/uW9L47QoUnstk+qyXT9Hzr/osjksFb9xnerF9ZxXw539CDUUIe0rHGBLdeesejEHarcM07W9a78XLaNKYrJPeAzwCN8ffbRmt4uQng7n0gMHKZ2ZfpswB58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avNnVRDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avNnVRDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73D7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784278113;
	bh=5XRocuidxPHKG3ETohPn8he2Xs/lVN6vskTvd9vLILI=;
	h=To:Subject:From:Date:From;
	b=avNnVRDiRCvj9V0EPHQuJv8e6kDCkHHRRKx7MwDFY4xG21c9d1tFU0f6+9aVUK7LH
	 XRbd3qA71/B+bcuEtrifkyYLGIAWiVh81iieJkw66ies4l39VbkI8ePHafzLgCLP+d
	 j851gJOI9VFGVTxPFESxr/vAFfpL9UhqAFVgnRpI3s4fcSM7RVl1YKFVPr2ZXYXA4O
	 tA7lS9ea5V32+LZe/WCXodG2izKQhR2oJxBtmU9xT2XnWxF4jXKe78Kz0v6VC5EUGG
	 sI3IQDyTadpsVQSygk9IeJGxGlqhcbirYG6ZE5X/uzkukedcSrReLutL4V7oBQVdhD
	 jLG6NvnmdcCpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EAAC44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427811371.25791.7761622350334616456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a58ad81c33892069d1eb71b30eba59ce5d2c83782b8b81a174e9816b23b1b8
Date: Fri, 17 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784278113
