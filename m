Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6099B4431
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737419154; cv=none; b=QVZgzi4Zq/4QRy8rjSPGsIF7ycTWpzCD6zFL92JJagfJnQJok6fzq+k/cTJRtN3ZcKAzNCUIubxAAYStE+QIwK0G4kOs+Vt3nRBafmYRdShxXpuwJNsHqe0gntOaxgMwAstXuKx25oQTlbWtPf4BMtJX+Zs5B3NwhJuNuU//sCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737419154; c=relaxed/simple;
	bh=OSM1NiynQI4IfqNP5PyWdln5Ic5QC3Q4n3xSIf7iGlc=;
	h=To:Subject:From:Message-Id:Date; b=nhQXcuoVr9Rd34hbs6poULRzGOgHX5gHWrZMmaZgzIajWnormY47f+Lhb1bDf7fgnelwMqqh5KqOqtulrePmPQU8NBUI+xENSoX22TJl49O8uWuoYfar6lOlOS6SIEVHBzaiJWC/UmWWPyjbSIj5hYMTtMuUD3KKVe21No9IKZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqVyQt/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqVyQt/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D97C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737419153;
	bh=OSM1NiynQI4IfqNP5PyWdln5Ic5QC3Q4n3xSIf7iGlc=;
	h=To:Subject:From:Date:From;
	b=UqVyQt/cv0bYCQ+dKMuNlh7cWWCMqy6j8ChwWHWvgb57VQEs9GIigPpbc7z/9UlI8
	 PgKetzAlIAtkd4WSvVxTLwbSxAxCmfE1/iUGNFEjGvwbraMReURuqNyaNk4Q19VvJ8
	 AviikroEpk9bymhG3J7VgsU5YNKUUaBoXyKyfQdkuVnqbLjVYU49Sd2Nn6ZYabOf6Z
	 9NChXQ09SSP8O24wxJdezEpn9OY8brj+tx+N6tNRi5pXH9WTFFm5J4Kj3vTYvfYpFC
	 0iMTlzOm1YMUwBv+wVeRMh6iaJUTTQbUZ1myFy6CSPWrJ/VAxLfdvLoB5ZsZnXHaQ5
	 2qN4yw/pZ8ZoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988BBC02181
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173741915360.18754.11142912197144963368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c65ba232f8687265091a98e13e89337c298fde67ab6d11602931e158052fc6
Date: Tue, 21 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737419153
