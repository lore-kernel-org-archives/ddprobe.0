Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E6226ED46
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792293034; cv=none; b=bEOMgmfUp2hAFfCSy7bjKYo2kEtg7rzTHuJwKGgIcTK9nbEj6BKb5GfZU5wAiAL6YTjBsEAE4avGvSDU+9DnR9DTYd08FIKp+PTdU7SwQJaT81ITNoDk8i/O2MYehSVytuwfbYbZmoABbe9Wwr65yIP8bvBK8GVvnU5g4uc+lfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792293034; c=relaxed/simple;
	bh=aFUCWQJ0xo46o20Tnoq7Bf6LEDQnqUr525kiYA+H/34=;
	h=To:Subject:From:Message-Id:Date; b=qhIKUr1GRm8HVnQkF2LhRIM/VZ5t+Eix8mWFm89YwZoWvqvdXCKu33YqJc4i/qqC9irZpdwWODpjLchgl20eZw0ete2BQ638zoSMqeGRQN7fTKdbsQGUWNM+YyYxqJ3VgCghYxtCAlMY+Mj4GAHDG+tc0P202psCnXxxhJj5sJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXj8Q/lE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXj8Q/lE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93ABC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792293033;
	bh=aFUCWQJ0xo46o20Tnoq7Bf6LEDQnqUr525kiYA+H/34=;
	h=To:Subject:From:Date:From;
	b=eXj8Q/lEKIqtKIPUCbddg0xKqltoMKd0j98bNMN0EiYcJMMa1b9d79bN84X32orXc
	 REaQcRJyk7LldBFw1j/7zc4oNyMfLOELC6vbbAk7RzhhDOfNteF5urDpB9aOeCZjvY
	 XGg8Fa/fWyHTvANlK44g1NAtY5dmZHbQiy7qpwY1UvhW0dNi7QshOX8X25wRnuZ9u2
	 ZxWUWAHySXVm3n2pbev9OBHqmN6L15qKScsr50979iHP+AoeImZ+KLisHnbdi7ZG11
	 z6nFjp6uuIvzdCekA2J1hqWwLmpHsnMx/vjisIx6W00ay6NjJZFM9xskYcrBBY6y62
	 T1MJ+bqo+zP0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C31CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229303370.7760.10927509175109821816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed9c00e008a5db4bc3c5b0161984675446a2ed60dd23e635016122e308cb0ce
Date: Sun, 18 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792293033
