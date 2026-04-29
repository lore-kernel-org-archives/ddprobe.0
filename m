Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254FA383C81
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777489654; cv=none; b=bLpvhR+gY0bh6V0Y5IjUeRXAAh63gRt0a0YHtLwxVB5bB50fU2iDvpeM19PfAEJwLZg3rjY42bfRl9CHrDDxGtDDfh3B6CQs5JhWWkCiOPeYRKvt0KfROUzlCjbn+ii4aOqoJRWwSNPEsr/Jlrj3HkJJbWpFIHYa8i3MzlDYKKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777489654; c=relaxed/simple;
	bh=WGfAjcRIxvRMxYZqfv4KzZtxjSdNIjKU08HKwv5jUXc=;
	h=To:Subject:From:Message-Id:Date; b=q1X2xw1P63UyKEiUrVZCek5hWWQ/StpH7Rx5e1r2kc/H0mDbHgp8IkIGX2Q8bvCTVpYdhMT1YAflpDLjMK6krA7jAAFDDMxauwAwRpYUsCvDpLeQJXsGb+aRSE2L7DMgKVNzsmvWJeGE6VgoLCAaZ0DIGbpcg9Qtql0skKlV9Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GL8iNMGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GL8iNMGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC28C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777489653;
	bh=WGfAjcRIxvRMxYZqfv4KzZtxjSdNIjKU08HKwv5jUXc=;
	h=To:Subject:From:Date:From;
	b=GL8iNMGd6vNhhT3fa6O9HmCbGVzuGLtDdhIDpi+V/RXRUUOGNc/ROG5xklsCDt6YW
	 NaXOwiXwAmfL2gvNEQOIbZrUmNU0UrcfPEf/CJFmi9AqylcR4fofUvhMkSdr7/+Eq9
	 rZKLkqTaXOCHdTzKof7zxa5LLSv9PGVSmfXXPOMS6n+HWKnmM9RMsrsSNYR6kwAdJ8
	 wtzOqNtMqyiHER1dOi+tt3SOcAzztaOfq3Avwgc73p5Bwhf0RzYuIEXEydCRkb+x7P
	 8KAyf8ktN9G/n2wTs+JfN9V6B1oigPB2lI4VdXW8dvXhq5aqs396iTQRFdQ5erNjDx
	 3w2UhtD+8HPcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7ADCCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748965368.11412.4539527047314136715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863b8da2462806e5a22ec26d052b2ff12868d31d243c067bd80a1579a66baff7
Date: Wed, 29 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777489653
