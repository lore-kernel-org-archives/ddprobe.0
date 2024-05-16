Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6241A2C39
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 21:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715895743; cv=none; b=FMxFdYUNgLrW9j+Ap/UYkCC8nk/FVx5JFODp7893xud5DM8KxsBVCjYwnB8t8MAi5YBzQe8PCLK87p2BQz+/FmY4P4czQrfhRcwrvyx3s9A5qp+9ol/i0ThdkcGPXQpa5UlWtB5m95IRzsGhMPPsw0IhByq5Ea7YdoR8lPxRl+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715895743; c=relaxed/simple;
	bh=VXsoL8T6nFgsvtlIutnd22jk3FI5EcQhKTEsvOF19mk=;
	h=To:Subject:From:Message-Id:Date; b=DKn9Ekr212Gx4doMRLSPN1clU7S5gIaykLY8NVneYp22ebGNQCsBOY5bqziXq04tGUVuEC+Dahp4s0Eeh9IDhE+NdQW+tTLkOxALWLJ4iB2E93ydBXuPjH9k6u/+a786GkCnHPkNRgn8Buir0MRvNO+QArT1zMmpYeGWl3Gadik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5mYAX25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5mYAX25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE9EC113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715895742;
	bh=VXsoL8T6nFgsvtlIutnd22jk3FI5EcQhKTEsvOF19mk=;
	h=To:Subject:From:Date:From;
	b=p5mYAX25IP/azJ1v+9FsrzMoUP54DRU4s4+y4eKX9AYBDUzLEWbdF+P9v01+x6Wya
	 Q0ZmjEA79teX/HYS4Xxc6FVytE1X6vLp733KilVYxt6Dob1IZJTtffQJPZOE/JBGUG
	 LGZO2n/OamR8rfoTELt3aZBSEcxc+pBnfyauuq4IGdexW8YmyixHUp/NEHoLp5MZrE
	 kjRtpaUfonnWiNmpLs1UsAO3baA1sJrzDjV/nmcwfnknJ9SwNnt77mga0zLkWYGv92
	 VCDqClCG0cMD6oEA191rCpAOeg0P4PmLlCK8362X1prQ3lxEvQwfjsj3WEwNEYKMCd
	 RA8ObDNyCW6SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BE1C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171589574275.18008.4360888010970055277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77a60915082fdbf0803467c11ec0c5b9f2293cf5385d9c537b9a53768f82b67
Date: Thu, 16 May 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715895742
