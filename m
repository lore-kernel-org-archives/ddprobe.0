Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F4D2F9D94
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765361574; cv=none; b=kXJF0q4J6HJpOUfxC9AZJv7dMVVW9rrzVgODfufTxuELx4nH1QtZG5GMdxDv7uaOuIQHbjWp1BgZ34xTqMpCbB6WKDsmX4li1wCdR9N/cCmRP/aYc7TO5mHsctwhVCXjSmNZFPEhkwa+iGEkTHiXm1keAVnRyIV8hdqoW7SUFrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765361574; c=relaxed/simple;
	bh=2jOgflrXgwDFETkLdlb++nxFy0YOsEvG8FiOeLoLf8s=;
	h=To:Subject:From:Message-Id:Date; b=WRGwTtpdbEhticgRd0yf7OXoDI8cuSHesLcyt9dZWYnLupwXB1lz4LQatqPUAYtw4f84oZSp+tWhHr5NsgV+Cq4jX9/7EdeaEjgfqlMa6jC/LA+xnXYziHmmLIAjb4hDYU8jLFgULDTKI6aL2KQhiFNeG54VJYQFunH7AeNslC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tz4nMDDr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tz4nMDDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25BFC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765361573;
	bh=2jOgflrXgwDFETkLdlb++nxFy0YOsEvG8FiOeLoLf8s=;
	h=To:Subject:From:Date:From;
	b=Tz4nMDDru+b5xpj34m62ge8JMVGsQXpLJHJFJTkjO6/mTiN5jxxTzZLjC/hNtqTiM
	 D81romgRDx+g1VKBO6FnTfynGbMPQWSC3CuCli+n9qdbND8FJCRXylcKwDJUJ0UQ9t
	 /El5N12YemAbZrFxlXyFGV/L5gGO6m6CBFxu5YsyNySA90JiNEkf5/kjsrzOpmkaxT
	 NJ9y9bTPCaWa3iylnz3qlTogVBkPUhGJUl0uRSV4lM+fvm4W8Di1/FGouJP0WJHOnG
	 R5TXGvcu5Q2KmaaLY0S4M3tPXpPEj8F0WF19NjzebLAY5XaSPvqlKegpMzKmgM6JZ9
	 RN43uQxrWu0cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932F7D2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536157359.16654.12496392081266664936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff2287547682babab5e5973e344ca1bf44c54678091c6ffe89c560e2ad49626b
Date: Wed, 10 Dec 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765361573
