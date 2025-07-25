Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0877021421E
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753413596; cv=none; b=MlRsPecQO+nR+Lmw43vJ+0Gp1y9Inv5Wmm7d+Pv+7GQrA5+tC7RClsOCIUNW1To6FO9yVeaPGv8OPigUCbHH7/Od7NNmY82suHgsmyy/NI9MVmBm/ZRjMDidIHxhFyApMOmNNqfQnOqapuyOs2zWvQJ+qhxwUfwhdvRUmMSe80o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753413596; c=relaxed/simple;
	bh=2TapQ4ohEBqCB8ipQGOpEZR3r9GsV/FYFglhP1kb2OQ=;
	h=To:Subject:From:Message-Id:Date; b=qqy4DVWEWJCk0llPgYP838e+NcLUqPYd26i9evzcUbJoTaGAz6k/enoglEOwOVhBFh3uJLq8WvQAfxAqybr8jpHpbc/N7D52/mUbLm6vv9ZyIGGgorr/KeOx2R8AIrLcz15DGqnO+DJBzy9JUfOeoADrQFDAzD43XFEm7prAE9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2sJ8sAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2sJ8sAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED00C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753413593;
	bh=2TapQ4ohEBqCB8ipQGOpEZR3r9GsV/FYFglhP1kb2OQ=;
	h=To:Subject:From:Date:From;
	b=U2sJ8sAkS3xVpb+yyyo9h8nlcNi5KTWDoXfbGyx6j68Do3/VdcXuvMZQ4hi5NBeVu
	 Sr7PFvCNx1WUlMciP8Rfg8h/4W0b7pjufgEM4yI+JabVacKIQ0W/6bv1HZ7KEkbrVn
	 1WiQ5E7kGXh4wWs+RDF4F5Call+fjdK4PYQ+v9GPAC/bpQ4Wo3KH8cC1Hxr6RFDFIV
	 +NOwaOw6bLdI5DyLyn7RIjTUfo1ojjGO17+nCSXz6lAAM73fuf4fgTf9Op/ObnbNcb
	 R+6q3hPXaLfqhjv09w1O+A6evyCJnbaXROf4BefNFUdFYPP3rpIEzj5vLFMoE27LMO
	 S8Kmsm1F7vT0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFF0C87FCC
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175341359357.2216.8205361005395626869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f0e8a558acc1faf5415f5f7567183278990a511377a986df1d1ec5b451fd59b
Date: Fri, 25 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753413593
