Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282F735957
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785557434; cv=none; b=nyxK0Opjtk/Ek+Pe1HGVSGfoel5jW2vlj+aDFWoekoLZG8VE7+6tUae5fuo9i8+u4YaIO/9lgl+IKpoxDZMnOHwRoRKVhfkylAl3FdTqg8kZ/pL7E/WAudyR7xnFFTFiiVu3TxbmXxFOoOIOBKQKbKZKm9ZbJGcLeLREQ6Zdfjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785557434; c=relaxed/simple;
	bh=GAKUc8X5a7JxFEb+ZjXiryy3M2VN0r2iJrkfNUDee4k=;
	h=To:Subject:From:Message-Id:Date; b=ZviHpfEGfOBdB+4iS1anlzigyiJJqanpznRjqM+F8Kx0WPq4Sld2H770HZM2jq3WWKPOSxhbkGeBVqUyt3SjTZw9vcNTjryy1V/yJhrfz8O6oaVZXfTZ0te4gfg89PmRi4WeSePXmkcOjQ4nJYPBt6gDHo4k7X6odTbDEhypGpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dr9QgY10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dr9QgY10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AE6C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785557433;
	bh=GAKUc8X5a7JxFEb+ZjXiryy3M2VN0r2iJrkfNUDee4k=;
	h=To:Subject:From:Date:From;
	b=dr9QgY10PJqjsovAXFG0OGlSbX8GGPgpSybJUKRfnmByRolgMFSR8w1kcgo/6gCQy
	 xHwET9Gogu7B8hikUJa5dHHD8HVKUfEoFHRmYrraN3mFSCOSdNQhe94teVlURjXNHN
	 6tvxJ+vuxt3+xMPlyJDiFmAKJzDCVlQSuCeYKI8uvokBPpW47nfKb4d+OhIh/CE0Bu
	 Oy9PBjdWHXdVOwbZZ9zqCej8i7H3Zv7/WHg//dZu63p9/V0tu1zKUFqu/9OyDGOAKf
	 z2yvbLu8dkVvY8EmA6RmCtfirmIy43RVxpAxTHup4J5KAn4KE9Th9e+NIDq9B3kOnG
	 xZV2XOsZem2ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA11C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555743368.3135.5498867749413162632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d73d176ceff5b52b6091ec78128046db18486d822cdbb2bb0df41bb1b4f7a3
Date: Sat, 01 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785557433
