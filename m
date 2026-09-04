Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B6F3BE174
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788551435; cv=none; b=b4bxi92uEgREf+sIoCTbkJqhOoiDMH/lmnyiazrzEbuIZvIX2Co+hTp/8Pycd7gaOJjpAKhMrVzUXMhpFZ445nzxRLII+g5prZEy7fAc5XZLmMF6pE/vPzepnUFsDI9qOnZaCAQ0gptob0yuyWkWipiSWfShaDbkNzPltv/vyps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788551435; c=relaxed/simple;
	bh=QHw7LQDlbkrFilR23kNF8do0MbdHsVCFfUCTIl76vYc=;
	h=To:Subject:From:Message-Id:Date; b=FQ5OKHWYHRKPuBd+foVAiu325UitYamOzT/YkwHE+SgyTMexgNOtuwGm4dfNKILLlqyxBBOtaUwYf4Gsm6CxrjB1IgHJrhP5rEmNZ597UbqFhqxsC3KAndNiP0LuFoPEc8KU2/7dcbDBGrNLrSD9KtAz8gGOEiu6ggbeTZFycfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ND2xed1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ND2xed1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D280BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788551433;
	bh=QHw7LQDlbkrFilR23kNF8do0MbdHsVCFfUCTIl76vYc=;
	h=To:Subject:From:Date:From;
	b=ND2xed1MFBriO5H8v0TpahpNRLxTiKZRvzltq8WQhYq/qO6NJLO+9EjMX3cG8KFjg
	 qcLRxdjmv4M5uNYRznwbaBJ3c6qB6Ke9fCMsNySbZs+4ciW42kCDhEpuIGG9U3UlJw
	 xG33mLQMFy0JcNCsgUKLQrMkVSrIrPToDchyArFoqPApVqXUiOblMn+m4jfCvZhh7u
	 S6cm5f0NXD0OU62H+IKz7NgUfXXAMifPAiswVfHCcFGzY3GT/xRqB2Pj5XFiuiuXtk
	 sy64+H97JYTGqOXvUDt8XT/n4K8jT9vSm4idaLcEXtj1zbvglDF5bo/NT3hYOqeLwm
	 y0TZsW+E+U8kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD24EC624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855143369.20737.8063907097189228063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bfdd314f73245860c3e5f16057d7dfb7a07d50dd5bbc37a5f4aef3996373f32
Date: Fri, 04 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788551433
