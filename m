Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2191E529
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733579154; cv=none; b=oitj3qtL4WnseZHW/eSPBJwJwKIvjV+h8fKcXDcyZ4HBdDTLVyHSW075ID0Q9/NwWbfmpWWrWoXxImnsWfdhtlXF45UP+IaRS4fBqSNM8ZtGCMIZWyQdLS1pjzXi+oAR8DnKFCAcrF/RaPc49Fw7hh9/KnAVG81tOr2Fdhk5+Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733579154; c=relaxed/simple;
	bh=Vu8QPd1hgZyuk0V4flep9KrH3pZ1mC/aXtTjA/gUeRk=;
	h=To:Subject:From:Message-Id:Date; b=XbkJkeJHqJBE6AroYMT970QqcCGKws9jkXUJR4H/OjRbG/QTeTXsnOqH89XB0G2jx4sC25n6TVm7iSZ5+oM+cuDnrjEM6c2+btY7vpwAOQHJRdBHiukwpq+pB2jzxgCKre8kazkHeLfCS8UFiuvc817xow8kj43edIMrSdETn5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VC+gUYUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VC+gUYUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA11CC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733579153;
	bh=Vu8QPd1hgZyuk0V4flep9KrH3pZ1mC/aXtTjA/gUeRk=;
	h=To:Subject:From:Date:From;
	b=VC+gUYUmSq2n4D4IjFYzuZEFmXGlZ8qgF5/c/00O5rITN/HBTms8SHZIKg1nbL6Pm
	 yFl6p2fFyctC5Cea9Zro9yq7ZFlBa6nn6M5sxuAEW+87X0Vr7GUYlJeg5Q7Nwn9xtz
	 CjJo6tzpumrhS7A7cg4EdTXo1jovBJR/Ut70+J9xpFgMFBecFsHdHVCM19co5GEvoO
	 SNtgefJ4ZdpIVS9QQKaPYJenjoc+70Qvv8yOheHpP1n+hB/0bW8iOtqb2ve+w3GCUD
	 mrz3WQSDbjNVAAqTs66J+Kl9u82NzvupMuAXICrw8hpQFXzmeeHjrqOVEUtLaxyQz/
	 2dyo8IWhULbhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16E9E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173357915363.4931.1861718127317901603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b3f0b5c9c5bc5351cb190f6bba4d52fd43e92faf95319eea0e57d65d23c0ee
Date: Sat, 07 Dec 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733579153
