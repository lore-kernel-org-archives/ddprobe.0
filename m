Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6457B23BF91
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790739034; cv=none; b=hTG1j+r5d9dofUNyCVs/edwQTxutsHVbdTu+woGlFgUxKpxgnrMCEGwUi1Ys3HZvpnWBmyYj6m1xvbn+Rs+KNpfspqkAZUV9im99JGv2KC/1OsE+mf+AB4rtLtu6Eh/SFTxcNQJ5njJH7EoXe1iiJaMzIyiaC1KVi5fQ8O6CsLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790739034; c=relaxed/simple;
	bh=yz9lGZCYHKWyNtbP4dLWfhuBoiQKWxkD1e8fOIiWIT4=;
	h=To:Subject:From:Message-Id:Date; b=J4ij/oFKdWPVExtydPn961hBqyFm/izsKSsEXQBzBv7Qel7108A8joGz4tSCFyBjgunFjk4qFJ982Wnxx31EGCPkBE/q/BEDkjHfICM4oJJXsyPn8sXWvDNitJUO0t7x/7XuE5Oig8PIKpf6MOjt3biu6P3QdJSdSmT1K7Bhitk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUetw3B1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUetw3B1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEA3C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790739033;
	bh=yz9lGZCYHKWyNtbP4dLWfhuBoiQKWxkD1e8fOIiWIT4=;
	h=To:Subject:From:Date:From;
	b=QUetw3B1Q6mLIrs6A5KmZiokd/6qLJaKb0hT1xD3PYQloH3jsVjdus3tK3TNpMq9H
	 KnoJCt/Ir0Q8eLpaYmWIRx1MAUQEKv0OZdvn/Te9lZ+YilXiI8CWj837o70AM0fdBG
	 JsGvvSwweGRYgFrZty5REs5jMzVWWz+f3mZ+MK87SeeqOrkVJxS4gVvz7l7YIBA5WX
	 e8VBdiW/Vwb/Dmn2oBJ1Fs6DbERAmAXZ4BRQsFDrApY1YC1JnKyjlgNg72KHcsfXkq
	 wGnXM/sFhg5zTiXqYOi85nHRTonuhoytEpoGRx56SkAUVTzL3mrkXhWs9CIcG++1bE
	 OOX7T+KieD66Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7374CA5FAB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073903371.28794.5201349350880819307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d665074a19fb4a28b4d6d1e5b5c70f162a52fc09c5f54f5c33f9bc4dd8c334
Date: Wed, 30 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790739033
