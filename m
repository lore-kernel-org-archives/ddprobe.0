Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD3B3F12EF
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788753634; cv=none; b=aPFHJ81OsYxc5c0+wk6NukYfDKthaKFrblApRhSjxqxqbQPWCh9SqQ99wD2he48wYLUkYWWU38LvAm5ZxRgxoF5iRWFH5j3cynIyFYK3zwCHrXlwzfDxLOkAtaO4qf1qLQIjbUhru7OK2LOFxlywDKf9QAZjWEc0gCqRx9FiN28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788753634; c=relaxed/simple;
	bh=E7OX9LtZIwBHt04gnA0vYUyrfDcQhpnZ5n1LO39kgeo=;
	h=To:Subject:From:Message-Id:Date; b=kHU8wUhl0ZbOdIL5TMnd5rXc5Xem8k/Ya0ASWka3nIRgqUq0l/TujQGvJRHw2K5+1K7P4nlC5WY+im+LP7sASM9wp9uaFfymIKWvNwn3d+X5iI20AdDqw7+L1DVplu5CyLr3kV2oGRhDhFo5mBniWZmhQ/XGa0uGqKWyvpBNsVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8GfTPPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8GfTPPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9C7C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788753633;
	bh=E7OX9LtZIwBHt04gnA0vYUyrfDcQhpnZ5n1LO39kgeo=;
	h=To:Subject:From:Date:From;
	b=Y8GfTPPtL7M0VzCt6WM0Wt04H2n9BpVhI0b+Y7IYAFmfRgDdBDalSnRF6QsO1qqmx
	 1r6YsFoZ+DHam5zjD5J/FkI8YTKMonIFi0E35zeQqrB0eg0CNPSF7xjUcHlLHDINkd
	 GGql8BtLTvbvxgGxz/W7pIME3Gh5Oa/rA/F0ljutHgJgZy1lPTjisJXgFH8pBNZi97
	 SbRZlTHALix45ees8CocWtXeDwPTszOvLtBxctrgf+Pgn+3jIKWMCBJqPs3/Ol3oBY
	 PtcLppTG8gBMwsssOoP9K41gBcXoyVrg8dtNE9JjapsEs3LIG/EfEEVLeWwg3vd31h
	 54O72cwm+womA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B944FC79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875363369.20440.8832099860527254731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cbab124ee9d7e8c7f5f0f8a1016e325bf8b5b0061b30f995bc22d4116d16ecc
Date: Mon, 07 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788753633
