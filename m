Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326732BD5A0
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744633795; cv=none; b=p+ZxUNVIIOfEbAWY3jfuQY5simG/bUEu5rHzJoH0ocxlbRcK6syF6Fq6Y1EaeXJYLbLjXAEU0T10RS59xK+DCCTBuDSGne3UmywcBaK48yn+S6rArHqheD1CqF/VF99cSQ33WwpA0g5SUsik9n0J134C3mArPolQjTpmi6Ue9Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744633795; c=relaxed/simple;
	bh=YXeFHmnbys/CgruWMz0x5l+uxXJRrOaMOkX8B2P2dTs=;
	h=To:Subject:From:Message-Id:Date; b=l7kG4N0HOaPh05mcbgMrp6vU68axC8hIKYMpecbYAnODbKsqSkXIsiCYN9NZ7DrhVaYggxZeWZo+5ZcPHg7N1LKa+CGIvKbXFWfnZwBlIkf2eeR8Ha+VNQl6gXZPBTLggkuCj8eRuulck0SZDr/CyNGi796z+O83KiPGde0X90Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGthz0jF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGthz0jF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66E5C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744633793;
	bh=YXeFHmnbys/CgruWMz0x5l+uxXJRrOaMOkX8B2P2dTs=;
	h=To:Subject:From:Date:From;
	b=nGthz0jFDGi2UK24deuq7nz91cq0SlW3MZ0nPAliQxFriuJI0yLQ1kWYANZ6HysVn
	 TNnc1pxOq+b6ypBw2BuvNbFxDDFtI0DDA+e7FHbvYBBuwLpt8hFRiulvrcUvBKH2Nq
	 QcEg3/Xd3JEz8jZAh1V9C8LMGoF0rN77WAugjkdTU0n5kDOb9r4lxSQhsvv17IQo9/
	 rKXjLOc3owpOjRA2JywPVLCD1fk83sLZNmwLUdG6iegc77gKxGvxKUIbjO8lHyDSlA
	 /WM7/rB15XCCzAkdQuSoNYHTMcJlP5u3AwdDZVRl0xzZFNmBrQwz+u7hExyqCbYvy5
	 Es6Ai9XZ9BOwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B26C369B8
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174463379358.20859.1939878773614160713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eedda9e30e892f1ac3f974d0b768533c3ac3e71ad4c3e38e4af213fc2c0f57b
Date: Mon, 14 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744633793
