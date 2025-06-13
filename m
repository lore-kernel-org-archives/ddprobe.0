Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2715B2DA748
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749805195; cv=none; b=oBfAJzuaaXQXsYgcTTZ0V5tqDa8C7NuaiRNKU/IWpZflcGvNplhC2lcg26EB2lwDO6UG8EQQYxrEQtAuRjw0qBlFhVjksYInyDzDwYwcF20BHTzOJmRhboTBC6iT4WCDUWpWEOZwF+Bk0PEarSEqExllG1XaREQrqVtSHKGSGK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749805195; c=relaxed/simple;
	bh=f5JC213xABaXTpb0TXyMJJ0pYtGp61WImIxRSg6udvY=;
	h=To:Subject:From:Message-Id:Date; b=eu7afpTIKL+YUi/KlLbvyKl4F+WKVP6JnlUVX7+W5nFTfdztbn0vNCqZlgezqCUhmfiCSAExhZeQ/H8i9Eo2F7BoVpcsrJGU7B2wmVLMgZ+oJWYGCncc/vLWf5vQnV1sgQQU0ejSRII4QrW5CjF6+F+s/afhmAqknL2lDNwvyUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2OoPboc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2OoPboc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF2DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749805193;
	bh=f5JC213xABaXTpb0TXyMJJ0pYtGp61WImIxRSg6udvY=;
	h=To:Subject:From:Date:From;
	b=i2OoPbocMtFEKHtJO8Ush+G6WfvbI+fSSfzcMDqn/TUiXxtvl8uhtfdTtgotGOj4k
	 QA7gc/Jn8kZ0yTKKQLkldjB+It8o9xFUb3FHVd/0+jYkN1NnyO8/wici82c9vMpxuZ
	 uyrVGVjHJkXs3cPcDDSE3IbA7NaUytTyK9i+yy58WfLllsOf+0OVx5qpKRVwySvA+S
	 E0JldMw3ei+BrOad2Q7y7oB5BxvjIj3Rw9boqKq32R5z0t5F7sWiS2RR7nk9JryY2A
	 NQimrwFy5LXs1FrjgJTul780RYn0kAohV2jtnIbDt4E8ub1neCClHWVgfmsSyt4Zxi
	 MMSd+0EsbNqyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FCBC71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980519358.5411.1202082231379405124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd1eb1fd770067e238665ed3b6c73fe1557e8c948c1e3bd102b54fa0ded1d9d
Date: Fri, 13 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749805193
