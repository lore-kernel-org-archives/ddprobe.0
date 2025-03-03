Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F151EF0BC
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 12:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741004335; cv=none; b=oloEpVnN7DEQ/qcXW/8ESkQGX/1gwrjzjoSLvolkOWbJFYOmeRBHdoBoSd2rbW8Gp9b8+z7lZ9nLV5m28miz+GPTMc9zy/LdVeA3kWJOJcGaTDWcvphiWpam4tglbpFR/JwP5z2AKZQOP5zaCpGEUpjKFAK6eWmJDnk8/eMj1TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741004335; c=relaxed/simple;
	bh=TVloeZRJlOkB/twGlcop2JwsGcwJoLhyMMxyk8/RHuI=;
	h=To:Subject:From:Message-Id:Date; b=jVocUt5+K5rEOB0JZldoaDG+KHUoxGPSFjmsDVTPemaS5Fmo1SlaBd0xT8rMUsIDVIxrPj+2qkyHH+KXOPW9s6zJBBCYiS7IAX4cW5+v96+m/yw/TmSWCvIUDzGe5a3kqCF3kwPL+s6OaFnaBiis92pAO22Ufv9g4dySuLcFAyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5zyjSb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5zyjSb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0326C4CEE8
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 12:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741004333;
	bh=TVloeZRJlOkB/twGlcop2JwsGcwJoLhyMMxyk8/RHuI=;
	h=To:Subject:From:Date:From;
	b=g5zyjSb+ub8UnucCCZ77HGBn4l+VWBBs9/Wun9fSmZ8vQn/HPBQOXEvE7/Z+VZ17W
	 bMA280AgAn6LiBAG5QKb8I8OpYP+jTzA3Dxh9a1ASai5rqY82nrodfMcZgOyB/sopA
	 v/P9+GjhXSBYivVKUoEWBYhhW+NurnBMIX6b8kdryh5VzUbdfDlvazhtCFBXoxjHhj
	 ARrZDTp7uxWv1v2S4K6oBeFS+0ix2dP87MEJeIO3QulJXGwe5s38MAfnbl57pBxOpz
	 uIQeH07GCaJsDGw5zxM3Fc1sVhJ9gRX9s1gg+HFUVaHgobrEd6raTJ6QiNmmZZUCFQ
	 zQ1D1A0MKDz3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B16C282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 12:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174100433358.24193.18315966286731007141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3d0bdf5f3be3ca3c4f9768350ebeafdb163de6a63f985678735ff8a35ccc98
Date: Mon, 03 Mar 2025 12:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741004333
