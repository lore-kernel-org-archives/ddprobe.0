Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6428B17E9
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 02:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714788743; cv=none; b=C+jz2vRvdr0OseNImEJwKWMBUINnXroIcMUmuLjK1HTYzkCEVmG9hKD9AXb25GIm+pNuN3VSxNx0UuSIVPIHX8+X/+Xx8fCLSY9ee14vFl32DZsZb/yogyF9ruTXFj642BrVsxuEWayLd7sJ4amBFrwVhlMbkk0NFwxQATtxXxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714788743; c=relaxed/simple;
	bh=9h5qLL5QWa8lR5XQGvgY7zvDlMP09+XPGkBYVAqS1yg=;
	h=To:Subject:From:Message-Id:Date; b=O5TYwqxpTZVBMC34//biwTF1yS0Y9HSb2hnH9qRwe9Nwc9GYFDdv0YRjRYEhxcbw0wGq/yCz55cVIjUVbY7esWLyPkSMwi+lhkKbyzpJbo4W/kQZ7N9etCRh9e09DF5BG/XdzdnQr7RC0Zed5yQvw9mHvh91SlTOWnAjzhhyw70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSv4IDp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSv4IDp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2ECC116B1
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714788742;
	bh=9h5qLL5QWa8lR5XQGvgY7zvDlMP09+XPGkBYVAqS1yg=;
	h=To:Subject:From:Date:From;
	b=tSv4IDp0HeZoJJRiav2bgQyyXF6/VYMUHoQFFDrA+e+l1vSXqP0fvuXhm627+ZKVx
	 mB7AFkIfNcbNSXEnbEYoGXIyUh5/yZH4Nb7Lbc5G+n5TUZa012b3Zn6gDt1Jc9GGSY
	 HmMOIu5cuVnTKC3Qa2kkg5E9/GTru+Jki0a9S0RdzgXXPDm8IwW+bL5pRf1u0xw7xs
	 aRxYCCyYsdiztsX14H5XK/RiXL45BXqvUJ+DeuOZhl82qPj6eL9fWzKdsxfqvY5Kc2
	 8RVONly/6oDVPze44kufzH13r2fZqBGuobj4gZ5dtnSGf1A+9aD7k6yZyT/ID3piUw
	 7I0FepQm7N9Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA4BBC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171478874278.25522.8824839563948580453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7392fd6a30eaedd23beedd22d5c897d6e10c5d0a2245978d53356c130c5dd13
Date: Sat, 04 May 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714788742
