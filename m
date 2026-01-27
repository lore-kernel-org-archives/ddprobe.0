Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F0F221540
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769537034; cv=none; b=cII+hrUwLyY1W/43TDG+9nJ65WWzhx+tl3/h5q9jaCbbK2WaVfyWcgR7FI0icf/U1qLr56n/cSH7LCsQEq50ggL3NJHYaV4wPzt1hNXeA8x40nyGkmQQlpNxfqC/HiZ4J+DZEvSzsXzZC3stKefbK+oHDE9F/dZ/eROuMrxNU8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769537034; c=relaxed/simple;
	bh=y9MYeEOkR0oiGdMhBlDyseRKCDzLk3thb7dR48ybr5I=;
	h=To:Subject:From:Message-Id:Date; b=R4LZrW268qI+3/pJ1QCA/xApwGzfKTKBp6/2hreQQ3+9sZHzas/oc2v8Y+ew+svrQAe3ID/PiSzClxN91GxChN5oAoKYYJBtjcQnTF3xNW8LDRvHwKmil8/sZtzap/0izyC2mTGKg7PyWdfcqrh9XwYx2Zjx0/11emWK6K6T4eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtF+QxMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtF+QxMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA23CC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769537033;
	bh=y9MYeEOkR0oiGdMhBlDyseRKCDzLk3thb7dR48ybr5I=;
	h=To:Subject:From:Date:From;
	b=CtF+QxMBU+dEuun5mXYJqJh42Jg4hYyhafLQv2deWC2+v3udQATw0omi2dZbF/mnF
	 f57ClQBANAx4kxlOq7md44sr0I4VsdvJtwrPhCnHWOETGy1MIpC8LH15TPPZqef+OI
	 3VwN3PCVVYpoRMlif93kRZKPxRYGkJgMq7zOaUleRYWTsf9qWVvZbGzLswodiKQNtu
	 M63y8n+YgThhMa/75cwjAZK/Ok0N/WZWA5WqdG71PetV8Z8yAXkLcSZqVmChjOKIF8
	 BlJOH5HEl2aRXHV8kC7N9ToX8zrD/ubkR2H3exXFaGV9y5rwyBuj0P0Q2x92RTDOCO
	 7x9+pAslz3u9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E82D2FECD
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176953703358.23020.12126499095757859827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2210d6782ea7962b88cf5dc9c90766c8c6ec0604d500e29bdcc55e99424b1c0
Date: Tue, 27 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769537033
