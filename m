Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C047F79D2
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746182993; cv=none; b=HZRJS841xCDpkCxWG3vHQcSLgAiOOJezuSbD8HF1d0F9MukYOQv6eVw2aLJg310nIybfyApZDfj66tJGdlO9lXtcZbPnUAFkEJNZnWq23T8LgbiRAXC7Hhm14FcIZzGoZC+g7mq/pI5GEea9VDekM4xZwHJRNsFlYL34Q3gRgJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746182993; c=relaxed/simple;
	bh=YZ4nMcEBRH5lb9IVr7Ntj5NT0an0rUXfbpNiI7+CFHU=;
	h=To:Subject:From:Message-Id:Date; b=Xca/9DZHToLZ3Uw3bSWJu+WBiJu5bbfk+MweYIpovtY4/rjRT3PifW42QE7Y34OQ3y+vrycd7GPGdIeriPNNIMF11CJXaDrsNWxcO1wAYDHm986sPJaBXJiMqPfke1sEF2Usoh9tOIWSv2tVKgi9ZyPtpabTblBCLpbgt8BpI5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6w4Zjpk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6w4Zjpk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3A2C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746182993;
	bh=YZ4nMcEBRH5lb9IVr7Ntj5NT0an0rUXfbpNiI7+CFHU=;
	h=To:Subject:From:Date:From;
	b=E6w4ZjpkQUVe4oMvFut83nBGigxWr3japf69/NFf6D1xAGUNrjCkuMgjHverTbrgG
	 t9B8SfuQYWML8VCvcZwbm0GdV2qNTFBKMJnLOSCHn+vwcGL98VnYxWeha+BSdz3CKz
	 5HbDre/fJRKUscuSPg6Ujg9vzVZ2EpU8hi4PJVngMMcwpDTKXIiyglo7Ka/iH4AzVF
	 TwNgtDsnGK16NoYnvaDGmWM7RmfLANiC2kcdKtQ7Dbf84v4sk5Urz8n3AI0lP4XUhW
	 1ptFajRRQ9Vt7m7eFBV06Jp2SBpdWx0QzO7xLeVze0uHzTHoALtLnm+G66o+D0JlAT
	 LKmb5mYmhmrGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E863C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174618299357.11647.16252736724539215407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d20a471e3865d1db6c12a91d1a7c0ca0e63a2d627e688c663cd0567971818f
Date: Fri, 02 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746182993
