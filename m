Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5677C1714D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 05:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739510934; cv=none; b=Ng7wamKsLATHUJCUYQZTEoCs7fOSVkS9EGBwWH4MSe8K5p2Pjux0Rd+xSP6llPgwd8yrXgSp7UiLSRx0t8csWiBOVd90gQ28rBxjQeFlLJmJAmHXOnh+iPsenvFBh7ceGcvOVKK+BYFhULGVH5dUlL0srA3RtzwWnhnArIiBxJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739510934; c=relaxed/simple;
	bh=F4DejxyvnPV4m4ov7vHlEDuQlE4a6tuBznJ7Y8rVlME=;
	h=To:Subject:From:Message-Id:Date; b=dWuft0XGsSh50uje/HjAnhLJoUQmTYdHTzLE1r6u3Wi+F1+889C9JkgOKoF8yL1zrR6NUZKReRz+BvxLq8M9wp7j7lOOpuXCrXvvlvoaDNrZzV5FY2ZrhGlTQ/CwsOCKngQvo+djoKqQXv/mXPi/Xx5X8YjZxolfPKH0Qn4h/mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bs/syz9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bs/syz9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DEFC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 05:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739510933;
	bh=F4DejxyvnPV4m4ov7vHlEDuQlE4a6tuBznJ7Y8rVlME=;
	h=To:Subject:From:Date:From;
	b=Bs/syz9qj1QOJ6qoPtxligyi/4wfn6tJjhAaoEjncz5YkqxMIxe9lkfsTxCKT0rEn
	 CmxqGJ0snj/ekFQEUnoOgtx+DdjUxQMMAsw7MdtbaxpCJxX49V8CFRqHwp0AV3lOPR
	 nV51sjTxAkm0qGDobxiZ43hIhyoUAgn7I9mBRwIPymmz7dndVf2oWTTfVpRcVPWQH+
	 naN2Y4AnAx6/O0RWK/XD464s1LB9t1FQRktDR+GL6cKLQOUhWAOXEc/etSG+UetVHF
	 Jr7Yz96SxmyFHbb8YnJjxPS9n7fCoQTLG4Xou3KW9wc9cklufYtfcLA9vq3K+E1751
	 qstT759WEnDDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6152C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 05:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173951093364.19202.14230207720693156648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8c7eb90eacf406aea365343c6598c9676ee8dd82c843006e0277acb753b4be
Date: Fri, 14 Feb 2025 05:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739510933
