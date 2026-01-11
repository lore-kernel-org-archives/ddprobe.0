Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177C823AB95
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768167834; cv=none; b=VK/K5K1HANYMwCZK/N9kTr22oLmUh9WTqtAPN0x4Ga5++JNLvFu/OA/OKqOY6yfnf1yGOOMQYSWGcW9byyDG198nvASmtALfk/5+fihgY3VjVK2WwUmXXPSyfqmKeRIji9wXgn2XC1Gsp2+VCV1IrWdPCj5Sclemn0YYqOWe0mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768167834; c=relaxed/simple;
	bh=q01QsMFePjiwuQPsNQbSjLwtlnleVDWOxEJeIIGObn8=;
	h=To:Subject:From:Message-Id:Date; b=mDBI211Bhm7hY/gT7ePwbXdjnHoEDHzxiOqwymxVGaG2LZsgIkvE10ZdgJlUXpaatx8oHGm/uIMYGNVCazdRYnXoQTKEBkYRkNhruBxF6P7QtlkAQyq6DNmZfayJduvLmh9j7QLSaHN79JUMj0BGetY1GrOWV1xu28CVxjahEhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0Ze2XnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0Ze2XnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C99C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768167833;
	bh=q01QsMFePjiwuQPsNQbSjLwtlnleVDWOxEJeIIGObn8=;
	h=To:Subject:From:Date:From;
	b=p0Ze2XnEczBKIkLI8SKF6YLAto5OhPMIRwfWVUIee66neUJv6yGg1djRS9Y1IJs01
	 3NUwigizFwxSV/qOoGUbyxHLYksmUima9thRXU12fJyoKhOlHOLKFfeh6yRY+rRIhU
	 ReB+wTSrcxgDhEFUBKOV9WrE7XlE9yiWpoWGhW7+T2ZkqhZ9DAYsyib3IVWRRjeqcp
	 +TExd0UWXslt71q+oJbMmJTyQ/rfBrAkK6XVcuJDmn9KwMCQj0m2uJdCXFeV8x5xTE
	 WzlzMuq+9KK6gyNAtGbnricJhwQaNiCJ4y4s5cfv8JdYST5ufLssYS5GHbPxcr9XUU
	 W94KNHJpHqbQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AF4D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816783358.11538.7448053537226024699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf97087ab5b69adcc3cb8f1ff50569152b88f3d01d1e8dfb626b73e6f710cfc5
Date: Sun, 11 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768167833
