Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6C5233704
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765170774; cv=none; b=ncXtzNw3qHiAszaQMpxCpOFXiJGuXFz3vs8N9d/H+TWu/r53JGSCbJqddiTl0qW+29HomaJhYf01TBFHAoYGgPS+X0jxfocOP5BH35BfsPK4HzNzhG6X+ug1QHyEtEqhXqvEYgRGxxMPRFs5QZpFOK2kHv1iCKCdkmHRy0xQo4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765170774; c=relaxed/simple;
	bh=aCzxqYLHZIK0uMZiBko8u3Onvu1j7phxWUS6Mtao13c=;
	h=To:Subject:From:Message-Id:Date; b=Ew9EcttDmWYg8i4EX+E++/2hkQtVS8+a0nwcqiN9PQvRYZGqBKKmQ4Hxt5Ux+7Wn4XNlue1Nj3nXCIal+M4svBumB8jJFhaTAJ2Oa3xcpVC0/QR8sXHaczcSUAbkZYajcQHLy6C63wK5ddCIHBUWNaja79d2mmvq1thMPAV0Fb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDkR67Ow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDkR67Ow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C10C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765170773;
	bh=aCzxqYLHZIK0uMZiBko8u3Onvu1j7phxWUS6Mtao13c=;
	h=To:Subject:From:Date:From;
	b=UDkR67Ow6DM5M//h2ZvlRFuwxUpfVyA0TYqk0WDJ7x6eEckq1WPAuit4eLtvKooqt
	 wwNw17a2QmvRxmmRfx7cLR8IKj/czUeP88wHWREgQLt2MVD/hyfiuXZce5pWlxSqaS
	 /nN7Kv/xi3IYkQT5PT83rdsNrqxQyAsq84gEgQzPZIwiJdDV3Qyc/V7d1hHAdnEAxj
	 xKCD+uA2tqmqPVhKNO8DcM5aYVhASecAliVIYgQfawCAU4Tl7lo6SJyiz01RwFjdyu
	 qAZLP6PVsbN/GKo+wyo8sUy+spunugTaoMokW3HG8aWohhhAqGPf8k65oc5UAAARvb
	 6FVA8D7JXyhMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96560CEBF88
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517077358.20918.5721358523153693244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e87c150b7f6765d5ea37f5b33f6d67411d01a1c9612f51c431fa97a947610b
Date: Mon, 08 Dec 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765170773
