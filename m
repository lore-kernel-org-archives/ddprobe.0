Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FB92F5321
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770968694; cv=none; b=puUHmVq1kffVkHpA/qNIlgowkH0biEioEN9UckfskIzUl+jbwQwkAxpIEXrwR7aQi+uI4AsMMxLlysVoK+sKfLtHAj7N82XwpO6Z/1C3tYg8tW/YuQuFDI/3LO5+pGohDGdrcCmsJXOOlP2fpNTHk+2s5Nouv22GIgOmcSPvBnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770968694; c=relaxed/simple;
	bh=IIvuomcHo0A545B8pY/idLogK8DP0ME9aKyc35xDhE8=;
	h=To:Subject:From:Message-Id:Date; b=flgpYjGbBct78w/aPIKF/vPnnI+IBPxzI7OonjUelJkPbIc+33iXBR5+QH/ohXjJ66Usw3oNA0WLkgrkc/BLkfrFadP0eBtJqVKiBq8iZqjciWidDrDhQwJLrGoxBcSwHaqZST9pf6mf2qUKAei6/tT4Az+wo9NYdB3lUD0Nz4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNpqMOGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNpqMOGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B783BC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770968693;
	bh=IIvuomcHo0A545B8pY/idLogK8DP0ME9aKyc35xDhE8=;
	h=To:Subject:From:Date:From;
	b=JNpqMOGcY3dba1hGP/C6GCTdKa2aU7I0TRC3SZ4L6xR1Eqso+2eDmXOOqHKEEwv2c
	 jh4gg57ILTdKMMyiaJRi//k0BEcfUSnOJ/ofbWGttjRb+SjON2f42fei7y4ag8hQu9
	 d+XpU8UjTOXmN/OvirteOXq3KciwujjPXWQtYbiZq+mgkBdu1AI6f0BkZLpw7vZh07
	 HCaSHejSWX+DRXtlQD4dVR0IU4sUq6gJHMXk8TWJsuAIdDlDH0GrCYS0cL9C8F3bGH
	 H6PRFZK6i4VmtiMVNb6RqH5gc8Ju0JefofdhEF28tcMAS43aISs6HCSOoULuFks8/u
	 avB6Zr3kmMk2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3675EF48DD
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096869365.3525.9084139815394992247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ddff7e9b9a82c24f4a3a430b5daab90a3edfd4d875cbc6dd7b104f4e8b32db
Date: Fri, 13 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770968693
