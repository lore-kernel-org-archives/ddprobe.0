Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7801E4BE
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757857794; cv=none; b=neEKluku6fdCNIyEibjqyMOPe2hyFXUDUE9Bf7+IyxjYBA7f5al4xHlfzZO/otcivkbSevxmqV8YZtOZkt6ZRpmx1JIckyknwRUNJaFDkLInZbLr7FyH+3PSWhXuviI05aOiwLyqBKfOh0KVJjUKKUoJvH8LFbNfEdbGM4jSVPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757857794; c=relaxed/simple;
	bh=mr2BoDKXEuSuRCQ+P6t0tusT8UugA9+WkBA9LIH63Jg=;
	h=To:Subject:From:Message-Id:Date; b=YG4Y5onrynLy7WgTBkdRtyhakVU362aOtwCIaZMFD5dFK/zt4ThFd8eM1XiybQTR4kK5L+cRfZJWJQKbf1nFN4uyW9jm+MG+SVmK+qIQpaxS2PeKDdaPxAut7G+QFKZSMJbphfwtDejDh1v2nRkkQPtluxGH+osnbmJjDibw8Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+xQldJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+xQldJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EABC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757857793;
	bh=mr2BoDKXEuSuRCQ+P6t0tusT8UugA9+WkBA9LIH63Jg=;
	h=To:Subject:From:Date:From;
	b=q+xQldJSJm1I66rQohhI5qrLTNvfieU832YSPbAHBqa8CiCRbRrokU772SO6ns2zM
	 S0qhNxAIILid594oqp3JgCqpntr5TEDw+tqjvLHw80ODncUIvKQn6AlXQBQZ+kEOAV
	 1MNothRhBAohtDncs/IIAXRelRD7yyhh/dXpqPUpQqyqU0npgty3TjVyIhKMoskODq
	 F4h3jsPllgAVe69S9/yAVOtWVGUC/5sU/PCGJ9pKi9dEh8bNfRb4Fu6dRv747VyHuP
	 v6HeH7SJPP+3TWgfMZOiJ//rIFf+rhafgRpOeoCJr30mb+XCemzLB8H+d32Y8pALlB
	 8HKIRAgj9hTZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91460CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175785779358.15057.2317092177560773267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb5a6a453324367395edf093358fb48879a758e299a153370d0afb41c314dba
Date: Sun, 14 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757857793
