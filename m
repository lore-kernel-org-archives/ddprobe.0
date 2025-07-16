Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8051014A09C
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752673794; cv=none; b=AjrMuJ3h1TmCmA02gccEVbhF2D8C0axBZD2E1wJHMCRW9M6K0ExRSeqU8ZjyyDGg3kcIAcpOTxXQi4szFBZPURn/BxXLbN26BqEnDWYBRDUD3VQbVMTmNLaK0Yg/PRI+ZsqQUsr+pffKPnl02f/QDxEtu7fUNf5QxCwtzPRmWKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752673794; c=relaxed/simple;
	bh=l6aYF5bl1YUAa8yLao9BBGHvGvWxBUS54aC5FIEsVgE=;
	h=To:Subject:From:Message-Id:Date; b=Aem3glHd4TZ0OTeh37BSTxl/FJ66AiaKLMFFgdMwt7/IEgro9uoYzfve/SfLetE8zlSSnjFdfjhjsisOIKFJ6i6oQ2kpRuNMh1d9YqOcZiskb9hp4WUPkEGvSV+a+wexwzZWHlXTNpLbg+2ga5OpPADVo7jy3Nw3D5Wmar1vtMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LC7yQ52F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LC7yQ52F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2443C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752673793;
	bh=l6aYF5bl1YUAa8yLao9BBGHvGvWxBUS54aC5FIEsVgE=;
	h=To:Subject:From:Date:From;
	b=LC7yQ52FvvByB1KZUfocRB2lYWBGqHY9CpYlxMiBdaHOmnD9MYOZ2XDYh9Pi2Dihh
	 wBJR0360z2vCeqwztXLY/d4VvzQmCl1cKijRDNIx1HlR9d+2kXNrtE5lYaoJIFAabG
	 7dr3j6Kk48CfI+F8jk1DshkTz4IcoQsERy0oWkVBCbeXLs+mORgRliKnnuKtk7Tw0+
	 Bgqtqqnk8jJRbzjANy2YPOAlvyv3nMyFEVq4NW8lMjV32feWYlowz3hbVe1G9/fPwZ
	 vdVORNIG4fK4ko7RqHFK+k4ZPliguoUDmgj2wkdLK+3jiFXR1f+y0nW7izA8v8yOTN
	 X3MZOEXlWgYAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919F8C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267379358.4670.13504428522486523947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d5f5c7ea8a3a4babc20270d2037acd6280ea7be1cbf2fa02fccf8ce55c81c4
Date: Wed, 16 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752673793
