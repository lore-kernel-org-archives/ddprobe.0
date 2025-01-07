Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E506A31
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736229354; cv=none; b=dOSFYKc/FoTb+5zjewzivxkYU5jJLofCxVRUSkKzq43xDv5QxnzBHoSUq+f9yj+DK3mufrjqliPaTlQAuoFReDuiOVUrFIxuOMo4u1pwwEMXakJoZOx//+X15gp4MxUxgANcnYNConhbqJuI6/Ci28+8gcmXN04mdeMpfzdDxxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736229354; c=relaxed/simple;
	bh=elb0lYc/XmPpCok57EKRbaaqsyLVzCiBjOtOtfIWjis=;
	h=To:Subject:From:Message-Id:Date; b=YIEt3CRtgBnFFfoo3L+WbKb3ImLxGbH4d26aqzr7E6h5yET8/pDZ8eDAWdFHsFvYN4BVYtNoJjo11BNFgkZ1nSXCjK1De+SfyTudiaxnhV6YPR2vOnpW2D8T5BDtZwnppI2nTxYu9o9TLD5OL4EJFBN5ZFdOnoY9eVS/LJFD10M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0NPVJDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0NPVJDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D30C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736229353;
	bh=elb0lYc/XmPpCok57EKRbaaqsyLVzCiBjOtOtfIWjis=;
	h=To:Subject:From:Date:From;
	b=r0NPVJDjlv7zvduIdvSbOqmz23ewpTfG8fh/BkKpAJO59EJ5g2ylxSzC2IC6UrLxe
	 bKM0KtfRhO3tIj6HHRAQumJmrPMlpACUe3tWQNdQeNSji0zj7gDlUUruY6lof6sL9W
	 7w1ODqd45rFdgdaycEGgRVBoS0gDUvsTQZHF310w5eA5oQhvqIsBgdylrC0TSEKeiA
	 T3s2+KXvtOlnoFzOufUt4HP/tToxJGl8JFvpL8OirB0pxchBxbEcxf1zr7W3PreUY+
	 h6sfmcOlKOCPPQI0WRXZl69xGKawZMlxPbIEUaoR/ZSk72HrcBkcWIF+0AoPm2EXFH
	 6U8i9K3ErzJ9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F9BE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173622935358.16618.15706513764207056641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c55ea46929679ad57f069bb1bf9a8318841e7b872647a62435c51da39aa415d
Date: Tue, 07 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736229353
