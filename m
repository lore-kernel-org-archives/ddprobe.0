Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BB163B
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711242497; cv=none; b=BN08v2hOdurrgQRcmFjbfOQ1v4in4pMhZ3KKEj6RH4MSW/N0LP+bEALqmVWziapHFG2FRkVy12U0XDCvAg0YQsVH68zasp8rMgSEhaitePh49QuP3yxcweDFFXCCr8rRDGgd88wqqC/1iIgkrblsO3zPOYHu3U/m7LIK52rF99A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711242497; c=relaxed/simple;
	bh=Gb+kSRAYO2QeHnrqW79EGiPwYQeVn0sRRA0YXBOo91o=;
	h=To:Subject:From:Message-Id:Date; b=mQfc25BLfCbF4WF82gDVvNjLd8FOFyEOK7gqh9LuOKO35d38L5Kzphdt1x9EN5NCbluiHZfJsI0CZxHim04QKVFSKingxU2SAnlfrdehJx38h2yKFHlMt97OwTng+V138jEZ/c+y7pmU6fP5jndJqjnOb+VO0k6dGIho3HHp0e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B95+3iIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B95+3iIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7761CC433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711242496;
	bh=Gb+kSRAYO2QeHnrqW79EGiPwYQeVn0sRRA0YXBOo91o=;
	h=To:Subject:From:Date:From;
	b=B95+3iIoxA8iFjnhlRqVH712TDUIi7I2lsWC3i7tFMfFladthNUjoRp/von4vAlnN
	 VMgAfIqG6xnqSdBDcQGF4uZ0rSUPWXjIEHao2s58z5G9smxcPYTUJ526cIuYzYc2Zm
	 mjnK9k59BVTA1O5gwWjURXRMjFxCTjwhcZyWssYbEtdtQem6UzrzgTI688D0q/TbX/
	 b5SjkMSpFaIXCU3ItAcs6x7isOQi+0zpzXx07S3cqfNBKIVQni7hcMc5T99wRqX3Kj
	 TMeK4gjQJKMMI33afowys/XA2sOAJEMbML7m+BT0T43BAqroQWTC2grXdyB8HkE5tL
	 oSnhfstDmAHDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E8CC54E67
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171124249639.25323.13539756764512126529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc6f7ec61b84a68f6b347bc6e68d92032a9a85fb4a0a5082e79f239074d8ca8d
Date: Sun, 24 Mar 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711242496
