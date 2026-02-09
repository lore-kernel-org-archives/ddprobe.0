Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0AC21B9C0
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770608634; cv=none; b=f0Xos4p9eDgBNuhl9kue4iior7oOmthGdA6N6cKt7yJIMhCf1KDlZvcB1ug77pS/2Lcsa37E/qK3rNM94jU5Xb7CI4eeAcvDVZBV8OZpURJqOXokRrc2G0325qQYrUB+qdfa5TdTritqQOfDRL80YSOx+D7lB/S1BXRizBS+8zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770608634; c=relaxed/simple;
	bh=Y57bZ8EfeICMZZAvVM/AtAnKahDrOtLKw8yYF71DI/M=;
	h=To:Subject:From:Message-Id:Date; b=IYQp/jr14F5hwz8JrIDmtiWabY3r9G7//MDnqQb+GAP4GOzTbmda/YgLC6YFy5hGXD0XHGmt739A8twq5gG2GqILMMa73s+rA/2bRlwyzIai9GgCLE4Auc3A9/NI422Zq24RTrcPDpzX3ar09k1RN4kVsg91iZ5dxUudiJhazmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZ3FrKnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZ3FrKnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB722C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770608633;
	bh=Y57bZ8EfeICMZZAvVM/AtAnKahDrOtLKw8yYF71DI/M=;
	h=To:Subject:From:Date:From;
	b=ZZ3FrKnlE7cLgA6upiIAyaDAdHg7o0wZRmCosxnKLHK7f8qZByRSPMgXbZ5ROZwFv
	 tYpLmuDwfRk3MvIWEEYvhb6nf/YSUFWsElA5ryPjEBLzFlZe10eWCt7T2+mqHsyZp3
	 OjYpEzeJpJCezDy48qo8ndBCcmrByAZEnnlbwXBPNh3JWmiVqTnWjLhRAbLk9StMwi
	 11tD0fuJmVfF/Fw6nY/+25Au3cIBY7IsptegSJOOF3VnlvZeqRaf2E9l7hY/2VTbOc
	 hJCRiI41jNby8RtaNIdJQLNl1w8+KynlwabG/3G+xAvDVvf7E+b5gqCluiyrdq2Dzc
	 fDiyHZ0UYeqIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A171EF0702
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177060863360.10492.3398206496448295480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86f1ac9d06b98364ce725a80b87677ff6154c7004f9ad0a881cb424c93d17e6
Date: Mon, 09 Feb 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770608633
