Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE8618D649
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750726195; cv=none; b=Hzi+A4e9dYQ7KwDgos2JwbtRHRp1bcEEmoLLulihOS++KQIAtfDtkQ7nDq6kk7goVTPCd25dGydWntwqzinslZxqeieLlJXv/tYlhZmIFt23aMlE9g4BC3rFzoW7t+o6V1gFYQAV9UXWF3G5WWYMm8y/S7FRlJUKA7FOtZQT6xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750726195; c=relaxed/simple;
	bh=glyoDo0BpiOVwpD+Kq6LHbl3Q+Q19XDpgmx/C3tGaBo=;
	h=To:Subject:From:Message-Id:Date; b=jcZBuM1ZfCAhBvi+y1Qig9i5GpbJDgj/7s4t2LOnd9L2+crIltXn4bXVBCFOc8YtULM/h8ZbVkZRv3HyGr1pht615ADbiImdKq75CAKP5WXCrEufZKpMxb7cyB3gTgx4KzC13b4z/x0BKoJCvICv1JCEUUrVL8lc5Yf3QySQn8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxmQLiAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxmQLiAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC3BC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750726193;
	bh=glyoDo0BpiOVwpD+Kq6LHbl3Q+Q19XDpgmx/C3tGaBo=;
	h=To:Subject:From:Date:From;
	b=FxmQLiAYg8hGlNN+X2CAsdZlPG+YzkCl6dZUAj/wtSwvs68SPeAnOndjRO/H6O499
	 AbL3Kot59ZdUhpyvS9goLpWvrAGBmIPCOZev+t8FF1oL5G7Q0Z5JfV23MxjecdQUmd
	 3zq0zB84YM9RXTP4y0whfyYTapKC1PuXo8LOHQBq0cOtEvTPZ8TZc72cbHha9hWfxk
	 DHx8yHKaMHxKsG6w8LQzoVQgHsjQw7O019X/qwsbzzPC/23XMR8dKuuQl9W6dDoQp+
	 PMsJjaZ3McNF8SBANnEnWxmBag6oRtzH+wN7+WJtkylAkdC0oHXhT4PwB/u4fUXL4z
	 CPwT4RBsgf5vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9497AC7115B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072619357.18720.4394946843513699447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1423da9df56a562e17d436768015c733369c59b0e40c24c8abdbf163ed240b
Date: Tue, 24 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750726193
