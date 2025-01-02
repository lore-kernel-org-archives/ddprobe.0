Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE8B1B218A
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735845354; cv=none; b=MTZG9coyJjZ9WMs4M49S8MwRwBysQAi9F1zOM/2GV74M3CziTocZkcW/VAntOrN5Kw10XIrd5/lt99W8pHZp/wJEAni5MGN4consD+T+fgDMDTay2MScRfqOX53KRs2ouG5J2P3e60jAor6D2HKJde7S8SFV1lJ37Xl8rpurKa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735845354; c=relaxed/simple;
	bh=EWGyiuvoZMdYUUEF17LeyS2ZDxO/R2x5w8y1mIzK8ko=;
	h=To:Subject:From:Message-Id:Date; b=r3rj97CyhOJOhkl/TWhE0gjrGwMG8uFC/e84RBOaes686wtdaJl64fenx9I1utkZoA189VwUfXFQEBN867tJ3GeZ8I8MFMHVPRdHtQsSQJzkmEjYmRejn2AK0Gth67ILYapNz1Z5XJs45BHOrfTiPhOgiRf8uA+dfgaXhdmGHjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDbmvkTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDbmvkTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7949C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735845353;
	bh=EWGyiuvoZMdYUUEF17LeyS2ZDxO/R2x5w8y1mIzK8ko=;
	h=To:Subject:From:Date:From;
	b=qDbmvkTTXUNlTqSl7FpFysZ3W6IuWZIi99GcDLqdVOZ7n9rTncrrJ9+R3bKN34NDr
	 MMVbJm7N0cLuA5mTkXOnVQRM19/P/i83+qnxZ5+iBo1zUOqrl0Utf1bcnRV6eHx6Ra
	 nwRLkmlgPO8n7DJyMVZOd75laEpB409CvOULhIL4TbATeBt1WVOZwz2gNkxKztQ9Ny
	 yYv3YrqLFbyWbidgkqKsWsUOA47agnK/CoZKP6RBOdRPRsMEs+li2E28mAHD/qPtp8
	 wlRqu21PaT8aOfWhfUu1z8tPYvFu6MO5z4V285Ml6ampmBVpSeUE/MwLv4SP5kj0pX
	 NWMtrtrP2aQhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95920E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173584535357.23237.16225995758744096947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc63293dfd75f91d87c3bf2c9c94468ab7cde3204bda1cc1499a9dd76b21bf62
Date: Thu, 02 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735845353
