Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AD4433A6
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742750995; cv=none; b=Lyp1SeC6y/5kx/4UGhuvZLgWBmUETaNKQ2r1b79+zPMl+FhiTwmqJSiNhOVtNT0plYC87ZGkMFfNv/xPls/qvLb32GC/r6frKdHp/V7Rlho/cpKUR0K4QP3DuSnex+WlOWS1hFoaBzGqOy212nKfPGVw2D0pbfKx2dFfw2LX6Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742750995; c=relaxed/simple;
	bh=A0xWn0CqGz8Zhn9IONWSlvDx30f+cLngP+YVkuWb/pM=;
	h=To:Subject:From:Message-Id:Date; b=lLEnD2tQ5lAlhx0aCkWG2nwvi/zPL2ER5zn8bMGEQhYT53cATWtwisfq2hzGac5qjqhatSjkUhbn65vDlWB25ExtJIkqSV9H8UZjDoHNXlql37DinVkfxLKG5U1/ZyBaGCS5S1DCQuG57nZil8sIfo5zs+VcYVFM20Lr/XvD8fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEYB6Lzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEYB6Lzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2213C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742750993;
	bh=A0xWn0CqGz8Zhn9IONWSlvDx30f+cLngP+YVkuWb/pM=;
	h=To:Subject:From:Date:From;
	b=oEYB6Lzh5wkZMy7FITMkghyzB92NBJa+xn/xFwMna0u3fAeZ9wsZZBDWEa/6buBHQ
	 FthJLsxuxBDjW1BPh6khg8DB2bmK6H+0oHtG8ve/i2OleyD/n0Z46IIP8G+1DXVCPp
	 1emx67mTa2Gj1L29iUGOSbcBSd+b/qpQ1nRQK4r19bHFuw48c64zsgX3EL1GVqMgrB
	 h/Er4vK4CtnTze2Wpv768vQT2bE+8zejksbV8xAV5jZzpHww7vPXw7kb/wcz5B5eeo
	 bAnqIp2A9nb69ukvzJK3baOntb0R2eBTk819WWAte+vUXAYrhQ471Rbfbh1xOUMMES
	 UCkJjHf2//X3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BD9C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174275099361.13857.14810878693662658096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96638cdf069897206dc349dc23a4e5fd7c0c62d661252135200d6a7dc5dbcea1
Date: Sun, 23 Mar 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742750993
