Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E1F130AC8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 19:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718306303; cv=none; b=GWPyUlRpr/UB/yRq9svNBZbA7jnO47uR5LK3wX2UX4BmbyJ2WA5EjCEFhY+3oS+LhuYnXPKkc7kr4d3o6J1u4bGKpc2p7jGX09fleG7ZuUh2YZTjKq0K6mZzvSFq3nCb3tCbCdXKKqQGgyFWw80xWmmI6v9BbpI9dAgV2Bdbamc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718306303; c=relaxed/simple;
	bh=pUsmmXSyZ6YUcb7m0D8gjzrn6g/nh02Dm76aZ9X8xiY=;
	h=To:Subject:From:Message-Id:Date; b=eCkQQDdRlJ2rY5mintsZi3ZMs8kdpSGNCBM4ux8nlO30R70lZwNDXr0FXRdonhtpDryxczgaZIemfsM8JGB2PE1hmYhNDnP0366ffF6Oz06ucNwpuVAkSPPVS1esxwmi+aKJX7HVa9PvTOnfhPzrASc7oWuASLpzA7o57tEcmjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPUbqXOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPUbqXOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E59B1C32789
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 19:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718306302;
	bh=pUsmmXSyZ6YUcb7m0D8gjzrn6g/nh02Dm76aZ9X8xiY=;
	h=To:Subject:From:Date:From;
	b=MPUbqXOTGXHlWv2wt+719+DgiE66pfWzj4m3RCQOSQeCdEJYCq9DHJqK2A0S+Pq4y
	 TH1Zetgkf+zgfI5FI4F9g8/ZEF8zVPQxMj6WZFTo2MNbSpjoggbiAZl3qr7zy0g7bY
	 HXus3rKdgn4OR1TKuskCWmkwJSVyuqWIj1rWR7+K49GiPFl0Gb81D6zHHcTCIc4ihr
	 quKZRqkKaCclbbvrgiWtbYmtVPC+GI3yFhsWkKir/eOYL0E3cw0cVbGpfp9c8UUDD5
	 ZY7FJEL5waAkaTCBYwLidTMyl1PZ4/IFbty03BXUNl2uFbPOnnTVVdWAtqqeFAiLR3
	 g40frVBu+iRQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAD84C27C75
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 19:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171830630281.11054.11585918520216597969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25215b067e4004a6b06cf9efb67e2ff3da886b213500bc4357f3fa90e3fedf16
Date: Thu, 13 Jun 2024 19:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718306302
