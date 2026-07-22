Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4022EB84E
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784683714; cv=none; b=Olr/5UeunNzUWyK3hUDtUNzBnU8w04Ix1PiwLBmCreXm4VmUccyjMXKq6GXZAiW04bK5qu1W37zfbiG6m1vuueHQqUMXyUBi+c/kj7yLBl6XaBEOwMOj23y0WaQbiGQGzTDS/WM0NeQZho0uOgzxyZCuw4zI7XlTIQIxJpKHIyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784683714; c=relaxed/simple;
	bh=0+4V+abdbwVAbhoRjM9Y5iUtMRL/Ij3+M2GRjCypBj0=;
	h=To:Subject:From:Message-Id:Date; b=qdmEfIu8D1PWfp3Z3EjSxNoMm4riPdcfB796mW8RP8NbzsrrdgTvkP9i3A802o/rfhZFP6oDVLZ8MWIWtvEEwYA6vjoFW42IsyaQ/9DcwfmVWR5DgN1kTExQyNuvHrSO6M1GDBy0Y9YAKDbaiTARQbiZ0b2sAGvzkd/GZduv2+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+ws+Yhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+ws+Yhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6D8C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784683713;
	bh=0+4V+abdbwVAbhoRjM9Y5iUtMRL/Ij3+M2GRjCypBj0=;
	h=To:Subject:From:Date:From;
	b=V+ws+YhgUtuUaF6YXdn71wR2JsLEdALqeSZOyUMTJOrec7KmKDK+HdNpTeucaUoie
	 mh3jf/+jy4RAVx3oaXR3wsp0/muCtVZtMtzSND6Vhf1zfkB1S7UYPEcbqyTN+tL1b0
	 pQU5UaqKdIb9+jXdNbQ09zp3kGrabYmUlK9m2mW+cxCIBfKugZBuZkaExUxD4NuFfc
	 YveL7V+ZwBtJP2XuCEh5DnvwlL3PA0J8UN2Y4Fl03cPlVaB0sEnMJwbY0RcmcTTJXh
	 iz43tUGfwrXGMv46TwFnJcR/TTo0aHR25KNtplg0T59WNyAc0Ro5+3TcugILYc5dPv
	 NsjtZL2CztEPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9F1C4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468371369.30938.13201586021050679616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d31bfecba4f0b50b132491b875059a81fccb04a4294744e660e0d50517a060a
Date: Wed, 22 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784683713
