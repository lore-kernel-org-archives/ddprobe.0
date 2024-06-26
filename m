Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5C71E52A
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719411203; cv=none; b=bfFw1AhJR/IuvGfLcNNlfgRZ2LxPyKflSjSpZw7CrWEbOZZboMe8Xy7XHPjguhNdUNX8QPDW5BqAxOa8dBG6BI9OSuKiq1UxlIXWUHA+smqQ/TKgcRN0GkRIX6JiJZaA9HKKB6X+ZGO5Uk1cqleqMi60ZAlXfiaCLoQX6TqFkSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719411203; c=relaxed/simple;
	bh=Sl88HlC4t8iPUihyBA3uHxUgWP6vB02ObNtQD1dEK1A=;
	h=To:Subject:From:Message-Id:Date; b=RqoflBV3DTC2nEyzgWwHracAGxac5m1fvkHEqA7tv4uVytTkKUBpMspfInMckfcULTitDPzw4gALKdFZskHnuYXvR6NTVkZSawAYevDpj4rMC30tnvhSsILSVmAg6M8t0nUo8uS3K26nv7g0LEi/ReMJ6QKAQ4Pz+tSaySMs30s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbjNs8Gj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbjNs8Gj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86B6C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719411202;
	bh=Sl88HlC4t8iPUihyBA3uHxUgWP6vB02ObNtQD1dEK1A=;
	h=To:Subject:From:Date:From;
	b=pbjNs8GjG4Pi2spy5QubTyRnkIZ9TjdpSZly8zXLHj8gqIx3GtzOPwqO5wgFu+h07
	 fd5aQ4Tf48fhHcPE56doop/pV7XMjD3umfoNV4/BJWRXj3Uv73lhjQIVMCCQALtuU0
	 Gs9C2+8ziuUD8xBco0vFzw2E/azGniS6fWtv0aMegnb9MfZBdP4jHZDRYaq5GhMl5K
	 ln9gsH98gcEZ+MbqBRGiIoCsSuCEdSYenDpNMA+vmdQOf8iL/rgBFvzMoRYc0oBfJa
	 tvNCI2wXbvsU6o1fNQc9Yo0/iQ8X6PiRtEBwPvwDlvWkzWf/0tcL5nvrI5/EJNJcYR
	 5HSztbiyHnFyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3233C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171941120278.8409.13841188130148578057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd5aa70e7e0e53a92a4dc1c4f544247b87d87147bd13c580398c771372e7b89
Date: Wed, 26 Jun 2024 14:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719411202
