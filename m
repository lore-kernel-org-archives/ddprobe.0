Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3049D2BAF8
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746295794; cv=none; b=C9KI7fAdd4pJ8Uzn/WaXp/Dh3ftVs+dueLCrUNuHO9IJySnsS5uT0lSTQYPYWuOpEStOh+bkV9yeoif7iQN9lTwVtX5/Ku1smfgfcK/chk6rJWlkXhlOHXca6FcKbJwREP6KJ8pfH2HSA6MeWSi0RbEwjAY0p+tRI0s2NVmncA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746295794; c=relaxed/simple;
	bh=sEKn6y8UsXoPscODv2adtfFIdv8SHvZYSpufz0WcOM4=;
	h=To:Subject:From:Message-Id:Date; b=AXNcGoa6cZJqK6chEqU0Ckgb8EfqFAIw0PkOCTxSom6o8eFiB4KJO/oSQvwdNfUXg6/H/fzRHvCPtraNc3OXAj+dX2MUIvUyx1e/4QNa1FiupgBPWSuQiwtuAZSVQsZ5tSeDpGKsqhC9QyLg9ZWvHeH4jyi6YE8h+SS++pTE0Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ri1EIi/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ri1EIi/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1115C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746295793;
	bh=sEKn6y8UsXoPscODv2adtfFIdv8SHvZYSpufz0WcOM4=;
	h=To:Subject:From:Date:From;
	b=Ri1EIi/oQykB8MPqFHyhiNd8xb4ePdaUYjTxVqGDRnuohhq6415ItSl9wMHIKDbi7
	 3l1UCH2qdW+Rn9R4fkbx2QbMDnPwIpx9iUFZ+RDSyKu+jAdFIwLBOyMtxgB64ZxfiB
	 aGn+Zg0QVwNATjBgOfwbtFW/mbGf8qNEHhTag4wyySBKHWWM8FvlgVIxnAvPaxn0gS
	 iEhsjDkgL6qXTXXy7DnJtnmvV4yzCFqZgYFwQ9sSBF91qmME6USKbs08j3l6M+x4eM
	 VxfbXuJ+vZJRCRTJvWlwyjAcHnnw1Z3S4RJSOrBkGs1+hKh/edzeVmx2adLhyTeMc3
	 CljLgEoFPGiNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E077C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629579357.10183.7374701753435379879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be416e2765cb4ee92f200c7a1c88f5efb0484997d59d6c4bc99dc6af5967629b
Date: Sat, 03 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746295793
