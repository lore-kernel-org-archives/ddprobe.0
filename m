Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C599C3ACA48
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778754034; cv=none; b=JweUHhOloSKKFf6CCJ3OVyhk3v9PTlFLMr7lPyWIdMQL+il/zoklM7/0ZxjOC/N70C3pMYT0Ko2cfOv6v9mbpWtMZv5xH04bUcWnvtLs9KRuFFkfdaxGW3uuubee+oVdnx1GP+Bc+c2QszOwswsZpmNUmMUWBLTtvwZecJlChxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778754034; c=relaxed/simple;
	bh=56rvtsA7YaseisjxF7OV0BAzHy4v2LDF2H7Wr+squMs=;
	h=To:Subject:From:Message-Id:Date; b=sNSxptsVQJhLiTPERwHLjpgkl4LNP3KTI0F1AXR8Y6ouZfE8cSH3w6EziKgBVtZWP4Rr5r7gVH2NZ32sfcqw8LTTXmC4NfK7rUHqJTqrL//CB8DTeTpgLIwqEYzaEFv+K6ykQEZjW/o1usVKNDUPQDFP/jYAQNcy7bnD/M8xI7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1pNfxw7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1pNfxw7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3EAC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778754033;
	bh=56rvtsA7YaseisjxF7OV0BAzHy4v2LDF2H7Wr+squMs=;
	h=To:Subject:From:Date:From;
	b=e1pNfxw7bCydtyBWpx46KgVMMZVQwJJEGOBFjLfIY/jQmeVtwjJY53DVJReQTlJNK
	 QLLeaCv535qlXJ/WBZZzVAdetGIhnE//FeeY+cMmy0hNHToXkeXNMwWgFiVyA+2XwG
	 mxawR8IWh4SV3J7jKcPetusJGohGmHPxAIhuRnutUMRzZrgWcwRE+YusfWefCcV5Ec
	 BHgsRMtlYk5CKIKm+Dx0EtbPT6bkNlnufx/ApYeEBa/sH2Qavf4DmjLHtmtK+de9wq
	 u+eeQsUI/iEnrZ5nPl01iKpmXV85+V22kjmBo+iSwBoARl+BCi87YPcRiQUIbZd0cR
	 LPaHEVpNSyTHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA34FCD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177875403368.16381.3858884562276242820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ff323a86c3fce75e69be457070feaa1fe1217aee901f543986199c3e3f0477
Date: Thu, 14 May 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778754033
