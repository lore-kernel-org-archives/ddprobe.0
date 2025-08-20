Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1276F2DECA5
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755684594; cv=none; b=DUnJFV6EKmJBpDC0oOeoG9jbyCeN1h5j9hzxgsZ1Mwa+s0gnchLJKxO/rymHqw1pYcjKk7/D85EVC2x28rOWCxPFUeziVYTJsXX+1gTHYsbknf7T1Sg9enDFtx/opxDjL6GWwwaTfrxrjwqSlLKbO9/LSf5c1nGjrziSN/p3QvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755684594; c=relaxed/simple;
	bh=ivyFphSJFavGVk8pRT1Dtic4U5MBzdU6G+3p+fBBE3g=;
	h=To:Subject:From:Message-Id:Date; b=Tr2m8P5lSLl1okeMEQtkL9WPi8z3ELrAd6MtWlFCV7t69DYOqxkBZH+5um5Tl++ZGuqP2/+UbKBuQTOrybxQcc8fBEEO8lacPAbERPeHdEgAqRwKuLRltryROOSwqjlSmFxCLHE5peMgy4zynbGUW2nM2Ye7HcoCYoyhCz+OtSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMNtDi1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMNtDi1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAF4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755684593;
	bh=ivyFphSJFavGVk8pRT1Dtic4U5MBzdU6G+3p+fBBE3g=;
	h=To:Subject:From:Date:From;
	b=NMNtDi1uwP3KMF/4QWGWo8tntT++3KS0mXMBFp08HsQNKuQxE89xT8QmhySx7LZL4
	 uIC4yDbIjxjCroY78YfKUiRoZpRjLR33GmWfTQGJagR91nP0f+bN+x9bWYFVlXpqIo
	 45oLyye4z69OVK3TfUvi7qcHV57r8UWlquTb4X74AQIV2n4qWkKp9Sy3iAgyKcwNP/
	 jevyEL072c4lqTY0ogXwklkbYFS7COOuGTGQ0IurXT8eR3JxnV+wIe8xY/1FSvZovW
	 +4yXDGBmvRZAhUJnfOUn5vbcdIdtMv0xuKPGWe+qTzDNjQY2y89Jv3N653pWY/hElE
	 juKYCniUPJbdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F26ECA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568459357.6009.9099520861811505630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d86abd213dcc8dde9997cc9df779ab0c400ade0d06c9cf111865a7eee207e91
Date: Wed, 20 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755684593
