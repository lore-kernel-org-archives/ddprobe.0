Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC1C1799F
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730253354; cv=none; b=H/u0AjgYPLSc552W89ysPzoRxV4lhiWA7zNN+7PV9VTTrL79QDSw7Gotpu96tGZmRJJBUl3nKxOudiDVfBYGiUWKlaloF5IL9aOmKrhEoFgKvwm4335JIH2bM82weX+XJp19APk/5wI3jW2b3shPOSp7vNxxvE5RKEW/k3n2r1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730253354; c=relaxed/simple;
	bh=wJVWooxuz9boDEpg+K6f45iRbhidvzgZHLb/Rufn5PM=;
	h=To:Subject:From:Message-Id:Date; b=kRbRcFwnC38xUBdZJOUnOMgPC1TJDtrZ1LDiF+JF7aQY55prsFIGTzpcTWSHa/A1fpYvHsRoX9B1JhhKCAoe8NTw/cnrhMliBWbb429DllBSNEzyaaa2/AeXphyXgL0N0DQEcPbdOlN5wQa8KAjHxNkkzLiH3ooxja7LUUdurA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6mx2xFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6mx2xFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE415C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730253353;
	bh=wJVWooxuz9boDEpg+K6f45iRbhidvzgZHLb/Rufn5PM=;
	h=To:Subject:From:Date:From;
	b=Y6mx2xFczFQi+ZZvV25FBeHAgSc9mF+5ZDGqrPYtqfMjiyjrtu5qE0bldFMeQKbo8
	 QNSY6t17F39kyvzWvRgAG8XeCCKwIAykOuzo4WPMLp8sIuK9zxSYy/3touaVA0Y+PY
	 toTO2AlD374JMOhzkybeIoDHWrINx24Z5HioWXy9dGScX0rFfJBioc0gtTKB8rSiBw
	 Vtzpw4QCJ0Eg7FjuX/ISzyEcUKKLzG0YpIzkHgPx+Wa4kjBQJ0g6//gX92NuaMFwTp
	 orQfMyI2nstqfm3lJooHZ8FGhOC7u2Z6uVqokX42P40hISNH05yc/gqqcOnkEJykLa
	 BaXi9YYtC+DpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99ADED74956
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173025335361.13546.17678178123004557285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faaa546efffc4293c9fb8b51b941d8072bc3444062b0315fed3bad4a65724fbd
Date: Wed, 30 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730253353
