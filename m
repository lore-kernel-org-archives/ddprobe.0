Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF09339714
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787884834; cv=none; b=fsshCjFLul7QS1BQ8NGh3ITSUIM9QdjfTvPGXfkUWTdwCEfOavdKk3NhR533rU5oK8FE3Dbz96NkpJV+/0K6kr5tH1Ovy7mRZuAE5LiSGKSPpmcizPy/n38nCmg9Cs1WVAVVK/B0vNYgx7CWFZGPpBWZQe8L1BW1w+58Q2L47yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787884834; c=relaxed/simple;
	bh=sVgA7PsdzIRaTWLUyG0vKeU4vBYYh6ZZthn5PnwGhKg=;
	h=To:Subject:From:Message-Id:Date; b=BpWlE1788dxbjzRMin/H9+vHPCggq/MxFxCNcuoBZU5colRy+9Fb/lxmUSeiY7zeMdTL6jy9gkUNHQZQcahoMmqO5VvE/v0HfmJi4aaELRwgr9EElUsArAfJVQUagsE6cW0cvv9M9Qkuur/JUcJ5//RvJ4G949ur3zZ00okAF6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIx/RWY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIx/RWY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6409C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787884833;
	bh=sVgA7PsdzIRaTWLUyG0vKeU4vBYYh6ZZthn5PnwGhKg=;
	h=To:Subject:From:Date:From;
	b=BIx/RWY9geGKhpD1yyTU/xefwgpZFg/855GaFYcNv5olmR0h33eq0zZeVq5E4ct81
	 na6wtcZZVvCU6KuPXiQd5fqMFKjFTSCWlMZPWslsgIl1Myr9ZQ9BDBQbgAePTmWtCN
	 y+3FQhZaEwH3TI1iS6B4OtHnIpxtQWXUlo28Z5zIZb5BixLohmBKxS5yYDWbkKxGQM
	 hP/uyhyeNu6oDl/m1xklJJsmKLVbij2K6WP6QUcmyBti8sgxheIc5xmS/Pn48Z+Xf0
	 9fTQt4TyruLAAgGwsnz6/Mf8WnexOOHyJ6GG6wQgXnMDImV33TyZnt1+HtANvSs6do
	 1At4wPAyFTTCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FD8C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788483370.16255.8783361953853598048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7f059dc99412ce84a4491de0ec2605c8c96d35ca5b9988875139cb84a5a530
Date: Fri, 28 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787884833
