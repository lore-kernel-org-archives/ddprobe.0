Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCF013FEE
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755574794; cv=none; b=ugCT/RrfmSWgmRk2aQs8mSLGhyiFqwQ1/+O+e3KtZt3OsgkSmvHRE4QwS//9Yxzx61+Q3CbmMkq686ewTj8HAt3isEBa6kVUa7bR+ap/e1mVYZD+KvrbX0+aT2gsoVN3JZz4Mj1Q3itaSZJ0hPKmPIoaEKmIOsS2GuRfvWUOj6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755574794; c=relaxed/simple;
	bh=Q0AcT06zGpIWIahQ5BTLYBdiIwK8Tc5fk7dPpD8R2Bc=;
	h=To:Subject:From:Message-Id:Date; b=d7P3QBBXmjdhTBTV6PKFAT7CGwUdjaCfi5KiE265d1I6TVA/vRlfRiPLPyXVcYLKL6p5rTPQMTwb+/C2yPD7vYxsnVmVgO88STsbgwdXRdVbkfl1jVg0edxdRkW3HiMgPwHWBlIvDVBnom+sZe/AOtrAnTDLabpg7e6FWPS07iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=InDEpU3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InDEpU3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D57C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755574793;
	bh=Q0AcT06zGpIWIahQ5BTLYBdiIwK8Tc5fk7dPpD8R2Bc=;
	h=To:Subject:From:Date:From;
	b=InDEpU3od66HHDm5STD6eXaLxO3/Q9jgkLpNreVYPFbfc4tXZSG/SKZuFZkELfXoj
	 JcRqWDs4K35aZrBNT5l9mseMETwozGbMTZi8Cq0ul2RU9lgXiUgoo1F4SH/cZtNKYp
	 g+BySKwOtxwWDflJvTZA3FcoHwHM/dWWImQ8njun83vMkWGPqucFcx1LtgdKgpC3Mx
	 MHVsdE3d8og1vBhrOYb5ok0AU4Vok8aJA339wNlpUyTW4IohZb3rrMK8RTgZvCi2AO
	 /BZa9pRCapeIhng4GCUyS7ivmAJOgz56qt0fGzoD/kCJhqZw8s81kmVXDB4zQUMMqm
	 wxuwHxOmAwChA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E3BCA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175557479357.18402.14089166975917517646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1924e8d793c007315e993df37e0e3ac611076bf002e7a5abda5acbb52b76fa5
Date: Tue, 19 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755574793
