Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E1C335C0
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 04:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719374603; cv=none; b=OAB0Ew1ZJLMotPB9s+pyEFp6GuVQdLy+EB1dxHaHujJESf5rf6QzXiDbEnYUY8YR94jOnqm2frhVvM/z49VaQIa1q42JZ/nUJs/XuyphBaiY6tqb15UBl5eud+zMlXCN1thKLkUMkkVFzlWQ7AEnH8WH4L78nBVCTSaehxraxo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719374603; c=relaxed/simple;
	bh=dojQ7fUXXyqsn+cDdOEkg05Ecsl16g1CtsLgqb8VX9M=;
	h=To:Subject:From:Message-Id:Date; b=sbKq9gzyHLfKkMHX7rEIisLE8RNIwgvAu/2ObJxXRuHzUOHcn3pwzXdOWusyojoYKYELBXI3Ecl0NUSqYKfX+8JKjkcnFMS9Y6yVEMu1ay4uur8YOQxjNIR0Ox9yiT9Oy9ejb+5Q0tvUMQktOPu58Vhlc7roVwO9qB1kjEGKEbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uw+NWxGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uw+NWxGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AD2C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 04:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719374602;
	bh=dojQ7fUXXyqsn+cDdOEkg05Ecsl16g1CtsLgqb8VX9M=;
	h=To:Subject:From:Date:From;
	b=uw+NWxGIf73dvdEtPLK93yP7kjQsZuXQXZem/satjkx6LEK+ZQFb1yO5skz0AgvRk
	 AV3qzOYtpY8+ufX7n1zOQBx2UlpO+BxSDNdbPGADOz7SPDEz41NTtWkNIye4HzZhec
	 xxdJDo/fXImRxy0UtZqPsRIQ93zgc/XITgb0vPIhm3Gj7X7znPvUhr1Pwx01YwnQqH
	 AITU+sycv4wE146Hl4WB+ETSZQ8eHvD6ztoAsFEYij8hsH9Py9/ixlHDcnn0x4g2QK
	 WG68jQeWrvB+LoofRWz9TwLp8ps3lg/SiHdMt3hmf4zR3rBtnKbTTjH62ORdk5gOHW
	 bVyiFIup8fbKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A0CC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 04:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171937460278.22425.9838751863363871482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcecff267643314ddb6b6a6fbc2426d22b62e5f9aa8fa06bb6bd520a49f269b6
Date: Wed, 26 Jun 2024 04:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719374602
