Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE0023AE62
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775702734; cv=none; b=MYEHzkBGXQx38EjXTjvTSwbC0nQJ8RzYd7M1CN+khgKAjrXK0Me2BYj3eqZYcmU28v6wUp9wdONwNLcW+iSFP8o6nbGlzqCGpXVSt2AJ1qP+5HMPINoA2b9eCXX761PsFIw5WM5Rw18VPVpTDjMg8BJz5f2hg4XYPQupgR3ww4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775702734; c=relaxed/simple;
	bh=veuW6zIIjG52QuNIINJ05VJkNTsM8Ho2ZYtaP41TOck=;
	h=To:Subject:From:Message-Id:Date; b=bDRqcw97TUpEsHnvOuImcho8v4eH17n4vWgimlMQSR3eXquA9vnBlu+oyCPn5jwR3rA2LQyWcXYLQ9cmKqSYMsq/CjYg4WfcAuH1Ly2OcaVMKRsTEew/PptIPvZHJ9z2Foh9fPyskKGMuPkZAG15SXsqIdbmQFzLCL5iXL9sMF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsImBbK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsImBbK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76E5C19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775702733;
	bh=veuW6zIIjG52QuNIINJ05VJkNTsM8Ho2ZYtaP41TOck=;
	h=To:Subject:From:Date:From;
	b=tsImBbK8t82Vr6/K5rdNrG5kx5eOq472kbsUgZftdaiLcwrxSEe4SQgdu8cxkCCdB
	 SKEFgQ6l2njuibfUZeAYnNtB0mDxpd0f7A6rNEp89YDXmYuxVyTgN1RilOaKZnkWR9
	 5tkdhJj0mnz3L+LyFMJtYB8KtRGHnz7lztTCX+Ppoy4bpvXvKFjijkKYUwm6vv/d5y
	 vKaTdg06IPeRbdrkQR68y2ZtZcgjJnVKxkEJfQRcVDwiNjNOQRpp+SQvH0VCyGBDcN
	 nYsTNp1TYjuAglYwTVqDMBFuZ7Kd32d/nM0bn4vOFeYToygUNxxzR2wu3KqqGApQ/U
	 a4WUU7a1qM0MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27D410FC466
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570273369.18950.15940392364515173206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 825d6f804a33cafd7cb981bd2cba3b512a9575feb0f63ede1945531cabd36dd2
Date: Thu, 09 Apr 2026 02:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775702733
