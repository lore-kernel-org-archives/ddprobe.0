Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0221DE4DC
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750838395; cv=none; b=j4My2tT1R6GVspS3fgOy15Qgfddq9fr+Fx12Yx4fb8O60nZLsgth5sEsefVakwKA41Qc+kD1TtnXVtslkRwExRPfsp3gkAz4JgUjIQtos0dvrsi+YZ2jAgiRFXupTEeUeuQgkIF659sroTWmP1LAGdJOSzgn3VVAM3R8fhi8szg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750838395; c=relaxed/simple;
	bh=am/dnVB4VPU2Ic3XbUHJzzQWUQd19aYh/yQjsxgCEUk=;
	h=To:Subject:From:Message-Id:Date; b=DiPaXyy/I5G9EBjev47Isec5npvrldPQK+A/0ucu1yN3HIlIMi0HayTCgr2rvayj9GGbribQ/e1IoGDGiZan2dTsYognmOOh/6/IcIYCdfjFBTMEogw2XhY+SJBgv+owUXG81O6wZy2akjZBAwEPJur559iuLs1s+IhNWEx9OOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDsE7SzT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDsE7SzT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EC9C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750838393;
	bh=am/dnVB4VPU2Ic3XbUHJzzQWUQd19aYh/yQjsxgCEUk=;
	h=To:Subject:From:Date:From;
	b=NDsE7SzTlhTxTf7qUJpc1y/E9TISUuWVcYzIa1eXDe/b0ezgSe/aWbwzDxQJNJ9Mt
	 OWhrxUX403EOAuCOWJuFLjdXbP3FoNg7xA89bmYuBzaCjXXFZBLH6UCkEPaDGO0gQh
	 EWzUjAy17yRStF3jB+jAcHyc5NnK2+UiaG0uqxlAg9axvLVbxi4k7u2JJw3Z6opaM6
	 vSe2hrvct2TqKA9zcn0XHdgk/spDTgUZJyS86aviN9xfzgNrbs62JMrdPADvdAraPv
	 4s1OeWvfv4poDDX0buwkwVBM8sHaMyqZVysORKwgozEAmQVJtpOn/iLH4Fbl9jQ+L2
	 l9IwhII0Wz5SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED0CC7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175083839357.9794.16272482631206795156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a4f1916af095f39510c94ae0d801da73a78c3647b3d9f034621fcf111e08fe
Date: Wed, 25 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750838393
