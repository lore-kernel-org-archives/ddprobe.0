Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE7234D3B9
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762136994; cv=none; b=E2co64eEqBi6ufznA80Xo/nkc5yS1YaXY4+99bcXvDoVC+lAqFWjVX1GL64UiDbYAZOButhck+Il+5/VhpOe0o4gRXuMhmhqjm4fy+Q7wsTQxtm+WAa8WY0e+eYnheBf1017xxSWyPDw2NBVbyY9G8JC7CP2t/Py+2jf/OG1PV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762136994; c=relaxed/simple;
	bh=JziO1XhuXzQ22RbINcpb902vwdB85QmHsAOsDRVPSmY=;
	h=To:Subject:From:Message-Id:Date; b=iblay2Fq8PA+BmOqOSqOWPI/oxLKVvFom3IjS82p+vdg9KW0789yV/1Yf2wuvpD6J0hMIYuZ44oesp5YkLDU5I02czYwJPxlOTZpNZFbD5WbNll81ODLeK26DIzDcxPmlOWJKnhyrS+kgdy3qNxyRXUp5Y78tOZAnxekElO/2M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbzkQujF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbzkQujF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3736C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762136993;
	bh=JziO1XhuXzQ22RbINcpb902vwdB85QmHsAOsDRVPSmY=;
	h=To:Subject:From:Date:From;
	b=RbzkQujF2kExfBr1qzpHOjLX3vmWoLnP0sLeT1f0AyOcZKLIOo2oa0UQCzQqrWqK8
	 u8O1cOY60VEtmNK3PP/GNIl/prS7us6FyM+SLzPm+zRfs1zb+KK7AOPuT3VCjw7/aj
	 GJfrEFM+XuSuhlk084fvJGn5Gq17R5zfujZojNNxWC73ywbXTgWWUlc6xvAYnRnGTM
	 OZwAc2cjeSNReglBnnwbQDPbgvyFThJFwwTWZHMKK54LFjRZrYpfEv77Yqm+z7Pssv
	 9M7qtkoMNHFhrWM3Jb6f0V42wMw/yvunGF+UFQSHl7OnjnzCE6oUaCMbIk78i7O5hR
	 cakL5e6/aZ/EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE84CCFA00
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213699358.8872.6609682820052123016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f46308c8242f073d4d8c33e9627110248f2e0d993af02ff697f573c8ce07a7
Date: Mon, 03 Nov 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762136993
