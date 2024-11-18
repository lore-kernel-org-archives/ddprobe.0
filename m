Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3054419412E
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731932754; cv=none; b=hBH04SC9k6jpcvU9/IHp9op0L13VcZa3ZRf6f6Yfg/J0T57L1TMVyrd8h6bYdoj9ii4222FbH5i+dswv+T9PxxTz7BOMV5tb8Z/S6IzlPTNe0tLwbINZC1ZdBeih95qROGgq/wcUZReyKbPLs59Wj0mncg/0523XT6ykW1jeVAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731932754; c=relaxed/simple;
	bh=D0FbXYIwsKkIscLBFoS135nB/UymqkSaM+JTwQUh3gs=;
	h=To:Subject:From:Message-Id:Date; b=WzA/1qsv/r2UB5HYpuFlIIVLF2qRUHx+qp+qb+jSJY9KWdAOStmdfx9xlfZDdUgOSrpHc5BgomrLK9YT8l2T1fGKb+RkPhRE3s5u62cG33kXyAv7+9kN4XKzjaCoYb9yGklkEGvksUJhUbbUBaTOH66365MUhvAN3Q2eSthU+2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U02/XLQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U02/XLQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15CFC4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731932753;
	bh=D0FbXYIwsKkIscLBFoS135nB/UymqkSaM+JTwQUh3gs=;
	h=To:Subject:From:Date:From;
	b=U02/XLQMOVYR5Z3JUVECh4AfgFIFmQOmBND+bQNFZIDyeokj5rqY0erWERJLLPGFw
	 GRIS7/mYa7g6QG/TBMa4P8CJzcHr0gyOmQNS1/QToRgwzIuEJGj5Uyia5MO5zrJOEd
	 BdKRUrQ1DluX55k06DRygCbRmpvZZ/h81dZtiYZgzjzTkeVfiSkM6573t9xowY6S/+
	 ihsHMSv/mrFBsamQhoqWKK2f9mMaOvMjxw8tgMjau1jmdZrpd+bEuvjf4w+uVI/dpZ
	 uo6/2oO9kxCluucs5gPKCHVqgkgA0Mtaftj9l3/+JQ3YfFgbYYnD8UiEHTlE//M+bd
	 vpiUjDceaazCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F14D49211
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173193275359.4486.15689929515336216743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5159a6e635efeab73686a680bf303dfbd10a27bfdf4f0ba026d1e9e605a815
Date: Mon, 18 Nov 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731932753
