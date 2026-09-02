Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A55142E42B
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788390034; cv=none; b=n1/l8h2Bddh5GXKKdAhauoVHkDg6rFSoCFK3sYV0ZSPIvlSUm7VNdN+JuZHRoARpuQ/L2lg4cKvFCnk7/9RmruN67BgwDJ7C5lFPF4B6gsvrexM1NrJoMiq7ejqiXbe+qC0E83ckqAl9IpqpTaJOTyplPPxgImo4G4Yr8m172zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788390034; c=relaxed/simple;
	bh=lb/pRq4xKU99iCV73e+LcIgZv191y5IAgD3V2ugctmk=;
	h=To:Subject:From:Message-Id:Date; b=j/jHE9uDJePT0MzUG8QtB0mDicWeVKbrC5xByyuC3qHbVvHgs4h3DVCpTcxjs3Nz5p3j4F8mZd0ZURdhh72N4j1BRrAuaKPnJ9jQ7o342godZjtytAhOhVyclEsJ38g4wgZpHJLwytANMH42GdNOpGJy7cYecgRMRtS+UMCjPMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qY438uWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qY438uWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC03C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788390033;
	bh=lb/pRq4xKU99iCV73e+LcIgZv191y5IAgD3V2ugctmk=;
	h=To:Subject:From:Date:From;
	b=qY438uWhcHHc0cbfE095WLafZDrAlvj0ZwlUkrq36Y+3ZiL65lnI386IM+9Mp9qjJ
	 8UvRKn03NImh9Tp3KlW3O3XprH0aFNIPxbgaMFxGt0BDdH2r9Upq6OnEWaExGQjgHn
	 4A1JP/hD2YTZwVOk0AmvTlQGmjGr5Choj/D2p0Inp3nnX503Ri77Z3Gt8KWWvhJm1c
	 SwZSFlQD1NUTZgjn6OV+tkmcTFvC9Y5GKlqVK9tzAXUZr4vz5PI2D9alBkFAuiRqyi
	 PV8ucHkSuHxwOE1zED5tvo2w5B95PEPpZJ0oN5HJE5hP7FRmnXRgAm0z4JCvFEoo6s
	 aqSrrD6cqz9yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A985DC61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839003368.12070.12583537299652226783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f5d134058ac80782f934ead5f0889ba8bca049d7d44561b0307fbeb3203b6d
Date: Wed, 02 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788390033
