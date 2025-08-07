Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8F320E032
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754544593; cv=none; b=WuOEhTfzKOzX/xdsHJSzNur0hHh5GNcj77wozz/RG+U8YQv3PLbwsxB6VYV8nC4L5h/5g0ijvt9DaMuClW+jrxIkkwyVOfrR3mlWsVctDKXPUnEh4V8vtPRqBwLB9ppm14hTCFFvNg+75IW7l2Acw0FksDHXLZJ+HwnUG3JTafQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754544593; c=relaxed/simple;
	bh=2QxeH0nHpM/Z89uCTZ7sQNwEFexVglqJ0s84FkIVrxw=;
	h=To:Subject:From:Message-Id:Date; b=FSITiSulGsLusBajMK0pvIlDnCX0lzJYymjDUaiv5mL2vu8AQ+7r+it+xPnYfdHcxjyN+aacx29mfnfQB8o7jjimhekGrmenTESxi+Yot/ldwmEOvMwyTenL1OQ4PXhb2mN/2Gski5+B93gXapEMRZwSdigViLg+sYk5qlBKZKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AY1uAF6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AY1uAF6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC5FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754544593;
	bh=2QxeH0nHpM/Z89uCTZ7sQNwEFexVglqJ0s84FkIVrxw=;
	h=To:Subject:From:Date:From;
	b=AY1uAF6ZHxRHZedqxvGDkjAMmNHHv4pFwVqSL8X8yBZMjUhXmRcu2YWYkg1WREkWi
	 S0/phMll53wSnasjdHLQMWPC97skFUF6Ut8Ve2nldUwpCxv/LgF+c8e6B2zCqB/L/Y
	 d05UziIU0wJCIMs0xjW/0zcGm59fjoFtb3WWBGzJVcXalejwRlIV9Jj1LcnJrP467A
	 lm4sua7ugo/uHwbmaFF/F7ZxjPdQBaBTkxYfCTJqxS61gYeCQbqwcinDO9pMsZk1o4
	 QIwkfHyDf6L0f6wnHiMEikCYtFnCZERwbCyhQ6izQJZIUtupSOb2GVKI9YQbc9JhGD
	 wXlUEohs8grqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA2BC87FDA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454459358.27005.14902496570544153208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebae18bc01fea7adee5d124c026cd7f99a6ba8c79f1286990f28933ef0e9d338
Date: Thu, 07 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754544593
