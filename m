Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C7D381AC8
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749898794; cv=none; b=oTy0UG/71732oSEn6jFnmGSc/TPg9pvAXyqyX+YFC79pm15S99q/a1rU21Hyz9EFAxd0Ws7vPslnmKdbNnDthjMJE4Wcz0AnlB/TAkFJVp+uyZscWG1LiQjxH9eMurF0Iexd3jkBZ529Vn4pimHO1iL/DFFqWkNW0MvP4FEb5GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749898794; c=relaxed/simple;
	bh=NTsGTgxRf0JGtOKIFlIQPSRtWv8VV2j4nVYS8icfS+o=;
	h=To:Subject:From:Message-Id:Date; b=m5DRYVhKDxE7OZy5+1npw5Pjjk67y8ptl2n6IVAbN+tgDh9LAnWx+gsjXpEguVon/sDG5vePP6h/gvztwg36+npDXGZMZAsGvyDJuaQEiqn8OgdhSuK8raJzY815asOuzC+G1hIg32qF+vM/cOHa946RYmMLB77sqwAt9XZ19cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cb0aKCq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cb0aKCq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1DE40C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749898794;
	bh=NTsGTgxRf0JGtOKIFlIQPSRtWv8VV2j4nVYS8icfS+o=;
	h=To:Subject:From:Date:From;
	b=cb0aKCq3PY+dTwmj72/l2O/p1vIlBteTMIAKajE+mjeVZQZv9YJAOSOPWdIg10wCo
	 otJ+Oh+Hv/wXqWesF3D0PKlA2erwbe3vYU4VoLxvJm1jgPYWXrlv6GFiP8QSXNSJRo
	 gUXiBgKcY53LQ7NpHxXScnsHebCzcIn9IEkWdAia1xM5zD8mi857wlWZaU4WgEvW01
	 5YRVHyLODMO5YO0ReJ67bKfKVEdUQjmkZR6xXsrwi4DEtAmXUtljcscZWo8uRxuzye
	 uGHb4qxvfMqFJg+O8AnvrFKSwTwuP71SFvhXXx2804VH+OGrSZgZ8xVc3Ouf/Alkiw
	 y+gIDdMbY1A2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA7FAC71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989879381.29372.9887860514126136262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3842e623ed7ece6fc1b75dae057b8fe66c0de75a93d575d452594f581850ca5
Date: Sat, 14 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749898793
