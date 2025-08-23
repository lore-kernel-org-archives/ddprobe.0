Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DA0AD4B
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755962394; cv=none; b=Dmpnx2l2/pt1axjN4WovwhwAWubfq72TDoMwao7WZZiGioM1MSMUCIap94BL0QrJypNWkGMpJAvPHadzRFYwRnRf88h8ekw/CykBkt+zUXeX5RfGlEm/arIV6C2Ci8aJ/jdwhL3hq3fDZ9DnpuNDd5cQ8BQkObv59rrukWTa750=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755962394; c=relaxed/simple;
	bh=Z3g/O6zAXb7sJ1QLRaZS0ohyVhtitUa4wnMTgZNTSEs=;
	h=To:Subject:From:Message-Id:Date; b=IXYLVdj79tze6eBZTRiVVAx+2PWxS22ieU86f44elCvtLeicQ5SETTxySkY4L1qz/9NqTlLL+obUsvzyfH9cgg1NY6M9rqS9icHzjgx54yQR7xAjPWgG37wVO9+tn8Sx9vTBWYLMzNcaBvSaKltWB5f1aFqFfvcbDWUWFhqGhNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4/6e7Nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4/6e7Nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A736EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755962393;
	bh=Z3g/O6zAXb7sJ1QLRaZS0ohyVhtitUa4wnMTgZNTSEs=;
	h=To:Subject:From:Date:From;
	b=R4/6e7Nm5tSjE7nzydQzf2sGoZ3EijVeRr24dcWFlI3O8lnq2OL/lPv7LwKmlMehJ
	 KAvgnPMgAwHas++//U2RMlfDYAYR0ftJN3hSS9UQ5hi3FoU9E/xI9wlgg8TR0HFgvA
	 Yy7qw/ouFTPG/RI5epiEIkEfo3ZL7spqZ+D+phTqJkPXFLrcRvgN5tXoMWKCCZjVOI
	 bzzgUjARN8sygfpAsthgSxOlxGpNazKzj+j2xl0yx0uc1A2U1gDxvCLZulV5ERogle
	 SHsS5FCe41+XSH+oAjU7RpLyOzx68icfjAHpZi4P+aD4q6Z9ie3QjXrKYteCyxZyFY
	 /LG138wgb2a3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A59CA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175596239357.25992.4710039998683651748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86222ddcae4b7cbc58b3b39f1aa932f2ab3fba71ecd5162da1111c258c8f94e2
Date: Sat, 23 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755962393
