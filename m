Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361DF3BA24F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783285114; cv=none; b=RSXmtT8wNHnkay060UUj45q/gijRnvgc0WwN+NrIAz+gKTRK01XH8q8IY8sBXHhVgEXf+H7FJ57wHF83nwknoypr36HxotrKfVCKHK57towz5irRckPFzn44YJAgSsrfw7Qj7+PeJnBSxouXBylZniBXbThSFfKGGBiNnQRzkc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783285114; c=relaxed/simple;
	bh=kFYHHyITmJAcsfLh7toCnzXxj4B9ium5MM753c6ZYUU=;
	h=To:Subject:From:Message-Id:Date; b=X3CC3BSUqZt8xQs3Sgp2qUtiz8CQi9x3BVMlX+55IEp0Wkxza3sGpGR6I3NX+EL48/mFjBE0SzMlLy4PjZsV+KJbi3txlLbHpPa7sStsDTgmqHW9t3WqlQOWBALsRCFsSgKEVBLbntQS37jB4aAVKWhPx1PNUXLwD4a4SS/M4Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0yTLiw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0yTLiw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC69DC2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783285113;
	bh=kFYHHyITmJAcsfLh7toCnzXxj4B9ium5MM753c6ZYUU=;
	h=To:Subject:From:Date:From;
	b=J0yTLiw3LRTL7IP4y/KO8MFVRD7rGtJYMInpaq/F3ihZuj571Qu7dn6TRRoKbOjME
	 4+tOxdMDTspVQ0cyhA6eD3mx9GYXyEX+1qCAzgV65uL/XB7ZFTAqab4fqGvB+W3Niw
	 ux/v873j5zWUVrazZGkDl7Qtn8zDeyCmAp6p0l1DzFJMZ63PhqzE/Tx41nG2RmbSph
	 ootVjEdTgIrnYuxXB+CFjxGXA/D/FzFPzd9arOd8FZATDva8ipRSfEksweVSg+PQoV
	 2iSUxtWREV/p7+WkEG/xxTYufVJQUJLyeJVdj6eUBjp7aPTSUMF03MQoLjP/TjRPZX
	 ISOLr14O8ybfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54AAC43602
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328511372.19500.1023677550411563363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1daf3b173be69e016e7c9876de9c1f8b9f412476ce28fa73ca25808fbe6c44
Date: Sun, 05 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783285113
