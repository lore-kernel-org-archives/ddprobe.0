Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1990B72618
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756697994; cv=none; b=MxYQGEMfRT7qc7yclPnVjv4JjlfeMmmFx/P+u7eeWzYCRkK9YRUcpemh6B78E/syne//zUzwknIlmoW4TKZK9jGisJGriMbo5Q7/9v7/sLfcAzr3toCpssU0IePtCDUN6NsIBywo6/j3m3gx0Q3JAba9VL5CB169lx62/2YYglY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756697994; c=relaxed/simple;
	bh=RhZDrhXlqDNLqk64eI3inrLy5UG0x3O+ypfs3/ERAuw=;
	h=To:Subject:From:Message-Id:Date; b=oQDezuKd3GhLkHXzftTvX0L0bx8RWkvWG5lLIeSYT81nklr5vYB8lyg3tJNB8kQgM3UsHgbb7VrO+ZAdH4dkOtlPlzIrJEz5ND23hMRLbiP+ngGO6G3nZ+I7VwSq8sl4UikE8l2erXG8FGsWmWPrP3NtguHaTDGx5thD3zvwP+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+Itf4Oq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+Itf4Oq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DC0C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756697993;
	bh=RhZDrhXlqDNLqk64eI3inrLy5UG0x3O+ypfs3/ERAuw=;
	h=To:Subject:From:Date:From;
	b=J+Itf4Oq2TD4fT5j+f0d5hldXvbIsSiYZI5Igq+LnquXER4ubwz8WlwLCYAzpMc5g
	 ziHlPpcci9zsQwChDRm3AAnWCLKu9Q1/jDhxi0nBKEzw8MbT/xQDHtP9Lw/E/lZgJO
	 YMnPM6qi6loeRDcqN70eVSaBCxm5PTWZMVygxJ9om9Rm8RnsUguCKc9ozaq+iTRK3L
	 jI1zG1PYgkFhzRUo9taBVafTAqKOn5b+Yv5e0s2ydrKH+IIyvmn80q3fk7eH7temrY
	 Dtcx7R7KP0rvz+S7g3nqkoZOgd1inyE21kN/XE2+Xcfl//LExXHU4ZMOyBMoFHYUvN
	 ocWwFNxXNvrxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92718CA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669799358.12526.3486205237939026493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79bc33643fabc340a92c1447119ab8cb6cdd3aaf0f8a1633e35c0dfc96d7bf32
Date: Mon, 01 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756697993
