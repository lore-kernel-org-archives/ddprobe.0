Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0381E49E
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722227754; cv=none; b=qU7RDXpY0GJZKfghg4UkCgPPuy7RvFTehAaw2HLOaMzOFszfM7aRcou9wG1ieWs7eiXD2yMPYQHqYtgUomyXAFTKPgu8n6EjoICa4QLXd3bhhZObQcmslB5XBuWr2jI9mMAgclO/DmP1FwYhZeSAPiKZLJFR+fX2Dw6K2c4esSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722227754; c=relaxed/simple;
	bh=HP+dFjnpLkGd5KcVOOx1RPwtfV5KpanByS+yTZk+xz4=;
	h=To:Subject:From:Message-Id:Date; b=lRPnsI7+0PZUThRttQ79KXa2AiemCyopkX8l6yJBUwh6IdK6cwt9cF3/v7J0OQzoRXqe2ds/7SbMOqcmBW9Fvhzpm7khCADzXsFQTGIRMiSeRbNb+bQZnRSCVESBmqHIM/xKI3fX+hlGzPp8SNUQ+4Sr0efDlBbjtybt5XgdJ2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgcpUDOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgcpUDOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA33C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722227753;
	bh=HP+dFjnpLkGd5KcVOOx1RPwtfV5KpanByS+yTZk+xz4=;
	h=To:Subject:From:Date:From;
	b=JgcpUDOfPHQDBuj4/nKEbdaCUKgxAysQHa8xoWTifM9rfzCftXjP0rLhnqoZh8gUp
	 OGkIDi5Bi81uLwfICav2d79/D+r7G4TV/EwZRxSpTzLGUQqVVthDNNHBnz42H2xmr0
	 pfWxLt5v8nWowCnvYKG5x+6TKqLnWwFkIgui5i9ZDpYgfpwKKKb8eYwRONVJfeT5DN
	 tLmBtAluZUAmyC8C3XwXiZT2lpe8vAZJUdAcavxGdowpwbmGPd7lhmPjMGCeQ13efp
	 arRNKZWeZWAEkSdQdlg7pne8Q8WChEHOJc4Ua8G5VWTCCxevFXXA71RrVTnEg8IDRl
	 ykmWgU4UxPIyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9814BC3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172222775360.11245.12152100828523709746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6446c9c6f20dfc088b7b0c900fb19fb8f3293c364632ef03fa5638a909d2c03
Date: Mon, 29 Jul 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722227753
