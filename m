Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524542571DC
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745206194; cv=none; b=Z+1HMbN4q8v+z8FvnqrzzbYrcViq5tSe5n67vqRNt4820g8waqusK/NOPajYrC2wE11BIm82BoSNHOzlVa8qdMgvkRNhqqC6/qSfrDwinp3gAnS/gioJucTD6+Na6zCk1H7a1oNi59q/qQWtXUjG0j+8FMTeQiEoaCzTFBZzYhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745206194; c=relaxed/simple;
	bh=63ehYcNgUtcWPdIDiv0vY5F8YOeNCw0+XxzMAZbfx7c=;
	h=To:Subject:From:Message-Id:Date; b=F619Nb1hmfT/q641U/BrdsFkBnCu1RZyx7pZw899+qSQiThn29HUzWnwIadbGb5zmrCeV9Y9xjykB8pPrG9gHLvg3aWcIDnfabR+ocevoW+/c8zUmPHulh+eadPggpMvrz9mipBerSzAHQlaFhJspmbW5faxMP0+5Fy2MSutNyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMKGn0Uk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMKGn0Uk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CA5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745206193;
	bh=63ehYcNgUtcWPdIDiv0vY5F8YOeNCw0+XxzMAZbfx7c=;
	h=To:Subject:From:Date:From;
	b=gMKGn0Uk94fQl6MeRf6DVKfsG7azQJCbABNen8c09/N5aqnYxrKd0D6pUFZ0nRBne
	 cZNhKBYNFteQ0/Qp38VD9TESyN4eYmDd1wcNz8GffSILJRz/4SwzcC9R150RUTRnSi
	 tj76xARI2uauxg6k+SU8wlnsuaGxeJ4GoW7ObLXUGyaOMVlJeIvk3w5i9EoSquNxUI
	 txlc51WcNSJ1owVU2aivmhr2CN4C3fG39qNzSfQmGpE7fv6VCJE5yLos5idszXIe6H
	 avAvmek0/sLa91VM5nyKsCMAXDOMORqVZiUHB3zW+2P3qNAnyr0FFl4WbwpxL6ZjoD
	 e0HoaRBebli9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A06BC369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174520619360.25617.16065067543416765810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d4ec11941e00f603b16134ceba343f606476375a02f64926d0b22ebc8d8b64
Date: Mon, 21 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745206193
