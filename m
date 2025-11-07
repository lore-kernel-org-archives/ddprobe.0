Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6F3306B30
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762541994; cv=none; b=e9qJWEyPXne+QQiFgCXzuxaYSsKppxq59rMZ3Fyiap1qntKpOcPe5Hu/6IL62Se56Z8uzZoNAAnAxP7z9jIF0+CpVJFi3HyzXJFFuSiBAuu3GPyLcxp8boDJjd4FqTTF5elwZ7nS5bY6ks3RbBebSsxfKmTXt0+S+PzxoRLmHHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762541994; c=relaxed/simple;
	bh=vL57GUPWEfe/tbkDPYsoTfDilI+VKP0U+PrNTdcq0ZI=;
	h=To:Subject:From:Message-Id:Date; b=MrHvs8ztKsS3NAvC20sApD5prGOkdBQ92WnnhsFj7D8I0IokKLb5Dmg7haYQMixhyx2Ke2/ezN0W9U7B01HKtx9cktP5cYRI7IUzZc2GTT49bBB974R5jsy2xFTcoiAOEQSGv4doPVwZyLsYYd4XgQdYmuN2QgTTlHn7d0IxZuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4bBzVaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4bBzVaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3E4C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762541993;
	bh=vL57GUPWEfe/tbkDPYsoTfDilI+VKP0U+PrNTdcq0ZI=;
	h=To:Subject:From:Date:From;
	b=S4bBzVaZz+YBE/wkZxAb5LI0uGo5JCCjDxQg4uhd+EGelrLizHG1x38jrfPPDy3P9
	 elyPP2rLsBj9v1/EqzLvbVD78kuoQQOiHVLSKPVrNfaNiJVIU1pz4qClLgk75L8MJ6
	 rlPUfqProh8IKmRoAggztawcZRDMcYA3Ayd6ua5+q0k83Wzc4fPc34dPuZ9SxBxw1W
	 7bvZ48noM2ug64Vk/NuP38qobRqeMnB6Lg9qSNzBubLhSS9m3psElcHpcRdwwOQ5t3
	 4kG7ybEYsp3mP0dtipb2j4pDtWM/lUrLB+6YGPvi9kBFL39UxqsOlaoL724qGr4Sy3
	 5+rkAvSi7O5Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEAFCCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254199362.4841.15072074075717295877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec151ff52083e0bc5e12c43d886dc3ff0f06b0b1c640fe74d13cdb8c1054f61f
Date: Fri, 07 Nov 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762541993
