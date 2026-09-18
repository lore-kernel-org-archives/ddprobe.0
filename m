Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4143191D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789768834; cv=none; b=ig/BRZt/BCiTzze3XD50Pqnv5+P/ejUOE4dIdJwUnL5ATEMh/gBYjprfIzzArxlN1xXY5EW3PQSEtygjj+obEbLwcWcx/3Byk7BgMkLAiJ+dbV1OytlwluEUitck1DBjS7DLMRvA4lgvP+jeqEAi3UE3Z9787JomADWQsWlOxow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789768834; c=relaxed/simple;
	bh=w5W89tciEPaNEgwl2JCMKps1NLFFyyP0yy19hrX/ejI=;
	h=To:Subject:From:Message-Id:Date; b=PcrPksy+S0bsPEFYD9p3GtNU+1hP8FQyC0iQLpder1FKf4ga4AAi9ZhjcTcwk8arGl7V1X96lMk4xA95rAcyfD0+2F7kNiYcbpjJR5pO4l7wK6m5bfmK2wlktURkVkdsHZNYajIakyCco95oRJJkJEu/hp0APoZaRX8H2ChX8JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PY2o8/nG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PY2o8/nG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA946C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789768833;
	bh=w5W89tciEPaNEgwl2JCMKps1NLFFyyP0yy19hrX/ejI=;
	h=To:Subject:From:Date:From;
	b=PY2o8/nG8zWY9r5j6rFm9x3TcCF9fbyYcz+ttRw7g2G3d5w8IiN6JYXkp4tF6NHhg
	 5M7c7uBmBkqMbY18kAQeu2bNpcHrc32LY5Yh6O/KR3sPAK4MOgW9zK++5iXAY0rnEC
	 d6zkC23lZkKmfYdY8AJs/m1BQ2BNEOacOOQ+arSTpVgAFu9y+ZV0KEyQ1kbWPUrPSE
	 XbHLzJwM0Yon+UImmT4dirj6TLtmZzNYw6h5g6Kv+/rk3sEHLhO195TlZMEbIz4/I1
	 YHQGN5bo+f09Z5xH+Ueyo9ob2WgrS8VLzhbie2f47EqbiYCJuzdoX/freZvpylSjZr
	 icI7JFK+Wkb6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0142C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178976883368.23232.16085893826586716672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3efcbd4cb303f50a515bbff829c35bb55f81f0be7ff34ca253ccba453c6c3487
Date: Fri, 18 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789768833
