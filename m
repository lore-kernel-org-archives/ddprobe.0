Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CEB1E7C27
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752038994; cv=none; b=o9co2clV+LbDSC9HdHk8WvsILImcX9NDmnk8h+ITuKHLt9iYxu7zPrHWUCC5XqR1qfNOHlunFjCKUN3T63YU9hKHMGh64x2k3f/Xaxt7Y+CsqZe0rMyVgUHWC5bzwmG4WqmYzn9v0e963eXDBV7SR9UzbtIAPMCblcIeYNuy/yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752038994; c=relaxed/simple;
	bh=ToEk+KAFAnnHZGDEE5HzgvpRIVFfablnHvABdm1j2jQ=;
	h=To:Subject:From:Message-Id:Date; b=CSKhCybEkhNOg9tp004wbnaxNZ2pceHethJCyQlE+GQdLLP5xqH8MnUG4Cd38IlqoDDE5lW0NKTT/32Wlx9YYqqEyXHpSieRFZg2SHcbY7TZ6G6xdSPFwEgg46CLBhtoCJlTzC0SrEqUl4fxa7vvwXiPHG23T3nDDfrv/eJ6umU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiLeYcjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiLeYcjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB1CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752038993;
	bh=ToEk+KAFAnnHZGDEE5HzgvpRIVFfablnHvABdm1j2jQ=;
	h=To:Subject:From:Date:From;
	b=ZiLeYcjhUvIrW9izQvO4vpPJkGAFpuMaPPp52ZbJz1h0peAiTjFS9jXr3tiyDbzX2
	 zgCoADol27r6kaTaQYDxhrZY7G+vVpewa5wFJ8BAzN4Y0OYN8i0rvYwKKWTVK7EcwM
	 YeWuaiC1zx0EwJPuSh/hH6Uke0iWFPswtKRzRh3127tvH3Py3o4okfEyKAbERENv8Y
	 f6HOM+TZl0J0QcSaXupMfsqrS9TJKyJKCM4oUeGdwax7JsLTEIzLa9Ts5iy3iLh5A4
	 Fk5qd/vT8znS35Tqjfb/hubrciP2LwRpZRfyKhTKO/sdW7opDoatNmvL3bULqzhj0n
	 dXJoczHJf0ySw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD6C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175203899357.21422.18234693044993791491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e27de4a56c9179cfe76aca38812d924e8304d0cacce47ff739e34f431d31da5a
Date: Wed, 09 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752038993
