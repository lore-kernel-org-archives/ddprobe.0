Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA9F2686B7
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745848194; cv=none; b=nC3VdwpmKxap7R+xoDd9qVJDMYLoBhABwSuA+OtCDc0G0BAdsk8yEMOqd7dOr2lC5NM8gLgZwinuLoL9iakUpfuyvNv3vBMe5vvBIY9RIP1JqOJlaw6WyFB843rakEFqMJSqP2CggCilcuI8DD+1kG04CGpXiBpd21FdRiFHx3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745848194; c=relaxed/simple;
	bh=WKg+IwsHCftRJvJFjtRzdrlvq5Lq3nsmiOa2Knp/Trk=;
	h=To:Subject:From:Message-Id:Date; b=BiBmpVFtlSaw0Gl8nxlF0ZlhPQvBC/PRYFBeEul3S8VIhRaWcGyQuk65cdRoiPNKYxlzkbxMroFU6SvedGXyCVSpS/Az4vBr2I7HMerYI7lcGKbGVrq6R92dX4DYQ5phSsQYiNx7KZUAp4F6DkdceOzpF8QElMiR3D+TlzE+gMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbXHE3vu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbXHE3vu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24BEC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745848193;
	bh=WKg+IwsHCftRJvJFjtRzdrlvq5Lq3nsmiOa2Knp/Trk=;
	h=To:Subject:From:Date:From;
	b=HbXHE3vutdNKf2TtVGcqRKN/7I3DnGDxttzZWERCU8f7EdCQDrCwRFu40px2+Y4XE
	 O9W0qBjvP9Ew1EiArCPSBYSaobF38PHEPLwlRX6ipzOJp71xM3V5lyHNRg0ldJb3aG
	 msF11PKpIO0aNvo7TffHxr7Y6oyLq92n+XrYjQbWvP4CclR0PDmEl+N/OtRGp5NRiu
	 aS7hmTKk3wMxD70ABCAOh6gxgKswE1KIyyrvLVV19Ea+Fby75U6zeT16nVsgYOPW9L
	 ABmvM3rGBq/EFgk5cgcWMW9K5SsWL4FTajIICRHlyA8dB/1UZQjjzFYTokiF4+4lKr
	 IpcXxtS9LmKPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D2C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174584819357.8553.898884420256766053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d737208ca1849fdeced28861c43712158ae16fddb6dae17c97179b6fc15c8d7d
Date: Mon, 28 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745848193
