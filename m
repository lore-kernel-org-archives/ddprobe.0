Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1751E41F5D7
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789110636; cv=none; b=MPeAxMu06Y3inPCLXyAaxgQVAYrC3/feaOLYC8LOOQ9T1JuSOgaDch0nofzjChQpn5uT+9oQY5t3Uo18HOc2rkpZjujuP+dAOV1v9PbRpTQrh4jL3ll9mwyOGfkZvUgFBjcWCUM6F0Qx72/q8HTG9rUeUEf0nyh3MpbsR5urJ7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789110636; c=relaxed/simple;
	bh=xaBABA4nwOpvvcPVXqTWVVoBFqmYfK1NpJBR5amgQ4A=;
	h=To:Subject:From:Message-Id:Date; b=BW779G/mCzzwdeCC0toM0SEE+yuHu6xSbscq0RU6XIMZ4nBA4QtkKJq0D2x0LVQa4+IBzZXrGHL9iI21iJqlIiqs8kBNVx3L2gUv7GOeJNVey4qcATYEOn1jVKgV4AxTteO9yRnoLFBNgEYQu75WWHv8E5iGk0iHAYzCF6jTVR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1PR858X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1PR858X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07F4C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789110633;
	bh=xaBABA4nwOpvvcPVXqTWVVoBFqmYfK1NpJBR5amgQ4A=;
	h=To:Subject:From:Date:From;
	b=m1PR858X0NpdOe/WwnSp1SNkh9IoYYqIlspGADjFl35tg/rX3L3HOS9TTySYVfWwa
	 SvRwIXy8OtMqfDEwuNtYHTdnqmj8B2hc0ICEgHoRg5FkVllcC4E1OEIgoUMEs6/Cfl
	 GrlU11v6hGs0GOOZ10SJ5TLkjbtkmfa6daQJbw/19YSbxeF1Pg3kV/qQsB8rhAS6i6
	 sCn+wgFgXjAHJcRX9kc6sZ3vKmB5nPYwDOE+6jemIyhdWtAL9K6IimFMuoABqZ/aeD
	 PxvenKO45rSRJ6QGaCS+e2f2R3FcYgunS8XqGTzsAKMHeHRGReJz5ER05pbvRnBub5
	 I14lPjLZWfs9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC494C88E45
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911063369.31212.4657010353799481767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a579f6874be252d3586ffd4f57dff15ba96f1e9cbd4c7ee54c5d7c3a55cc472
Date: Fri, 11 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789110633
