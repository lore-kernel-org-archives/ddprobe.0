Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AF034FF5D
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789943434; cv=none; b=SBSO6lITA43kv+4066DtWpGAcsZaJkm1p3MzirQMmDChDQ3zU75KnqEJR57fKXPP2lJa6PD0hKat9SK/6m7QJZkBmrIP52lnRQu4YvQjkd4lsDUBPDvtR6z9bhhqiNr+6RYEcSXv/kTq4YJ/ziGuhEHjpiLPUOF58uZmAP4GeVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789943434; c=relaxed/simple;
	bh=J2ie5GQeV/5FxVggCuJ7pSX488ygx5qJxhJStdXVPkA=;
	h=To:Subject:From:Message-Id:Date; b=dmmIgeaid97NnAMypMjFNdWbmim2vyVs1YQUbcP+ESUUvkgebRzuaUzRDJFr7U9TsxQHhjmAD+BP3q6GezOYokjgvnUpklvP9Zf77/Gom6SCTS8n9Q1OV/LLoLf+qzfw7xTogBdzPP1Z9NYw95NcharH5cIBaOAZg5Plgzog+Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXSf4Yh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXSf4Yh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7879C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789943433;
	bh=J2ie5GQeV/5FxVggCuJ7pSX488ygx5qJxhJStdXVPkA=;
	h=To:Subject:From:Date:From;
	b=fXSf4Yh2j4DQK3XGtU7sBU2xhNjcofMawmkz3LuBRAModFt/qzSfqgKIi1JUGOyRc
	 WxGw6oeMq91474uCMlKptaBQZQJ7/8x/vB3uMbz66Qy3lZM1etl3Q/wFEU/erp5fKo
	 afy35rK5REgvvhE0IXGfCB7V5EhTQ+UlVImPqkCrnxNXT5EucITlZmelsiF9J2DO0i
	 2dx6woN3nOt+oGZx7Rb/n7Dlkcu2BhhqzNpm4SdLE6iM/Ovb81QnzUPLnFBwcg6PVQ
	 eXuYVlLuuvOkLdmQ2wVnRv2r/eUALT5GGmy5aKB3FMSWbQgBM+aiIyJOpVYkm8YcNo
	 3GYZbaTTknqlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7B6C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178994343368.8758.8946618889209501976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9e406e82c1fd17561bba2e00f920d421483f8b6309c9660bfe19c121aabced
Date: Sun, 20 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789943433
