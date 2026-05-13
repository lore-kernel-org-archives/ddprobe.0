Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDF23630A4
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778647234; cv=none; b=GvoNRUw7nh/1uRRcscZi6fDrwm/M1AvMMuW/U/54mXtdQvlwt1nZkZ4iiPAGR2HqYf5+j2TmgvGBDBoRTQwZ3CtMgBKTYxVdHsGjNd0fI2IpG0jYDd/RVzxm7DM7mH1VEP7lat77V4bdO2gUIdYZIFYqKR/ceSMdEtLz6uxQ3ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778647234; c=relaxed/simple;
	bh=Xqbt7jcUTwmqpjMxQs9j5UXSU+KA0C0DW1TBjkSwTb4=;
	h=To:Subject:From:Message-Id:Date; b=npQ+CHjvuB54cd1HiDXr0aKQv+xgog0FIGdGCkXpkkdsAiXQHPEqcYDjZkGu/NKnltzHM2J6KxEgWH9S19WJkPNwQU4+ik8HFHjesD5OfYPsqg0I46OgVCRT32fD8AIJbb4+PnTzEP0bdr2+iXzZGk0gDkX8MrbYFA0jauJZLtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmA2fTFv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmA2fTFv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E95C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778647233;
	bh=Xqbt7jcUTwmqpjMxQs9j5UXSU+KA0C0DW1TBjkSwTb4=;
	h=To:Subject:From:Date:From;
	b=tmA2fTFvxCpgmj+WvPOmyDZmJ4c1Z0DVcLhhLpB+iTMBfzsvImoynbWdtlvtQvjWO
	 cJEOqtDe+5nA9GVH23yo5fHcO7LbVJUHR7zGoOBjkS7k/N4a5RczR/qC8bc8fyHw1l
	 JcbQn5xm+qLRJI5cr2BxuyeZoRMQ0lBT1vEqBsfuR6nbjRisn2HH1ODvLLh5BGKl0B
	 7eZtFj8FKBzOZPHWWAsk9CKFtuSthCjBgpPuexJQ5O8nX0y/j2qpUF1dsksB77uf0o
	 F638c9ooQDqveqdKcWtTPlF/OyWypDsxZbIJVGyVCWAlHImqPyRPmWPuz14D1zCvIJ
	 w1x7D6WIKl+qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF82CCD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864723374.1777.10884140339165651171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbba37ddddaa574af3a8b14ff261fdacf9cda6aca99130a0026ff8851b314fc7
Date: Wed, 13 May 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778647233
