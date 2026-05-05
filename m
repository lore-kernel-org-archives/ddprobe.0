Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C30156C6A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777954054; cv=none; b=CbE11sXaqRa7L/7Tnvv1HyGNuuwLO//Nj/u8TVbenGDBKVVG6ASsAWz1pw1Lzyu2fBe8/zkUvczd8cwWX/Yfq02iYwmajKtHIUk1SfgcRSXIut1sL+WeRBFCFWmE3940V4suYXRepXB/fxT9L0mqe/hZzCWneLkRmZ+lK2K6h2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777954054; c=relaxed/simple;
	bh=0r7bCHhmHzsmBwkjXk7N+H2SY/us5xQm1/YqoMFdcN0=;
	h=To:Subject:From:Message-Id:Date; b=YwUrLxO9EzuhUyv/zM7RD20NLGuLodgcM8lEE7AtCHGB6K2gww3UxSUp6y040QyVe7NmXikkYle7863TSxdwxd7FtryvakTms5qAZS116TTKGLCTMlOKK85blpJr13iAT6rskY9xBvBBNFomYXSCYKW5P9B8i9pyALoxbs7734Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lL48UYOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lL48UYOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6A9C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777954053;
	bh=0r7bCHhmHzsmBwkjXk7N+H2SY/us5xQm1/YqoMFdcN0=;
	h=To:Subject:From:Date:From;
	b=lL48UYOJ5FpJDl3xISaSf27sseosi2lLVaQItKoyUldZJK9zGlbCjzXpeGDfsi7wk
	 L8v6mGCQR+xMirZkzp3czhzujB+WFS+BLnscuKimQl5H1hvdUO4vng9x2M6104b0Pk
	 b+h9ArSAfqOXCivl7DHuNqBglIrHaa6CChGTFeN9xTnnub0z4LYax1zTfenX/PVzxg
	 4nU7QZFnNSpcBK3os2Nnb0k+hc2dSgUSDxVBT4SWgTJ/cOPOaxA7yyn+Dv6k2gXZXL
	 5urF8l8XqE9HVIKt4iIhtcOPzmR90WcxFjuV/MMy9DL0LKA4PHJBX9qf8I4/iRf62V
	 vjZTa+SW3i3Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96F1CD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177795405368.1289.13093707490378148990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd1e6e1ad97f4bf90ae4276d8256254dbfc479b12d240617fbbff3489de66fb
Date: Tue, 05 May 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777954053
