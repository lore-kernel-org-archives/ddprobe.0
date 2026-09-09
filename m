Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076C33515D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788974435; cv=none; b=N6ob4YiwGUX5VpyO4SkAWUj68u2p7VRCVvFwKtIu0Fgx4jOj9DTx6jKYfWArdiLNnPFlTNv6fUbzp9+C1fa9Rbh7O65k1KXNaIQ4BruFR1Wumxq1sz9cWVa+A1ZTcmCtWCR0xNIPQ+TA43Qhvlcd9gU4t3jUeGyLqgQrOXn9QsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788974435; c=relaxed/simple;
	bh=jsOLOIMK6ufrWn3W3bTcg8x3HtovTO7JwuCwK7Lnh7M=;
	h=To:Subject:From:Message-Id:Date; b=kojgUTUXWQ9n12cIWdiZhi2mUZ0k4wHcyw79XVPJbZD4DupQ4vQ9nFKeFEvhBUf6tBZ16wBh0xKzSqZsCydtG6DCzwSFSDPl5/0luCgm85znks5SFvJ1VDFJlXjG7FyYWawoMGeDTp4A2hU60z84lV89Rkt7N0wSnFPCQpOKZcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Up++k34R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Up++k34R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF9EC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788974433;
	bh=jsOLOIMK6ufrWn3W3bTcg8x3HtovTO7JwuCwK7Lnh7M=;
	h=To:Subject:From:Date:From;
	b=Up++k34Rzv/qu4XfCfAtyZJE4BU6TcaqQsm6rNiqcPmcPDro1fSIwRXkZADJ3jkp8
	 jbaXZDuOMWrTWiEcLTjbBc+pt9K7bh/qwA26OfcI4wAJNhsqSWOBAjSEU3XfEYqwWC
	 1eVlIkBhXnolbrvMQHhmbJ/29GVWZI47bTlJG+a1lS9bUUPZh8wCJ83vnZVgrf33GE
	 PwsGz/tf3hL7a5xwJ5l0Chj29WlWfa1xaf0OmzVvU8VFn2VizENUq0oW4MW0bBh9Ud
	 nkKoffl6M3/465M6CMNQFADrUcTPCsbGXrKe0SHwIwJinEelL0MBnJQfyv3W0M7Jaw
	 h7DYTowLhTIWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4638C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897443372.9686.5440485353838953142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0510edb6dcf68233cfa0e2f2b714c53eb86fb1ff51442b90f9dde36b7a48966
Date: Wed, 09 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788974433
