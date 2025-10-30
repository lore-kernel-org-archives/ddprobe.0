Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4B8363349
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761837594; cv=none; b=glNMFxrIP1yrmkRCuXOGYb4JhhVQVE87tx6ijq2eImIhoq3yb/9pTcS5BF1gVZIKRAcqVIn9NTkC7O4i6R6l3XHtje8WGVZM4F/QXnnSR3AbKZcBqyHpdUGZ3NMfrsxTbi1C/dNshXvg/8wcXJfB1988GyfG10bioExeI6ykPdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761837594; c=relaxed/simple;
	bh=HtmnfTgkrzyD9JyslGrYZFRgG12k6IQvNeGOqPRE1cY=;
	h=To:Subject:From:Message-Id:Date; b=ecsdY4hy/La0oNP03X2H3jdIqluttm1Cy6R9+mc3MsDDlF97cX12Ui8meHumVc3mAegZsyY02N0fMGcOvt1D/x5FKK7sGrs2B47+AOixoD0fsY6ICCWqUhIh62orFai0j4arLpd4eLBG/a0Jtptz+yT54//TWYX3pDfkf3PU0Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYc8Npwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYc8Npwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD3DC4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761837593;
	bh=HtmnfTgkrzyD9JyslGrYZFRgG12k6IQvNeGOqPRE1cY=;
	h=To:Subject:From:Date:From;
	b=oYc8Npwt2zdX6zPpMdmjBXRUOUWKXTH3p+x/O/l6ai1obRhfA1iiJoKW97J0FhMfu
	 7buGAk6PLPn6qDPHsGyHu8y8/Q6xl3cR6E35ukau+oyONBSfoE2I7wD/GAM/w2sGyx
	 n6FyuNUreL2M6yNxAGmbNBM49PWq8euF44xYpLAEhFZYtzWcfoarlYe8lRRgYsfB2E
	 QiE6Nv9phfCvYlOJ0mTd/dZyGWIrDTCYdrWkWpKZkZ4GzEic6SDMMgU1RfFkGY0wBv
	 ErM9q56ntZ+lV3kNAPYAnBKZQGeK6BYStjCmJrGpd6XxPwZZhrO9c1yQT3H0Qk444a
	 3GBGodZBqu+Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FC9CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183759358.27249.8173797515534018816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200f5b714e61460ed39f3940e31ae9c923efefb5ca867ada319ca0f6b48e06fe
Date: Thu, 30 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761837593
