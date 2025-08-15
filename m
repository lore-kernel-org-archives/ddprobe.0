Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCEC2C21C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755274193; cv=none; b=t4fPe8npe/r3hIMHYUjv0fOjppscqUXHa2X9zVmCZv9Vvfkx6i8csQpwGqEOcOMuG+map9j6Co3F+PBxee2rZY4apjhfTIT3oMmEcFZwzWez7hZCAHy1rQDcQ63IuqN6e5YjuMe2k9b0eDkFvHOoeHa+dYl+P/GS8/SBrjfY8mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755274193; c=relaxed/simple;
	bh=YhlZMiyw9J+ldV507RhY+1Kjrymm8EFOFoRoErF1GlE=;
	h=To:Subject:From:Message-Id:Date; b=p6JgTc5bawtgYXy9HN9OxaF0x7IKI7PHYYzqdTrDyrHudRdJOdjdiN5yzVjUDsnME7pZlWQS28NyIEZO1UPFi0/EeiJdgkiS69N73Ax2y0v4xf0v1I8/+Bo3KSUe1wRdmqprN51LLso1cSa0MTn3zpjvSamkYagY/OvxqhmGrLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ex9UVphj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ex9UVphj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A58C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755274193;
	bh=YhlZMiyw9J+ldV507RhY+1Kjrymm8EFOFoRoErF1GlE=;
	h=To:Subject:From:Date:From;
	b=Ex9UVphjHunIpOqaiD1wCX24eSijjgl6AVRBKrZlhL5T2bROT3a7dsQTv7OgpsAk0
	 QaneCjMXgUC+NKHxzAp6sTV3mvaxZ3IjUzF2KWkE/PzlVOfV9VsysxNOZCNPdqkHOZ
	 bruwNULv+9zvgxOkFUiT9j0gHLJG7gWHBLYhV7Y6r8CrDaclN+MIxPfLIA7D0IyaGR
	 jQkhmiKUhFgy1nf9IZVqFRjuDUafJPNMkBeJxXVU2OXBj0h/53FWToVFIJBgD09Pt4
	 x/ayeYcJQUWHkEs3fysssVe/B+Jqy0JEasaXAXmKIy4ggMa+gRTEstHmRTElsIBrRx
	 0dhuz6kQpbSsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91156CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175527419358.11301.8114948859963465331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e852ba3579db3e7a1d46dad85a87669ca119f61c4d3d250501aadf8a2d993ecc
Date: Fri, 15 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755274193
