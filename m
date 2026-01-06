Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B1DAD24
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767742433; cv=none; b=RxEQ9Lv+GDZLua3An0t3mMOy792vmElW2gFCT4b6hCJGuU/mWygMVanv2L5cKievNbrWI+6zxmBEdXu4fc79lOc9+wio6zZA5PVYEi3yFOR8+tcAKPf4RGxCtaTsa7cskkxSC5r/1KsOqtrpjM5pPK4+DSuWUVqIFX1jGkfKadw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767742433; c=relaxed/simple;
	bh=ViZAHSAGR3R9l4jspjndw29TXKBmr7N3XZBaxI6F0No=;
	h=To:Subject:From:Message-Id:Date; b=m+HNkis4XHUpIesDAt89aLkyKN6qWCEUkC1/NejhKZyZbPg1D6+CWL5pvEW/e371vMbzVQnVSofn/Cyanp6LFp4ePUd0ts2mcn+1Zp0+S/T0GnVveg6WLwl0bQ6hhHTsJ8V6QrIpCOnt2ml6+A812/OlE4A6dYs8esrZDDgNJ0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1wAHVwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1wAHVwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EECAC19421
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767742433;
	bh=ViZAHSAGR3R9l4jspjndw29TXKBmr7N3XZBaxI6F0No=;
	h=To:Subject:From:Date:From;
	b=Q1wAHVwBmRnXrBCvP/KlpkoWCh2DgUC7d2I1rf+/s3ZUz+zeBHfQYA0yh+HujyN5b
	 8lQMma8gER1LKWdYCyOQEid3SyZGGL0iOoXgqwGwzdFh80lD+eKIjmdW5N/jvs13Z6
	 DS7SwCyEmH0a6G5O1nzbuxvgL6vNy+u+Sjby2avedjthVxRNXextIMPpEIqvKii4fJ
	 bv2ivXUssn12EUBVQqaepn22ckgsgPvsd7Oq51tPAqZGXtDj0KfSv+5l5ILRKer0Lu
	 yw31F7Eom8BO1JGZr09N9QmBcXxlwXQkEHnIM/lAXMVX/tOPUD2zUA8f3d+bcgZqmo
	 516nE4qVEx0GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91125CEFD0C
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774243358.6498.7664308897702228736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7194955577abc8dcaf398754be9684fdfd2b2cb860899308ccc10362d595b450
Date: Tue, 06 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767742433
