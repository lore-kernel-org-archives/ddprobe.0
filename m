Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A09213D539
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780702474; cv=none; b=gpVTeiaP8FZDrkEFBJkSwjPXLScRuhoz6ROTwt3ptBRsEgjtCkvvnFRgi+76XmigS6IMdPebq9UX0uECQpMEM37AHTIJW4iqkr+WiHQcxbXxNajU++bHNcQBrxCH5XXGmk/xOA+bGN2kdOHD+XEBLeTOplToiFbfxfophQ6/w6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780702474; c=relaxed/simple;
	bh=iYxkxWdcjb1dbUfpQNBLNXGdXoTcUUqFO1J0e+hSvao=;
	h=To:Subject:From:Message-Id:Date; b=fiSBqyOMkhHovhFcf44gfTEDCnoLxwmR4um0x7wdeDol50bqf9BfSpCiKOwEoSG+CzN//U3Dbctrr0FrCzttV1qaJSERZ0hMUFTE0m43P+9m4KudFbOKBjTZh+48rea7SWRqgDnMnM2483ZBk+H+EhsuKsloOnzujuzvMznXXTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZDlxa72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZDlxa72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE341C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780702473;
	bh=iYxkxWdcjb1dbUfpQNBLNXGdXoTcUUqFO1J0e+hSvao=;
	h=To:Subject:From:Date:From;
	b=XZDlxa72fwb6131L7hiLncECUEx4GArAZkW49pQKlG3S6qs1kMD45CGuKWfDxgFsO
	 8zOnkAqi1ISkMMmcfuOh2AEBUjyD1FZXw0ySCZrghH8vAv586+O5qZd95yLhbupF2P
	 iFCYB51mCxly8UClqjQ+QPtxyPKUtJDlqyWn8LO3I6ZbwMtZK+NGG3mXOJ80/SKeLw
	 aREGTToqft/WgqSQjgtVRn2P07AT1Bk8vvfWVkg6XPveVokWew3CijvdIvOmpLuQge
	 Lp1s0eFu2BFh7FPRi6jbNHYxDTMfBnYCr9zfHZ4SJbR+mxEZ4iM3Uqy+ULxA1IV2Ek
	 8iz9xnVYH7C3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DE5CD6E7E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070247370.21398.18251555786668048164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836e7a4411d2ebbf10dd2abb82af772184fd3bbe1bd1dd84c9a097eb98136384
Date: Fri, 05 Jun 2026 23:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780702473
