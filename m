Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AA223393D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783603714; cv=none; b=V6kRdWqPbdwuRVP+yaTWBRCMz+dUWFusipM2RmHui6EA/WozOnwoxXA69LX9os9rGYdIx7eHPgVOSorNJ5DTjsjJdFxl+53Vjq3cAkojo+ABlcCZqqH52j1lALpa09mBTDrSdHsRPpF3y6Smqy8IrE/aQPOLPed+GI8I9o/YS6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783603714; c=relaxed/simple;
	bh=mKYpmtghDmi7fY6ZtI4Hy68s1Jr9YFKVBqkcVWAB5Wo=;
	h=To:Subject:From:Message-Id:Date; b=CfxveFuZJHJ7vpU8c4oh1YhV3NEEZx8ZREqpqr1TlZspM8VHZMJlKec7fWS7w+drcLIfjs3MGrcFLq9QLRqwBColcipRswQBfBxtOvciRWPbPa+69pTrC1y5z5+bfIUYmJso9CRryy/a3bOxELCWCqiB52GijIvMdmjJVX6A6ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjDPxU1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjDPxU1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE070C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783603713;
	bh=mKYpmtghDmi7fY6ZtI4Hy68s1Jr9YFKVBqkcVWAB5Wo=;
	h=To:Subject:From:Date:From;
	b=FjDPxU1ORhhEkzcVQJTZbXsDEvIqNxK3DR9OwVnh7cnv1lE6vHXhIANFd2q+fcxCj
	 DtR0MGQq9yflsXsQiflVkPLH1Blim0tMHmiiRZML/8bboXsoCfxGQZmKsRocd5YUf3
	 LJLMfvyXpuDE+V/qiPV+2YoRk82KfOheG9PN2FwKShrIqAPlCKHhTr9LpZfuwcZc6E
	 M7VC8otkP3MSOQcTQshvXvZKHZUgSEDd84E5vh/AHUNPt4MQfKjePpnIhlPgNUZ/+g
	 2vrH27Z5twfCIQw537mBYBbtTyxikPe7CUioBEjoy/XrjG296+pE1/yTYzGESF4wj8
	 0RUGxpvfMbObA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A883EC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360371368.17403.6833229362655797599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8fa6d0e4f5f68c75cb464ffeb1fd224ed037426a6bad57abc76df21772d06c8
Date: Thu, 09 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783603713
