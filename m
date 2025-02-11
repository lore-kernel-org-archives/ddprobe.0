Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EEA02505B3
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 14:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739285275; cv=none; b=rHkJ90kXR8tzyw7PSEOsWEBSohn5/tLhXC7b/40S1Hnap/1tpWkMKrT0rlFY6FnSAxb5yLO3KUoTJ+nV8sG8dvaBSMfHiIzIGQa36cEr4bM2U2VG8PW1Ek5bU42E9JACV3CvrTBXf9DJomGbtA7vaOF+f72FWfn/wLECcwx57z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739285275; c=relaxed/simple;
	bh=mZOFe2gbjVJL0YLattun3fBHWYOjh+6N/v+UVAWkaZc=;
	h=To:Subject:From:Message-Id:Date; b=IGe1SbfEBDFvwcO9bdnXHh5ihaGQFZ4gfDA9Ur+HJsWCcML3KOamUfE3vOXRd1GVp3o1tetAxhLi7jwoHuFhtJbWdCgb2yGyh8YkdPHQka8wYdMmwGD9Y2/Lw9Hdp/ywhJdPDj2/q4VX+uZDjAE5vQXy87B2bJUPF7yTPvUJLOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dslo2XEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dslo2XEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB871C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 14:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739285275;
	bh=mZOFe2gbjVJL0YLattun3fBHWYOjh+6N/v+UVAWkaZc=;
	h=To:Subject:From:Date:From;
	b=Dslo2XEyLE0b+38P08rZNIfUijRUI5Ttq68ujCL+4yb7DqnsEvrfTqTEao9m6qGDd
	 6GjvL3w5Xor9KIszS1eJtz1MvHEbJ7eFEOX/eYGj52tldTknfG4fbjJWiYHlbwCAAB
	 /RI06vyWJDv6ziEc3HhZJP9jat9kzNkcuLZxQyXMmZErebxFPcvoWIMiOYVpXcVfRx
	 8rnoi4AE7gv512SHxWK6ttXrpivUX0RzibgWzkqhh5XmDz3C5rLXi11Kl0QCxBK/Oa
	 rA0cL8ReeOFjYBbbQ+rd2+7mlf8fNDomjC55HcdKgSYQUc4QozYmvLjS4OvAkL/GaH
	 Bgc43efLcN0FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47193C021A0
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 14:47:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173928527414.31528.8393345769120378630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30c2348ed5da458239f381f59038fad2e8f761e6235a08256a9fdb0b566ead7
Date: Tue, 11 Feb 2025 14:47:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739285274
