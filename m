Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2476663B9
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728537354; cv=none; b=uZlocyLfESBh8AZ52JKKD0/4nxsU55rX45PgTc+KDO74xQzdZvYVJH1aiIpOkMdo4l2HQZMZFyCtD12o5iLmPLkdiCLQb77rBppEH2X6CJS6yUpj/NPkuYRtvbHZwnjkpymqcui3KvN/YJu37DL9iU9M34R3zVP2rNcGzwBa/mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728537354; c=relaxed/simple;
	bh=DSDPXlHiB00B21sxbJZmJrR2FAZgXT/yHt5+HmdHyQ0=;
	h=To:Subject:From:Message-Id:Date; b=gcgTzQ9jWRci1s+HtTPePt7GQdX57gKOV2Jc+Ch9PG7Lv42r4YFotkd4WhKZ0BEC4zucQOUlN9amYEPpWr7Rc1lS7TuP0ZXibksggdazBigGP+ATw/0vigLdo5WAoOU4J15PUMkEb/9412Feu/qfOKrKaFHLwo+m/2/K8BchR/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWtaML2W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWtaML2W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A42C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728537353;
	bh=DSDPXlHiB00B21sxbJZmJrR2FAZgXT/yHt5+HmdHyQ0=;
	h=To:Subject:From:Date:From;
	b=NWtaML2WZHoyXSX1ialKRGpOt6tIszhCQK4S9RXeETHBOwlNWlqR2VSAFlDI45Kix
	 wX753JWZO4hAcxBSAObEahl6jC1oVGoFYItfDeGxPv5gQLFrGGux56IOZuMErJ436C
	 5dDIC+q4ArFhNSgQW0a/frZ0iIjRhAxP303NJtO71uZxUSOZXbv2GHlL5OU6w/FsuY
	 3KS6BB7mxP+MXK+54qIOPBVWjS4lC7lDKFoKKo1QqKkrmiW0r00skEevtfLGebVSk/
	 AVxG+YS42ySzWGLgyj6PBw/Ix9dInwX6NpOZJzWad7jxitBW/GCizYXHAjP+mTPoQC
	 rhWoQ0PC5EWtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7AACF07A5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172853735362.21677.1464411859221835028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277d5c3d901c836e76ebe4e190f192ade5a2c007db717855f84495b78cb12d29
Date: Thu, 10 Oct 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728537353
