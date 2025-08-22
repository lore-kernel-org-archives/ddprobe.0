Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE8F1CD15
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755865194; cv=none; b=G3l0GDRJmbx5L3cI8FDvfINOQlUmWvDZYoOffSNu7J7n5AnIV+t4wNHWn5s6aCbhj4yOpKAJOk3PEsv9vgT8CPDG4CCFX32UH7HTrqfj7fKT6brXELgRhorYq1eYiLXUFTapaZMF2sNrGa5XhUHgyWoG2YnUSenfdaPBJoQIB/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755865194; c=relaxed/simple;
	bh=wwb9AIZl5VAXCOFfKEZa9cRIIW4V+4N/QdqD7JZJViI=;
	h=To:Subject:From:Message-Id:Date; b=GF7Dnsp4RAr1k+wgm01ZCK+1nfFO0Nxpri9u5/J2kDrqK0FpeMxivHhqyH6JKhqkPtHdDodh6m56GNpcF9HGYvyPakUs8p6RrjJ3I4SLgWtEZ4dDKM3ZX5NJIOCEXvDv7P/VcaUi/FIXgQ2zFHjv+eN5zCW1khlGdofEBZxY5KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAGdQ0yk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAGdQ0yk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C99C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755865193;
	bh=wwb9AIZl5VAXCOFfKEZa9cRIIW4V+4N/QdqD7JZJViI=;
	h=To:Subject:From:Date:From;
	b=FAGdQ0yk7NH09ERH47/0cf2fwpZYgNmzTAtAuLIR1aSTvbfaGfu0jqlRF/2QrTaOV
	 XP9nKNyqQy+H34U1feptaLi27ggXcUKowlf0WuCtGWwAD+04i0pbUuUsbUc8bKqkDm
	 3DXR4WOAoXFUJgHSgkj2lasYTdfIvZtgH0uCdtPpxdQ0pzYCjpfeez7d8ePX1SeZCE
	 SiehgGYObEYR1drlBuZZKQXNcSK7eremeF+GfN3IVm51spKMRO5nuRWyPdgOTG3GKy
	 NBZLomAGy/KjeL7sbTp06BX2lVn8Z6oi+ULy+RsBM7IY43zkPDyd4SYQ/8MhWL2oSx
	 XT3B05ZylKjnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914EACA0EFC
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586519358.17529.13596990374481707605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc8d4e4875d7da36de4921564fd58a4158699e64b34195f7c46feda03d3ef75
Date: Fri, 22 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755865193
