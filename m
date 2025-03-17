Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F07E202C48
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742230194; cv=none; b=Fok63DK7/uQm4oU/PayYT61Vy0fzzitdFR+ENwGIGWkj83NGlaPlPVEXiBRPXxfJkHuhAe6z5gcIQ9GwNwRZmzMrMhDG5HBPXtyWDvpmmk1WBxbpSDpCq3Xsf47kONgKlfnJR0TciYfcMJggJrlofZUag5CULKbGyUFjH8wQl7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742230194; c=relaxed/simple;
	bh=qSGloygNLRVdWwGnx/xn77Z68HcXJ05nFVgAPUcNg4g=;
	h=To:Subject:From:Message-Id:Date; b=QbL2s9hVvkz58wlSwPRiwihdLeKCg/uLzbNDkzMsW9dco3eN7TCylGy2BRX6IV2yRmnd6vgfIz4fErpZfBZcMyiHvnzf3nGOuozMUzwzFxDS+hDDgXFtX/Xmet5uf0OGlu0jsWzqcVFht0FYSXKvyNxWEENXRBcRRfUvc8TlLaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOUnMvf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOUnMvf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F68C4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742230193;
	bh=qSGloygNLRVdWwGnx/xn77Z68HcXJ05nFVgAPUcNg4g=;
	h=To:Subject:From:Date:From;
	b=HOUnMvf3hDHyD5f2K8Q24niZpG1q1LgVZDxozSTYRN5hC6LOWIaOp4TVqaCo62zD4
	 yscTzcsCS469o8w2NkU5Dvmtr5DAcRFkzbd+ThxdX43pXTF51t5U8r3g/fsNDDl/X6
	 CSHyNacnvwUfd39nQb8VoQYZ2AH2sUn2VsVMSqoCzKy2wRKwPzwgP7JSoNaHT15BcV
	 PanADnpdJvykx9RNhqTOdAA7RE9hGYVaeD374t3Klo6vVQdG/3ixCk+iNPiyXzE5ow
	 u2j0JMsiruYniIreaD4NyHJ0ZyZmTsGOXOpL+8ygEfyDJfP17MQ6w+i80213pRb5gA
	 b1WnYZLemfzoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D205C35FF3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174223019363.11695.3202956910911496257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 468b6a0cdff82851d24e1e045b992e99ef7f71bf2168bae9457b10322e6ef458
Date: Mon, 17 Mar 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742230193
