Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBC3496D58
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789072234; cv=none; b=jtIltdgAa8uI+uhhmTO6hI1U9W3X3D3BXLA4vfNnx7OWVaBy6cVcqW/r6XTFMcevjlBFutHUaF4fQy+vI1lS9+deEZp/DWnFuIESes44HJUWPBHAtoqhlZRgY+GmjIe55u7Dd5OzQYh5WJsXstodNA8G9KoCI/LvTQd3KUgd/8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789072234; c=relaxed/simple;
	bh=spHw+eRTpxWYoE3xfJHRChURVjSI08cvz0xb/0usqO0=;
	h=To:Subject:From:Message-Id:Date; b=OH+mOGUp8a5XLhyMGP6hlEolpAnM+MQyPkYJecdfTwm1OwE4hhesnzawFCX73584qGF1wSaREd+amkwzDen1aTuZS7yPVKkx6QbGARYYbsZ4BKm9aUepB4lYpXsfuFScQAa8CQCHK0SGh+DKDyeXw9jwCPfK5C0PMM+HGKk6ipw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcidP6jw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcidP6jw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD383C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789072233;
	bh=spHw+eRTpxWYoE3xfJHRChURVjSI08cvz0xb/0usqO0=;
	h=To:Subject:From:Date:From;
	b=CcidP6jwz/9zMV2bSZ916FMvRAm84BmuVhPetRZosxzRCQtuJXpobcNmBuLHcMOAg
	 5zVudmXL6arQRexn8LZbAcQw6kQWga8fhf7jA1/E+kZ15ZvgiDzApIDoG4tG07RdUY
	 gt9r/HRrjRaj7uKnIt9QXAUwlH0WqmGZku4hgpyzQpKZRgyn82TJy3O7Ks4Yuw2zJF
	 T7TWai/Cst3ilh4fAAPFu0/CJeSv019ANIiIUYz7Hr8Sm9XXo1FX6GQWi4s1uw8teX
	 vlu7ga4WHDqQSxscJ0fxAZ+r2mnTem+Pv4rpMjDsT4JyzL8ULGoEKHOUPTZHjIqQfC
	 9dyHC6qdBMvhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA16FC88E41
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178907223368.31255.6854829318133438903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f77bb1dca27818cbe952e707727955ebe338db98eb02098cf378daca7dc2bfd
Date: Thu, 10 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789072233
