Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8994135F161
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786696834; cv=none; b=XHf4apSMxU+7Y+nQUlJleU35YE0PksXA9a927saljogQXQOkkkvDy6+PgzAp90XpAk7pPWqEd1Z+ljmyFRDbX2MpZOXym3YCOy8iml7IuhBmDEFDmX/Y0HtkivZA21+fHam0J3Jv2MTJk2FRoJaVeQXveT+h7wvjPyQ2WqH8xRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786696834; c=relaxed/simple;
	bh=oKFAxnN+bsKIaZgfiyexKYHa3yL25bUJErwYfqMMW50=;
	h=To:Subject:From:Message-Id:Date; b=fBnwdDwHCoK5y+gEZit7CCTfxlQh8cjHaLSrB49gvKqjiBlO/3H4zc33vEihvdH/HJMU0SI1dsOYCJ8eOe0o2ZEdqA3bQGvFRm3KpTjAZI7grK6TKaiIOBIMkVwmgcy0IWku7RXNUkP0/syNwZUdfr2+x3SGCeVSPHBUsWGBCOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLQrTuV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLQrTuV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9B0C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786696833;
	bh=oKFAxnN+bsKIaZgfiyexKYHa3yL25bUJErwYfqMMW50=;
	h=To:Subject:From:Date:From;
	b=DLQrTuV4Rj+8812rgq55mV1RWHuTEueRcpdijzt+VnrKC4zaNJmryW1ohNINkUvFc
	 FV3cqU2cNyd83beFa89ui1BGStVQIj/M+4xQY8SZgB9Rbv3MjYBhF5987j1we0moUt
	 tEnn+FeM4Bhavr9WpcTmtTI1IMbvKaLrK2uFY/Y8oA9STyFIJ0AHjaKVbf8cOL+lCm
	 2q0YZ0Wl7DLqVxHL2lcCGPz/GPXut6YAtybOvpsGHE7ml/Y4DVoC0XjyXxBlsEXJmX
	 NwYM8ZaecpN+YNs+uMiBYQiz3zApzrhW0mHxozQbHSDxv+tbpiPVRmLwrrfdTho7xS
	 QtAr7d4q7sQhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C9CC5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669683368.8360.3080944796225417604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46eaa8329735fec001bf9ac0a25dc22403a6326dae396ed05fde33fb296c9f5e
Date: Fri, 14 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786696833
