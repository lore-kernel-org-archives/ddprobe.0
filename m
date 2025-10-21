Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2554E29A9FE
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761086394; cv=none; b=BbEmG8DHlIudIwgbrxErF+ktCthZSmJy323Ev/5Sq0SaD59Ldw+ZoBPo9D0b/Nb6JkNWmZvs061Bvn3+cVe//aL/LK90WmKUeOBAiCU/aBeJhpnUvo5zM+7yims+XvQuk8Y0E1FFfftlf+O8Oov/V49M7e/XiZGO12KrvC/K2Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761086394; c=relaxed/simple;
	bh=oVoe1zRRWdvThs1NwUjmEeNwPIB5bF4pMW7VKhMnrW0=;
	h=To:Subject:From:Message-Id:Date; b=kgZA+djXvTSRS6Sec2GOn0kQyhw8enOpZS1SqN3QEBlUJQ1BUQKcdQ0DoIE7pbAEkEQi3OC5MR0rkjxeZI9Exmmq35tAgQwSFtSwvQ2Ag16USdMif0gVL7zlbnRaW4v7koIsdyzWfkJWPzZTink6/quFG3XSJEgMoc5JI2zk96I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnsxepIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnsxepIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF168C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761086393;
	bh=oVoe1zRRWdvThs1NwUjmEeNwPIB5bF4pMW7VKhMnrW0=;
	h=To:Subject:From:Date:From;
	b=tnsxepIyjKRKECbK3h72ckQ8gGCrXdLwpBhyczIdybX3DHb0fLvZo71NM1u6iNlp9
	 1EdyfiFTdhhhkzkn8kbMqA2i/rOpuCQSvg04z2nqsbZMShCBjl9WWzK3gGT3SXKiU0
	 7Ztu/l19zVj8wAC2yE7tbfYaQFPnLe49vtrPJ6zB20ZvHPREch7YCLlAa8FwVH7kbO
	 CGYrpbMBoKuZHvcutPg9u3XHEhXsPexbFyhQpcCdneVfsAII1nCbNM+i93XP/6UW2R
	 h30w+1620HsPI+DZ+xIUbRmi/T1UfrwTNVjomh3gSLllc/EYS5+IUVtkrwXRJQ4ysX
	 RE2H4fnAtWoxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F75CCD1AB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108639359.14448.18243271315719164198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb97fabc315ea2c0f5c101f399b6435a3f049e2c0d93ed01ffcd543f3113287
Date: Tue, 21 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761086393
