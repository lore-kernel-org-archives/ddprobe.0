Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED95922DF8C
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741624734; cv=none; b=lcKYs38iBLAOrWqDnmcqJRb5UZxAjQu/z/349De8R3qsL06zP3d79tf3ErsdW+Z7R8Nlgx0p6NPpaQYb0uNCHAyX2TO7FsREJsPVVRXajlxfbrZanQlB9Jbj317jhB5b7wGZs9IHa4rd3Zb3990a9S6q9k8pq90+orwDjOkjaPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741624734; c=relaxed/simple;
	bh=/djVOQEjflzOhHwqAF18f76D15NS2gsGmT7RTJUnf1g=;
	h=To:Subject:From:Message-Id:Date; b=lxM6bVnWCWUJepEI109QDPKj7nIig1AzpUYayBysll3P3ukZab3yEosUuNzM/TrJI5hle1NjCcIMvIF4jXWKBnfOplP6nd9+y5gJ3jvlcqRaJ3bDEOdJyEfXcNlGpbIggGIsaLhhu8zDUIM0CV7L43Brx1xc5zQc3DXp4Z9HNQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBrCcbri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBrCcbri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BEFC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741624733;
	bh=/djVOQEjflzOhHwqAF18f76D15NS2gsGmT7RTJUnf1g=;
	h=To:Subject:From:Date:From;
	b=mBrCcbriE4pDsvbxQl1DAA6tstSqZrfAZ2DqLB14zJPTahXIJhA69q5OAS3Tkt9cv
	 pJQuxiuJtz9UCIccs21bGwd7q6XJQaiAcAy6qRHmgw4p2Bn5QjgtBqrfpDOaewYXWW
	 rmEqKq3Ro2NCocQNLIWzixY7OhPTLe2tSSAsP9qyk1fNKD9Pb4Hmb4jMsvm3LVsiQZ
	 m5ao6x5Hst+oXBAx9VQ04l+1Hju6BW2m82CgPlEiOH4Bu7b17Cdoqj+zaOSQ2IaDfe
	 H+rKA70Jv3BQzXi7QBjvE54re2PIYXGFnp5/wIdwNPOGocJE842NB+jzL9C/SP0E0K
	 O/o6qFnp5YsJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09DDC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 16:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174162473364.26872.6146228039113154973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8033be9d5aea4d206659a5a7221b29630c475e86a43ce230855589b7f1f47ff2
Date: Mon, 10 Mar 2025 16:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741624733
