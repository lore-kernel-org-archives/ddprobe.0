Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433D0610C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743397794; cv=none; b=LyNXLI9K5+G7AJkFDhfgzooK2Vbjqk/WrLNzyDEAaNDz3Hci3NiL3wHGql/U4gC8urx92q3EdCOPICuwFFFR/e3XATzb+A7dw0VkZVvpVVawqyaxivYnyEsduOTPUMBQMBevqWAnBSqYG+AKYbPqX7vg6hKha0NoLAC+THhjXsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743397794; c=relaxed/simple;
	bh=7REIz5Gv/Q3K7edqKeUd1I6V2uLl9kaNEQki61x1BKk=;
	h=To:Subject:From:Message-Id:Date; b=jinpXMY8sTn7I4K8H7A+nEPQ1XZu6DLKJ+ivtlCI5JlgbFswxNS2o0tL8uMTg1lK9RvE4tgveBETQbfPhx8onfqcBhC69bA0gHkYicgwtGKvaUVOjq10uoY34N5UmyKs4TZHyQ/nqEZnDbXOZqDe9MNrWb3lLtkQMHT1HejTjdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ps10NMPx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ps10NMPx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1219C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743397793;
	bh=7REIz5Gv/Q3K7edqKeUd1I6V2uLl9kaNEQki61x1BKk=;
	h=To:Subject:From:Date:From;
	b=Ps10NMPxtnbtn8IZSDsVubrGt6FgdQgcSNeCqspaTBJZo4l54RJb9zKjHhLbk/C1o
	 V/0H3HUXmdn11GIPRgNvfSNXOcaJJHcxIOyAAQSrVC6U5KCwl6UGKsZs6FsKMfRSX4
	 LifcJSupVUqJ3fy5HIipCRCih6N40aEoEkj1h5QKKljxTtSdNEI4MXVQGDVH8/oukF
	 ay5MMXNQTKxPaY9Uwg8NWBAn+WLFGtAgGpi8h9vxcZxgR54EQaQtyWNPxPNuwjEYtJ
	 Um1PlYiyetxV/LUIQuxx2QqqnN1q+nBo4EZWwSBxhgXG9L+vR/MPL8K8HDTtVRDDCp
	 TNzeFUyNPxOMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993CCC36017
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174339779358.8569.16197039027713688864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c0c676905e0887673aec0d7f8c76ffe71ea61f91c3bc4cfa5545dbd27c4e412
Date: Mon, 31 Mar 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743397793
