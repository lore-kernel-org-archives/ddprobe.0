Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDE34AD4CF
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790274634; cv=none; b=EXJdhTpzmoFWhVm5ACSnfJVDpVFPG/eCDBdeudHCXeWL6DUNQ3SeR1wP6I2tP2GrRnDCugyNNqAYyJrbMNYpzw6PLRSfhOLljcuTIaUYzKCls/WORCYzs01ici8/efGiV6TXreNBR2RogXhLt9xDKUpKvqkBu0rIswSvLSJFh3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790274634; c=relaxed/simple;
	bh=Qt/uZGtu20ct3QFTGWxi0dsy+2UdjMrD8U56TRYMfVg=;
	h=To:Subject:From:Message-Id:Date; b=kSscqoop/9g9cesGnbC3/J8xdd8AQ+yAuLvlMoaCLJOX1YR6D5xIUo6+XttRxLcMeYjWrVNtjwmiAsz/9k/uc/POrV09ZAAFtO93tKWQsWDvGRsjG8TKm1TxmYhhhTOaGCZYDHXvAPgPf8cuIlvrGBeSm4hjHuZV9Oj6ulnwH0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8PeVerP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8PeVerP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89F0C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790274633;
	bh=Qt/uZGtu20ct3QFTGWxi0dsy+2UdjMrD8U56TRYMfVg=;
	h=To:Subject:From:Date:From;
	b=n8PeVerP0jSe4hJjfmv3sre4ruOkOtRTzc6aeZEoVPtCUihvJC8Tm9EU0U+svwShO
	 DresdhVrRzuyc4aJNSKf/B+KsRfX/dkObzTUHtf2abyR3eQV3MWMs5dEag0OTZTvof
	 QHRscEt05E4uPz8bqrJG7VJDQE2y1+vGYd97ME218eHYl6zW28UOnfGL/5mYO+A6kz
	 ALVvjbm4ab/RYsPQWGoI+EHqa2j1iGA5H7HJJUzkrSFnc6cyRBuD8IW6xBQ/2cAGbJ
	 Hfe4CultM/xJv+exjdemxDNPYByKse+IuQCRBJk8p7a/QnliqSucraaBNVNyCw70P0
	 ySy606ZNIntAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3687C98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179027463372.24495.12919977367560380671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3df3cb6130d46003abe4e50ba993e2b5a70a4ea0d25870b92271c801d1a4b47
Date: Thu, 24 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790274633
