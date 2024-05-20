Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E66136E2A
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 15:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716217943; cv=none; b=Uf+EkLXUkeQ5NUUaG1gdUhA/FYvR1aY8//HXoiV4U/MgrfAPMwtZvh3L+MVVdaqJ6VEFY9IDs7j80VFXhvPVrooXmpmAZlEmLzGaF2pfs1JZMQuu+l+GpYvfxrewOwzspkDHW1ecLYgOuJsDbMRZIVc/0uYxyOD6r8ETmxz4/qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716217943; c=relaxed/simple;
	bh=XiUBkM4MOSWDq3w7zyrooULsmHEptjWfd2yoJCuoyOQ=;
	h=To:Subject:From:Message-Id:Date; b=b8r55n8hutJVfCvqbl2kAvtOVFifee2vgtmqLdekK7c3aSIn/fqh1xqm1ddx7PKjXnbt5tlxZOJL5X1ZynhpkX/oamrhRIi0VkbUV17R2gkSieyn9cAb77OLKy/0kEzBEhBbq2xpfXHrsxVAtRVgqZMYiSZVIue1QLgcbPqJFR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3kgoAX3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3kgoAX3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D638CC4AF0F
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716217942;
	bh=XiUBkM4MOSWDq3w7zyrooULsmHEptjWfd2yoJCuoyOQ=;
	h=To:Subject:From:Date:From;
	b=U3kgoAX3wFRZ0aSjWXb0ukJo3snToRzbBvUrAZvXYIOLWYuLjsZAb23WNw4jZ9nBD
	 dxz7RlWV2lQIc1BYaRoAkL5L0cFq+ASuYCo5KEeegvIRrbmg9bxM+PhBb3xu0TALSF
	 oxafIULY9ATr4Okii+nWGlAN5edWXEc31jtczy6KPnajgibcYPOvCSD2f/tto4GUWl
	 J5kydgaHowkdOr93s2942cQO/ku5y0xtvfgHgeV842ZS36eFg0JlNUxe+VcGjj87jJ
	 th+h63hmCl6HZ+mKqItpMqzjklQe9X8yEDmNEXOE1QkZCCbLH5BlG9pnFFV0lmVzhT
	 HLTmS8cpp5dEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5912C25B79
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171621794279.21900.7657875490459282328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 366ad910912d53620346b3cbdbaf25a2191efafbd4f39db8f1f510e671db0c8c
Date: Mon, 20 May 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716217942
