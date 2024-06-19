Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425BD5588E
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718775563; cv=none; b=RvSt0rLBifGRKMBTeUDT3Hh4HOwfIryFPuG7FmaoiGXk6ejc6ljxNe8i5o5JIS0iTkCEgTsb5vPved1a+Q3/3xVEvkzLXdPTyNU6EvpIbFA16wE+ZK7GDM9wMng5sGcpOnMHR9Ds6POrSyjHmWV60IHXjK1JelIYovdkpR7rjdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718775563; c=relaxed/simple;
	bh=LKuJOCWtnMrIka5q42ALMy6aHXJHQ1hr99H4nIU/d5w=;
	h=To:Subject:From:Message-Id:Date; b=f2Mh+lKv8jNs9443gfOPeVDb0zfZ9S1wzEVZzU0mThfW6F4BzWcdK1CNocQx36MB9QPlLWhmWu+sdEkdfr/ARxyyot34IiDqGDQe20PzYKiBOPS4qY5P1YJ8mokhDXsq9/kvWZqp4n3UEFa9TnQPkkOo6Slx5OC49czNJOLu6Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPnJGtgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPnJGtgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8B4C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718775562;
	bh=LKuJOCWtnMrIka5q42ALMy6aHXJHQ1hr99H4nIU/d5w=;
	h=To:Subject:From:Date:From;
	b=UPnJGtgBmgd/Ek/nhoJQsHfM4x02xCu/F5RmuHx2N9MAbUVJxEDiIX64LNdUNvhTe
	 9T3e8BDVKLwITJN+2anHra4Kztq8ifx+hWmJOiffV+1iPa2rxhFC7X9h2rRqWHV8DE
	 aV9ihrtlktzTVwaL6NBb45HLCjqZvjNvKD4A5vwmsmzOO8KhQJVKUpzw91wF+qPKZj
	 qxPprdD0FUByFNDkuEJRe/WjuCmMRKQGyN3y5NphrN5gWrgKxdPzSEdEI0C3tl5EXM
	 SXw6EHVPyDINYIyQBThhJMcD6mwincWiRYTe4RfwZopuhBVw9kPZaGvLrcFGnKZMK9
	 JhOgKdkcgE1GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6E12C27C79
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171877556280.13069.1534512903044410985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f773cd7947210614e9f87e1aaeead7a6cfb2a33d1f3e3d12608738cc41aab2ed
Date: Wed, 19 Jun 2024 05:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718775562
