Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBC935F60F
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776455854; cv=none; b=BudV3/GouxwiM3nZn+vM+MoK8G1u4KzDEzlXdjWHCvx+HPSn/7L2CsTayJtUzhRoVXaVt44bXASySDY5zeantEyBbm8TPYSmRUV5EwOspe4KACcYKnLHxMmiITOh5dIcGr/X5MJG5MvyY8s0sqvKsiZUJLgmWr9toqaFIvKQhP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776455854; c=relaxed/simple;
	bh=lAPRH8NKXwjl0JsB/WtomUZXQ5PpUcN1SE6PktlTI6E=;
	h=To:Subject:From:Message-Id:Date; b=ZhkIvI6EgqKTbxOoWgoHMmdlDdxRFa7N69PL5y4fc215i/jiuMvDLLsGO4BMgnHp3AHaaCRedVXKR8prigGwQrhiCDmCcXvqiVIkQmCPv6zOxnfdoETKcBS0O/iAkaPoBxArfGcRmVXn+XgBhC3cVsbwp+3XVtDkGrC0DaF9Z2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mi4z3wMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mi4z3wMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C7FC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776455853;
	bh=lAPRH8NKXwjl0JsB/WtomUZXQ5PpUcN1SE6PktlTI6E=;
	h=To:Subject:From:Date:From;
	b=Mi4z3wMn3XAZCu/4/6Tx1j3ms2yPfGYTYfK3lEc+SP69s/UaO1KCVlLpuzjeOKFJH
	 GdlaLCiIUqj+Gd2ovx1vwL5dwmi6pq/L2VSDgPbQtqbpDuw3n1yGLZYd6Oqm/hfQ5F
	 lTNZbxzcm2kVvze72cVho8QZ+POpaZX5QGK3g33SYWVdu+YTFBWQ0aVeiqj5uktB+v
	 hhw8pe0eK6tN/0SQSzYWSgX8kFSu+DDJBxL0UD6MsIyF/eZDzPwFAaAYxgxKYXtYZ3
	 o/8ipIOjzdjsdUcWborKgxaTvgYwXkPqYhaBH+Y8IlKKLybqPmLz7CaerUBDo0+KPp
	 YTKTnLmkFSBbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD407F99C61
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177645585368.15884.13703892863546572382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b60f3eb1635452a6ec10c3e328fb9b439c70c888f18e9096c90d68ca4261845
Date: Fri, 17 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776455853
