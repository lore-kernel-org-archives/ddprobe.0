Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC600C2EA
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775088333; cv=none; b=A3HWTph4XFy9zDrY8HsQyW6b6F/X2xz6XiM6VIgS9Doi44r6zDDHx++e0bHAC0IyRlloVKSMh8tlCPD7T9X1YZeZjG45BOGB2EvGCxTKHzFvXjOGvym9sG/mkysncCTaaxbdE9tZ0Cc7uyO/HZD7dc9pnACc5yaiJUpohqLg9HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775088333; c=relaxed/simple;
	bh=F/VGBorS26mKKkDxDuUc0/IFj4c859x1wVna4V0k+4E=;
	h=To:Subject:From:Message-Id:Date; b=D2OZO6CCx+J0E90UeesKMwpiMm/dtEUj5VjABjlQKMS7LwMyO5Nhp6Bv4YTzj+lXmkKWjYxuR5ZbC2fByCmq+cSpTGVZ6bO1JKKQDphSja7qKedKISwBp2UadjA+sABrs6GhqHS2KuMY7TJ0CQf/brjcBqg9482xF2402Yjm+Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyfhPkl9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyfhPkl9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BECDBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775088333;
	bh=F/VGBorS26mKKkDxDuUc0/IFj4c859x1wVna4V0k+4E=;
	h=To:Subject:From:Date:From;
	b=OyfhPkl9Gtd3lQZe1eTvbv/3+rbzSb2NEaIZ69u6fAAsdT2sVwKTAXUUQI3frHZh6
	 k+1fgJ5/QBLzYkTABgu/gnkyR6uB//PdI8XvzZ6cv9w2BHZ3z6Oba9uB5gtKXH/i+7
	 b212PcL3GsJrJRhgDSr9vodkV7hik8ww2FZkG4w+pfDLZ8ZC4F5sVHE8DJT12BNcyO
	 DcjkVuJgOiMHPOW0qz8o7TPw3VBLhaYgraOOuBx/oLt4Mw+YEKSB98WIUqKmGftOup
	 SWXRIq69b8JPRDdnpANCSWc/shLMoKDzqneWf54SqG3/Gp0Dv4U1P5x+mf6f4myWmJ
	 3wiJih6+rnvYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1F21112240
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 00:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177508833368.9635.2763606625527140553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3492cbf933a305223559f3541c98eba509c12bd4c3ba0c61f18c5f94a98534
Date: Thu, 02 Apr 2026 00:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775088333
