Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A4723E35F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767923634; cv=none; b=aG34jbp5HP15Mdnt/Yk0sfFHbTSLbShEId1goJu9lqe16liwE9VbxYp9sPx4BDWGMWI0sOAS396RRLz5sq+nzg/hyRAt4feqKbc1+aF5RNZXVvmIZhSFU6HgWvDwihCqh0oQwhbHse/bCDl5jw94qjXNa0IwFlBNia4akjIvwVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767923634; c=relaxed/simple;
	bh=gpD4ZeEPmzZ30xFz4ibe79OArQ7dRQ104SicCKaVNbc=;
	h=To:Subject:From:Message-Id:Date; b=Fgt+q6+zfnoEUVQMkZbwzNr2kbIcahjnTXKQ4ACp8lKUfYwlG8P2T1PTKXTw10xG8CQVJRz0hTSAyz340KMz1nvdn3CeP45Q6Exga5waRD57vMuxx6uJZSRmFMM5NbrlIDCmx3GxIhhFuV+W/x8cpmTCptdwDlZwUZESSRmVXxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tm3k9Djt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tm3k9Djt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF46C116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767923633;
	bh=gpD4ZeEPmzZ30xFz4ibe79OArQ7dRQ104SicCKaVNbc=;
	h=To:Subject:From:Date:From;
	b=tm3k9Djt8G/pclJkT8UrdhJlZB5piaXhSD5mHNZPYTBtjTN6SPKyBZD7bGXbKsndj
	 ylrCOktdKV3iY2XoaxGV/+aj0b7EAGkXGPas8/tUPpHlD7yej+gbameayjHOdLWt/e
	 zrU24YrIAUHm5GrxSQ0mDQr2WXrUqEmy8wihgEeYuQybaTc25oPrZKBDQSaloxJbWj
	 83k4EbkIF+otQ4dp/uszeqfkYRcz0NNGo9otcUBGa9KTkh5gp+ulWU3Vgzowpexqx9
	 53ZOeivyJlF/pTAijhCseYnKtx0kYnixam64Xj7Ygn0s+vYPTurTQQGRJSOd8W6Xwh
	 DvUDksOJJWWAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E953D232CB
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792363357.14156.7581027837491112062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 531b1153ca9ae3f7c36f314548945fa40bbc7cbd9e7676136ed76cc7944d3409
Date: Fri, 09 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767923633
