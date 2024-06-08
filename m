Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78D8D20322
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717835243; cv=none; b=PJ9q2neY3rPESvxFrAbYblY2M04irmb9qxbZSAz8HUZQvPyY2zsEz1fOVqVqi6xh9R+opWFZqKkmpDUnBDaGJMpU1aA+d1ym5uDC592E18R35l9PansN1r0jU156/sZv/SAO5pNdM1IQ+znSBqn4KLqObNdKu4vBu0qAHRYspto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717835243; c=relaxed/simple;
	bh=G2/9EO3x9V48w2v3209uSZY1n58bbIO7BEHWsl1HJkc=;
	h=To:Subject:From:Message-Id:Date; b=Ur6JeDQwx753wgqXbFPDBjK4z4RBSUvcLCkSVeKA5BEUBA0tGfTdmCDqckKULoSY4F5k2WOls7ZO4qGpT8EGBgGgS6dgXWvPY7wCezWrRfB55fYNsm31DkVMaRwYQ3XSIAvDGhvMbDxmbjJtmrhzyviwsdkpgTqbqO+QMG7bewU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=licJi8Jc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="licJi8Jc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E04AAC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717835242;
	bh=G2/9EO3x9V48w2v3209uSZY1n58bbIO7BEHWsl1HJkc=;
	h=To:Subject:From:Date:From;
	b=licJi8Jccgz+GgwEsjiCLctYI3X23cURKpGvygdeOHCQxtEI6UrZGjfw4RKciBb7/
	 Js3aHdA4P9rZvx8nMZLXmDf13W8CYiNUmDyznCHVjmKZqjg0YOz/7FB0wIY9k/vdok
	 hDrqiobqi/rQ2THbohHwLhj9QEpPd15kotEgomQuIej5QojAZKIHLFoo74+EOs1B1P
	 CKoKhX4TZfMO9HGRBJmK2YCiiaAgJV2upt9DiD8QVJDpPrh/3N9oBwbdBuXnhatkZ7
	 NtL5y9rZkM4B35Ny52UK58JAn3QYtdMSpgb6Dn4FKpK2OpEmxQza/Z81uawO8rYwAA
	 nUdiSOvf5PknQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB315C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171783524282.29994.17520567804509230338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fad6750861a06f97ac10280312521dde1f68b7241f3258611f9aa79d4205f8f
Date: Sat, 08 Jun 2024 08:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717835242
