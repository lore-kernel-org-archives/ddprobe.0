Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D6A3563D4
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784997034; cv=none; b=CVN2FlzwVxz3A5rLRgFFLdVuvb/x0hXCXoTlFiaDDfQn6BSQob1FNV/JH+iAt40NAW+iTDpsz7I0UmJpEhfmpNWtJ+rqkT4WYOHQJZnxiS+iwfm6Mx4yVgB/nBTs0WdJyarjpzFDEY8aPa/Zi9tM7GlU8qjQU2MAAgaFE9Uquvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784997034; c=relaxed/simple;
	bh=Aj7hOukRcl+mKYHFeYad3B56Z+l7HL39k3VV2FV/oxg=;
	h=To:Subject:From:Message-Id:Date; b=X5oazQOtk0Y4rrZx+E14+g8zMmwr4LNUXmXGS0SanGrbk/fA121/fLSpi6rvQ1GMBhoGQCNGDjkY3EHVWNoguCTq0rH7ybn0Rbjgfiu5O+S96AveJDySrchkMxy9pEeqL9RjN/ykE8Tt3OcI6C4mnc/ev98su8p2DaDbJeuJ0z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPXZASiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPXZASiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF38C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784997033;
	bh=Aj7hOukRcl+mKYHFeYad3B56Z+l7HL39k3VV2FV/oxg=;
	h=To:Subject:From:Date:From;
	b=LPXZASiFuHjbEmfZ7smuVhlBnrzmeWFBbyaB5pKC+lAqFiWPqXhVKsW9RxhhWNbCb
	 raTy2tj7vrj60FUuKRN5fFYvD3+vITstSyonZ5rjyL0T0paHyjsMFSmjXYqUbiEGzU
	 ao4KOcsvLuh+TdLqkC8hg9Xs1T7QT1X+NLhtJW7n0ytQo8tfj6Pbb2Wpjsh4Z3/tvQ
	 FjgHVE+k0+LX4H8EXVZReYWAbsjJ68nfd1HOVuNALBUAP2VYYnFd48HefxBKi7zVxm
	 3XaSZEkprt0ryFylnxQDA0VPd9ApDOjnq1fu6mejBoZlyOC0s0MWgD3vJUd94rz76e
	 5qXUv4QOu+Tsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8410C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178499703368.25929.18046823134937687764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd08b32cd7061083a4eb0804daec397b8305ea05aef68cc94256987ba1085e76
Date: Sat, 25 Jul 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784997033
