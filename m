Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0873138330A
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779538354; cv=none; b=ZQkHSs+9d/zAfXKEPJS37kyElHSWJESBPnQ/d0KlEgvPiHWDiZvJ+zG2AItVqTxdrTg0JL4EYndmRwGiEVFAbjrY7JAV28d+UnLI+fzpHyhgTZ1wD8D5+CoVdxybnwdPastTSc4rvpFIe8nNwCY1DtRshmHGxT7BJ2fm6OVgj1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779538354; c=relaxed/simple;
	bh=ocY/FILBtWQg7Hs8tlGsyr21+kPpPBYVbrSkp5Qx/T8=;
	h=To:Subject:From:Message-Id:Date; b=ou7u1091NxOhHxO/mw8V9jg86QXJrRvDzPzy0fTavyNUCimAKkUIA4rlAk61kG0eqnWLzIFU8OqeIxYqzZY9CVTbg8RX+zuqZYhzM4VFv1Na2nZXiChG1k7Ewq3uvypXDUELw5G81dk1xX7Fc7/jzjJVWcJscp6Ne9Yi12hKv0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5CSS4gu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5CSS4gu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07EBC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779538353;
	bh=ocY/FILBtWQg7Hs8tlGsyr21+kPpPBYVbrSkp5Qx/T8=;
	h=To:Subject:From:Date:From;
	b=S5CSS4guenXEDTFF6Qr8BUGNC3Vy+yfhf2QQeK+oTVaFOwPUoTNL06jaZ2grABRHS
	 Wka5lwlXB22X9RPSTB+3pg57RuNxSc0GmwIg2HlWs6vyMV7TJG/szDAWVx+7Esm4FY
	 bZIcHLby7l3L3u9nSYxzAgfcm20S9zv+NQzuuOS29VKx44Si9k/y+mlZvXqr2IRsvq
	 IyZOZfiXKeH0ryABcoeGX643h8grYSCLhg/4CigNX/LbpEvPUyksg3L3pFAg6lvJ0g
	 OHEPb3PPr9hO3aKVGkNJ1gtPS8EOmNEqjUnJ5NABSs39JywYcjn/FE9E8d1fHA6/QJ
	 sdhgm4O71KDMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86BDCD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177953835368.26816.17476158840387240032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56122c6de2033f7dcb4c5af6df96cc4a9077b29e91194c2f47394bf02c36020
Date: Sat, 23 May 2026 12:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779538353
