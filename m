Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305D21F8755
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751606994; cv=none; b=PqY6x80MbO8j9EuXxLjnk2/xlq97fH/QbG/gtg5J4KOBEilRXGlEANK9/PD9NaOtuyAi1rHiAs6tYiDJYwm4k6VfbA7DMFnPucfnUuvQB4fX3dvCgUWOI6hDNT9OGvtbBpUF3qc7PvB47aZTKHrhl/UeNuDsb7s9Vo0kBZOubOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751606994; c=relaxed/simple;
	bh=5WinQwWfGfJM+15LdRzq35+EBZLu2xxLGEDYH/yOuUU=;
	h=To:Subject:From:Message-Id:Date; b=oxqIVcmpp1og90eLKxeemMBIa5/7JTfRsbaFvZ2B4xcWdAVrEpU0wRuD1+y3Gn7jCC1IKG7l9l/rW+mgDTJDi40/7/G3KFOEDyvKKGxaf/rFnlaXFNCHKx0Q4QZLp1Jk0L6rDOt49xGyopobkg5x0AMR1rF5nkliOjJCaI6EV54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzeiXs2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzeiXs2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FD0C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751606993;
	bh=5WinQwWfGfJM+15LdRzq35+EBZLu2xxLGEDYH/yOuUU=;
	h=To:Subject:From:Date:From;
	b=fzeiXs2DEkMScOptbFq0rUyRMap/q0b+8rTmNG+znIVg8izAMUFMSNBFZneLDu+S/
	 B1i4YirfJml9xxyMljgv3hR+wLICg32q+JNMkgGWc9AijIRuSk8t4STA14ELB1QW8f
	 4OBi0gfpo/1JEYr98y27VyJKXxjXbV1d6UIdLjc95HgyU7hv3sx1yK9KIhm5eNibef
	 5mVX87mIcFPDyeR7mKrGlyTaYFGYW58SGjiIr3pIawkhgFsiJw9XA2MLNA1UKH1cKx
	 jzuOlfSm96Jo6iaG1VNae5Uj8pd1uX5OCzANCzStTNKoLxnHcHtbeNZh+PJ1mKXVm/
	 ScldxCJYEkxEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C9C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175160699357.27071.3990107142917469261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e821ccebc5a20e12c0a21305683f954afefef60f0be7778a04e27a2e092c11ad
Date: Fri, 04 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751606993
