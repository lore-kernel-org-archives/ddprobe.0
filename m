Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E94735B645
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771800294; cv=none; b=qIy/YcTJRqrxJ4MKQcGAY0lahl4GVlVms6R+Sm0F+SlBBISeh5E43mYkC5xrXY2Sr9ioeytDyr40VgVoEiALtG34pzZYftYpQCg94ONRAyxgL5hPPrC8Mrd3b51qq/67/zjv/asCR642NWaFGDPPf0VEpYNzuy2+HEEroaCLv9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771800294; c=relaxed/simple;
	bh=8drwLH8OaVV++kSpetwHT0MBItZu58UOvrmYvgYgcaY=;
	h=To:Subject:From:Message-Id:Date; b=lVgrNlPSOSZHL4wJIOwn16+63YffrgiTCQIxuE5hsrzWfBLK/45m11C1bYJI1CzS0TKhWBCblL9ktVFyAgbC577gh5VqRNflIapftKxnduQPlFp4b0VZz1jJN9xummBpuN1/+AMGm+aC7SJOs21z+4PerbjSHjVmMgwyu4BIN6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gblg/Dth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gblg/Dth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61E8C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771800293;
	bh=8drwLH8OaVV++kSpetwHT0MBItZu58UOvrmYvgYgcaY=;
	h=To:Subject:From:Date:From;
	b=Gblg/Dthe3qA+8eIEM07K8i9zaP7CJRMy1sQZ+E3mh7Onu3q6roXwT2DF1q5g95am
	 kgiaJOYBHyQ53WlElp/s7m5cnyFbA+qyjmMEnPz8xX28szMp9hJemxn0A5Jh3iaDcV
	 9DeRlY6dF5KwEJsPiIstSigjBUTdfO860Tk5PKzbyizeH+8eCxDxdfmZNEYFbgHH0c
	 WqGKYX+3g+1NjsZu/RlO693KIy6zO1/EFR0u9ssx/vpyI6BPX3U9xdM639FGcI3n0H
	 NalR1RfSDslCUJb82AyDGMBosfgDn+CTrbhTzLE9P552QBMuiF4nJ2DA25ctg205SC
	 lVE6HzFsPL3Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92545C636C1
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180029359.24599.8894490329988785761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747029057c4a6a97215bad911b0f6a6fd351be26a6e5ce0020f50bcb2729729c
Date: Sun, 22 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771800293
