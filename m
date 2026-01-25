Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1296C1482E8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769329434; cv=none; b=CqNhwGgEu+5gV4IKcq579RSQ+JHO2hTKCCYOF2z59Q5PdIm6zYlNxzA9O4RhrjHTheWM9Asdj+gifDwEYYfPpo8mRzq7hloaQkBqtu99J84h7L7MlyL0hpzPE9XDIUcAUNbAT+qSMwqk0CYQ4UzVBWCjVQ4owNEfH9uXtyVlAmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769329434; c=relaxed/simple;
	bh=TFZumX/sRVWibhEfVbaMMHHBcbNHTjI7wkmAS9MKLBs=;
	h=To:Subject:From:Message-Id:Date; b=nuUjN3KPyuxXCP8yoHMRepKNXxW1fDYwlDZ0I5Z0NBbjKl04dpMJyN9ZX68dlIghzKNSQ8MtuN8jJYtM5Sc6Ls50g1i9NRkHu/HlO7Ge4pJ9FlRAOnqmTXzE8MASXOyvODnk2HGBLVeegjXjZuxVGozq/G74KVPS7ZRJWdVXCJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5ZJd5Oe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5ZJd5Oe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8148C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769329433;
	bh=TFZumX/sRVWibhEfVbaMMHHBcbNHTjI7wkmAS9MKLBs=;
	h=To:Subject:From:Date:From;
	b=X5ZJd5OedB2ZQk54SDDwFg14ErbvaZ15mpGURXTOXmLwQkE5O8Bh3ao114N9bUK2t
	 yRszzeO9P8WU+Jt1cHXTp8CLU+6Q8J5fZt9R0in8MBV5ZaJRaaLJods9YzPoPIQQpf
	 lNBIiUlWF523VniN8qXsVSS4S0mBS8LZAm5ZXa5a5MtC3g020t4XS2XVCyEzgu/Vg2
	 5+WFvnQl6AEBXnG+9GZ4skd5wHJtY3st7bsuTfbzsZhikOtby/t0hRGuIGQ96t6f/a
	 e8b3Rdg7gadOf2GfPaAh2nxc+HXDI2zdqCtqLHwWWtKzSSaerjz/gTkKxwfPWjNsTa
	 crO/gblmyLyCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D29E63C94
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176932943358.20056.8262827480965963306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605c605baeb48a82ac79e514654eac8a8afb1475a95e2a2b0bda644b885eb972
Date: Sun, 25 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769329433
