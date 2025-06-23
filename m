Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58A270838
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750712995; cv=none; b=X0AboXph8zo+vU1eDww6IAa0rGzzhtopVAYamwQ2deJfldAO2qPBIKesAQWEqWk7DB5oeDnKf24xlyaJKcZSBmWqnPaT0gGKGqiDGiurCJLFCeM+A0d/m28w5iKQxRbequSkLDynf6/KAViJIORC1A5F+tE35AG1wMxmVq0WjiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750712995; c=relaxed/simple;
	bh=ElxdSH6q8uFwGxARi6MKooETvln9ot5C9Ie2Ork2t78=;
	h=To:Subject:From:Message-Id:Date; b=lBZ6kxqndqkIVdMfDr85ouFivHfkXbPXUlS8TE3Jzceaeyso/VqGwE0JfjRhF/cFHj0NmuKI9/E7gk+Jh0eP4hmrlOCBMXScL1l0HI4te06Q7ebf2o7jKHVWzY3Q/eHr2zxcmnenTTTQAtZiHEB62Seg4mZAkTTwh/VYTVeSJBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0qQZmZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0qQZmZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A453AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750712993;
	bh=ElxdSH6q8uFwGxARi6MKooETvln9ot5C9Ie2Ork2t78=;
	h=To:Subject:From:Date:From;
	b=j0qQZmZmbVXLj4PYssyuCeh1z4fWd/dGdUPHvbQjjqZWNx4aU4gZVD9Uvwgi4UNvH
	 ATN3W0FGx8foCRKjh/ILCwEEVQFl4p3zJpiIIbliLhEamoaGcqUsnQmyDASWgzWK82
	 4xrrNKA1CyMP0f9rJHTaTFp0ySZhPvRh41Cbd4vSdMPYO0EaTHP0M4GzPaJhrkiA4B
	 DkS6BGVFV4o6QONdnxifQoSzxfN3cksRRHO7FMIP5ZMevGw45ikRsfqidtLMEG9QDy
	 NNbsSUdGp/1Q94BF5yLlKXBLXXqqrvuWu6FksUFise7sX5DnNbqoz+EpBAr0Y04KQY
	 DMAr1/hWOv+Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F18DC77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175071299357.30713.9216034994250439537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b6daf9afb48956fe002b2380c99b6bc31a5b889ddae78a27c9ad9c83e3ba1c
Date: Mon, 23 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750712993
