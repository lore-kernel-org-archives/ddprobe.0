Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CAA928727C
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754003995; cv=none; b=eERn6oUz+Au6dEKOi6/ht1N3n90v/ZdmSRjsUl9CIZ1sYnOhqTvYsPqkfhdb67q9iY8VKlKfkuCGFnQIR19JJljMXvErbmymPk3R/T0cWVcIQ73xMA6WPkAejgugIgFETGe35le9zlTlRhZby00onoRUw9+3NpwV+c01k2jo8IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754003995; c=relaxed/simple;
	bh=5S5LqzvlZUx7Of8+MgToVHYLhAFF5B3hV+BvhgPHlWA=;
	h=To:Subject:From:Message-Id:Date; b=WDKEGNZLwRhMtaMYKp9djCuAgVwBkuuVSfEIh3MuD94QDQeeQ07kZW0KJFPRORWUF/xy9Jr1B4ZU7dxMBWY22mtyCo+0stBS8O1QZm4qTDy0k3QfS6O87HP9H1padWoM5r/2tsESSi0BarfgBT/iUBhVhtiGT4bubQsGU3gTETo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dt6TYvxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dt6TYvxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8685C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754003994;
	bh=5S5LqzvlZUx7Of8+MgToVHYLhAFF5B3hV+BvhgPHlWA=;
	h=To:Subject:From:Date:From;
	b=dt6TYvxKZCDnjjFKwRYuHK9oRgeM4X719ATD7nUu3+IEe5/VT2WtStfF2wTzqVtMf
	 9RqLj7U6B888/yxmwyv33vyZK178ZFmI4P1/GXuzAwJoPnHTibZuGo2wa2+TSu1N9X
	 NjTPxg8UhQmDP6dxrQmAtNya1EvL6vJVYU0WKQ2+uKR6bKC5iH6ixOp8oHk8aYZEh9
	 HgF/nBCzq1bTpxQBTAzEBvUnhNStv6MElXxTsGUezDZl/R235GoXzLZl1N/r0VNrir
	 Zi5YRNDkBk5LcwWliNE+ekjsmVxXlJHVfDnI74TS2LGaPqW8Jx9+DI2s0R3qx6Odw5
	 /0hUKKNkxMroQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9385CC87FD3
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400399358.2124.4061939705435101789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 371af3a7fdf093c09cdf1fc9bc3cb96617ebd051842cc622672504874a590f66
Date: Thu, 31 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754003993
