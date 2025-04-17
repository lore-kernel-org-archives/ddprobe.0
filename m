Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DF825335A
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744910994; cv=none; b=idlDlrjbHjyHJzfvkhVMtYyDQmp40C980jSYuGXUc1Re4uxuZh4wkjjZV3QPjsZwEEhw5TtmE+nUmpX4U2+Tnm23l9zc1thZr+SCbAb17+0tGVXllRo2UsDvma3of5ibf8pHPwOlYaMQwy7A1BLlro1rDPQtJOZJVYO+xM0qNDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744910994; c=relaxed/simple;
	bh=dvXp/MBDsh+dQjf/6YlXYaJWAGXI9Ffb1h0HkGR5ke8=;
	h=To:Subject:From:Message-Id:Date; b=IvktKY6f6L9UWiEEWGrKDu3YZZEPH0CYDfLL4IWxht79mB6oqzCmQn/4UhCAwDMO6KJjmsfUVhR4qBcorZeOc7zvS06pHHMwK0R7uVPNV5Ln0JF7P5yluqdSDRQ+YeH7TkqnUQNxyfBMWSAQ2KZKyfg/0BvUSFI/eJGwiYRLdR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lej/Txns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lej/Txns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB884C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744910993;
	bh=dvXp/MBDsh+dQjf/6YlXYaJWAGXI9Ffb1h0HkGR5ke8=;
	h=To:Subject:From:Date:From;
	b=lej/TxnshS5dqmOde2GspO3mkgje++Od02Cqwmp9VOEVHFLGkh8W5jilYN76E9eaL
	 ctiPr+Zu7TJHmH/drQUjDCl2hECg0ItK/VxTDelJc+pCRLuBhjIVJGMX2C3erMynyL
	 dzvVbrpxUropLoffXqacBTz2XrlaZawzPtR8q990CFjdaaTRTrq8a7wwmfnTx69Rx+
	 gFmkYoP+gXEscgReaoHec9dGIxiBAA0aujcVdXLizLCQceHPJ9Ky7BBqKOgNiYnHA/
	 WFQGalw//nGYcJhxKEaKl7japghY6WmS8t2CNs86NbrZQLVXn2d20a57m7kljSCasj
	 uDYAFgCOpuZAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9846CC369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174491099361.16715.16493854705597067821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab256600ff498ab87dd5bef072341c67f563c79746d1435cf61361cf089171f
Date: Thu, 17 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744910993
