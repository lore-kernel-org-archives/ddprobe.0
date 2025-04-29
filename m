Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEF61DD0C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745935194; cv=none; b=qD/5vyyJYF4JZzVls0wlleHksiFocEbXhZ4ULWVULbH4qxYscP0YtG8lBSPFvIC/q7mEbJULgiFPuDd4UFje+SUQE4ZerNEmvCprUrRDG8hcv/Oh7y809CcWbpAcBISG5QGzv6fqaTj1lIJsj3beBb8uDeDprAXrwocb/rspgkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745935194; c=relaxed/simple;
	bh=WF9CeRD1zp9P7o7HKA0NUlgL4s0Cm9kHRv18wJrYk/E=;
	h=To:Subject:From:Message-Id:Date; b=XNuz7wdmAowYBC4tkvqLXPsWdE9hQmHM6WIWNVDtlySOAuYpYxsdIQgYl3bzqODIN2/d8FwzMej4CFaw9uPDRV/jBOmjVI4NdbTfItJN8EfpTXI0u1DF7ApoiGlu5q/Tf0JQnuLXdMY0oZ9IIifbwQMRd/+eKZbWf5QmYjLdAqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAo1swAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAo1swAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6102C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745935193;
	bh=WF9CeRD1zp9P7o7HKA0NUlgL4s0Cm9kHRv18wJrYk/E=;
	h=To:Subject:From:Date:From;
	b=VAo1swAf6MlSwW1Px8kgRcdI2MnecugONqhOnZYPEIs6EEDCTmc5VFoQ7ABbguwMp
	 p0c8/7JmMIrQCtUPwXfknNDlegvxTA3koMg/fognX66HLE5JaTfy6XaMUeqdaV8AAk
	 J27iw7Hl7OnBiCNdDkyPwLBVTobfrw1sYpiXCJVkpMZoBsjFuDdgEdMYWZN7ESI6oL
	 224xEpQ1zmE/FYqwFo7deHqSzsjSO1LRdyqbo7/1/HCYzmdghX9qnNgQPJTnn3E+Wd
	 IzPS0Ru+BMOLZjpQOqSKGtZG8OLRjcEIJT0K7+/aitcCXyfuoHRZU5DBJ4ETqaW7TD
	 N2PAXvzvcGWyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95369C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174593519360.25831.10569966094114360158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cde33b8fbfd73b5debd1953366362b30011af44fe6ed382bda2072d18c5c1c3
Date: Tue, 29 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745935193
