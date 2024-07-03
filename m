Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E5413B5B2
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720008323; cv=none; b=QpITuA8d4XUJkYlx3b1wzRqhjujs4Au5entaPnWC67fY4i22acZDRvGtJd8eEXtbZ5pwDEclc6ej/l617Vsgranhv03YMyNAuUMJxGz0PnE/DJNYmpgWp8cvv95lsCsRzFLMTWilvTs7fcSBZYx8FEwOPfsOWvBq2TTKvWVuSY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720008323; c=relaxed/simple;
	bh=ploZiyNVPjnK7OzLlpREt0i//zbBxZBGIb6AG+iTzkU=;
	h=To:Subject:From:Message-Id:Date; b=Asi9OvnDEoyqRmPs0s/qTK1W8Gud8RcfCqgZw/5n65csJE0xBt4DMf4PykUF1HADlmW6iNlqihiZCggI5oTc/2tnjgY4JNXAfDIKyHexkET2vCmNEUgBXTtB5ODLAJdmt+/0FkV21zXCOtLPtogL3j2IjhIVz6EOuvL+XHhsuFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9zlXAq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9zlXAq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EFBC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720008322;
	bh=ploZiyNVPjnK7OzLlpREt0i//zbBxZBGIb6AG+iTzkU=;
	h=To:Subject:From:Date:From;
	b=D9zlXAq5EfTZxTCEgctzkIuH3V75elgTJee4qlKM8mCjyu4WOnCdY4koSviusZX6G
	 rpbYiBS+nEIvBcXt0OOPGRJ8yyR4KBgis60agjfZl2O49i0bXX1tcy4uI1z49DX0Kx
	 +1WpkCNoaL/CmeIijcelU/v3VFVhaUXeT1b4bsw3DY9u5wZLtzYJu/FcuIEJFn5NWd
	 b5XC/K4jwhcn3zVHh5KNcq8pJnECk9258C9s3+fAO5DzaxSfjeBj+pAK3lMnDwg9e7
	 vTv0cBaoqEM/kxBiWHKYDCChs23UShEcfblKaFCnXnqOeSKaSe3uacGLsgkamCtC0w
	 GbjKMm9APmDHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE281C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172000832276.29508.7257842051312883158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83578795a5d9f100f08dbd40abf5c3010fd7d27246f19bfbf5af26178c79a2a7
Date: Wed, 03 Jul 2024 12:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720008322
