Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBD7198E9B
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725533754; cv=none; b=Hv9bptz5jvhKLFc5rSu5aHIi8n/+h4EVcUWNv40x2ea0Rn3k3Jj3uDQ0Yhyr/39YYo+s8iQpLIrhDRD/VPSOs2YFZDU+eYrITZaFBQ5XWnYjmod5aXBTBbqT4JnzHkAC0l61eegpLs+nyWylEEjGzA6XughL9ule6tTjUcbLXdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725533754; c=relaxed/simple;
	bh=oMvcIcgFuh7QNL/rpL3URr0xKjPQH5MTT/K6CaeaYuM=;
	h=To:Subject:From:Message-Id:Date; b=KCWzaY/smW8GV1bLD2vFmK4eh//oDYP5jUnL0K/snWxU2H8v64ZGTR9g0D+RwoZbOgIKAxI419pZgr0prlGS5G4o6QcfCa8XD/CgtU+/sMHnFV63B+Re6AZJFX7xMkkwSjL6TtKiZoPv0V0GdxDSyn15+9Tucjfh2xY3jfWH/30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjuycNn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjuycNn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD984C4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725533753;
	bh=oMvcIcgFuh7QNL/rpL3URr0xKjPQH5MTT/K6CaeaYuM=;
	h=To:Subject:From:Date:From;
	b=sjuycNn0JmsH4q4k76MzjsAObR3N7y9vrYNDWcCJM1i1aIMc6A9rw123G8rLAi3Z9
	 OzB1XUGw1LEHCZKkgLdbddk9BOWWmevK2sntroYUaSadtQpKIpjnSXKKdWLrZ1g6nN
	 Y4XFVHXknYDG8GiyjhIZAaga23mUcLeGuL27IDyY1G3hsgJiV2o1Zw6ZhOFK+BlL1e
	 0YvSKD6S7he4wl/M4yN12G7WtSY2b+tPzJJD90FPT+Lkn+bep49MPa1F5J4icHwkRC
	 oNUzTV1QCCa54ihYIJoGB9M0IPfWJVxnrXGg284yIHUnat8RL/eZBSh3otFnki4hXt
	 VhIK/rb01QISw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3C4CD5BA8
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172553375362.11207.5243547972952218508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4887d0da50910ba846a8013229996094168f3c094433cbe569a7ecac55519501
Date: Thu, 05 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725533753
