Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDAB35E930
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784872234; cv=none; b=IB4yUjokLAhpPs8ZWVoxTAtijvgkDHeOtQM/+caDejwlN6U6c1eR/kGbNIabDtfZaEZjhQtCczCjecPUX2m5YjqouSO/5XOAWZHD7v0DNr5xvv9qTL3XirN+EJf3AhtiH89enrUW9e3YMDCTuMw05Jm5j+xfI7QqVFYWU5v2EqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784872234; c=relaxed/simple;
	bh=tB+nMgPUGE5h4yxIzvc5hFEsTpKZ4M2YBEsLBT6zdr0=;
	h=To:Subject:From:Message-Id:Date; b=Suyu1bsJjdlv5znxb4PnOqtfpgBUaLsRpK4+kNzbQLBlJaaBA8RNFp6dvJViOHChnLQVcPRXxCVx4eMtQCYCarq0NSNotxTgygAegZGn4+sVHugRg+yyR7ZaF+17L22utWke1sJ0friXsFPQ8Hbq/JstgX4j7I0bR9bo1vIvLFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eu8XKwQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eu8XKwQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8648C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784872233;
	bh=tB+nMgPUGE5h4yxIzvc5hFEsTpKZ4M2YBEsLBT6zdr0=;
	h=To:Subject:From:Date:From;
	b=eu8XKwQDnZYaJtr88rxzhdXJYShMMhMzeVsTfepSxAFPhj7qNcGABW7Q2KU0+Pa5s
	 quIowVx++0nRsvwxLi4SFqraIha5d8F3+EsiHDhZFxf2xHenFe5Mbkd8LwISNZpx/H
	 sEC+cbRZ5WsogHpyZs9GWHSn0INZQM4+8mHzf4YqvMj1Xl6UXuIn2O1rA3bvZ6kZnS
	 aj7F30RJ6iF9/DAUYq8bu5enp5H81BpjI6LRPkuxPOGT694WPgfRSl0WiawsTiKwKl
	 XNYKFqZsDWKdJ6lxGh4Lv8QDeFe46M0NGBSDFl2sGC+28bw0WtTPYA4UTJuBCzhyfd
	 OGyepoBrNbMuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2548C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178487223372.17059.13348856123468590241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1debf7d89acf29d0bee32232b84d108407f6c6e97e2058f8a8b13b6d3a7b2e
Date: Fri, 24 Jul 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784872233
