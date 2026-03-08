Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273C732E729
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772976294; cv=none; b=Aajs2F24KaG+QpiLiyWlbtSBPrhfyeIVW/W4ozhx0mVUrhiFQ9D77RAhpEf/S6NPlc7EFi/WaP0z7DsS4v1XtbMApN06VWGEDCvimcDfpEigz7O3XPxTpV5JDR0RqWXoQ6U9hleEvp5pzVLDyZkDNCyQVdUMHfxPzMyDhA6sWvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772976294; c=relaxed/simple;
	bh=9dekvrQ1y12XW8tSSGO9dRoCv1fkyS8OZPLXoE8mqXk=;
	h=To:Subject:From:Message-Id:Date; b=JNhknar2joWm5NrqFBEyobeN6vJQc9GH6QG7xt/if7ZEEgHK9+uPcP77nIpg+c3bKXQ3CqljK5Yyjac+abLmmPhl3C74hcQDiMwzBonGYXLY58NiPq1DCqm6sYY/QBF5PSIVuh7LcYcddtjPaw2XzP1KLMV19y+GswLtKXwPEjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFnWAdHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFnWAdHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A6DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772976293;
	bh=9dekvrQ1y12XW8tSSGO9dRoCv1fkyS8OZPLXoE8mqXk=;
	h=To:Subject:From:Date:From;
	b=CFnWAdHVoU76zckoNcYIXLa5CBoJzX0fU/aX7fZJGdsHGb1niup7+KSQx6kHy2TRv
	 CeFtqP6nC9+YSImT4KkCc8y6Rh4Zdjx4JOwRen46O4m/emXb9LTodwcaLd79u5lPZx
	 ZCOIDpNvFOzh2ItN4AMWm0osKJY6BVc5NLafQD1EH0HY+wWRT3YwpW31JDa1dcR9vc
	 SLC7yMwDm78kjbeuKj6STb9sSq/w4iZvi9BVD4tBr5eJDtmndbE3lAXpt3kLpfJmRA
	 Z8qHArFOHk5hVurm9qiib8exx6/DLjzHq+F3l1zVbYnpRyGoB/I9Vhh3GL2vP/b4DK
	 h9tKwGdRHfrkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E5F55139
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297629358.9751.17681459705984297557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85b80c39ac444dae2543a5a3d43ea1447efc23b2d9d9b206639655606ba2c8b4
Date: Sun, 08 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772976293
