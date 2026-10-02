Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564CC32B115
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790951434; cv=none; b=Fsthzdw37mGUfDA6PJYFpPjcZNOmDxQNzjnoDrubx+w3auD1Tyr46R4CBEop2aONpI3rJPkYB9/z4PEe5Qj42ZcYSgWCLy5Merr3u1SrVx08TmUgGqBBe4v1RK52+mvdjxZC7cpPXrRMLODLAqoIGJZD/2S0amhRA7l5mNbPQt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790951434; c=relaxed/simple;
	bh=0K8ZGwSHfQ0P4Dy7hYXuvGsCD/pdL7Ys5UKVBDO78q8=;
	h=To:Subject:From:Message-Id:Date; b=T9o6izU2Ls7/Mg2RLBR8eMYwQlAhN3040JbqH3t7iFtcZDe5XkAIp5bxZQ51sYdQaCwNAcpRB8ZMzVgIc8MuAHIK2UPX/QFH5ii7gwk5PkALKsuOb/D0wSoHmzfIcFD33d8cdNrid5nc4PRb9+Bl6Ffl9aVVmOqJJPGuJxTZSW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNGRepFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNGRepFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE921C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790951433;
	bh=0K8ZGwSHfQ0P4Dy7hYXuvGsCD/pdL7Ys5UKVBDO78q8=;
	h=To:Subject:From:Date:From;
	b=VNGRepFj3zRCTrvchcRT0XUdDAyoBCu+6IVW8gDx4tAHk9o7MHoPXmOt5wZBd+i7p
	 SSCH7ZHkPcG1N5W3nmcvk+QWi6QdUVdh9i1jH+Jwly4z6gYAqGyQOKjDqbnvoCEPuK
	 I7sOAJeu1atZiRIRSfAlH3ZU3q9h6OdEgZy28LGd0WVuYxX2iv5GGF7ZAK7SoDgC3x
	 IXqeEr5S9/lUOBB2ce8T3MItEXJPOslliL041R7mcP27MFAkP5M1dAvOs3DuXuZ0QV
	 nuVTIx+caK6LzJlTuIRlT2Ml4AQTiM+L3hO/OXnhj8bvLY4GuFpFNonnSEUIHYvdt+
	 fOK8ZzA4dl3hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8F0CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179095143369.28403.4220575867931067771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde1ff73dcf09dede85164883a5f78bbd62ecfd875cd4c9f10491fdfa244267a
Date: Fri, 02 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790951433
