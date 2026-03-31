Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0FC13D9034
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774957494; cv=none; b=M4sIKakVggX3dObvroQdJjj+o99MpbfzgjnGL6mj4zCr5+GVTw/AE0woypcNjl45YBQGPztWVhi2M1cYIwSGl6Edmtvp1DiGuPW49Acy5IGjTzBJ8OORi+ryxgeyM22an1gUCuGnQMdX+wuiucNcnT6KlBUZrWNo6/KAosF0p3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774957494; c=relaxed/simple;
	bh=Bm/GDKdVpip2GVNJFPjzdiRCVYXrlTeaMuzaL2xHfks=;
	h=To:Subject:From:Message-Id:Date; b=ZBqJjzyucOT+43ZH8gOelU2N5hduTWaeAxelMMSYZGvzgqPgGlTDWphDqOWFEWegIJi/H/HOVHBU26twTmkzEVAALyRvLVLksiV9NsUpR+jcW/SRpUF+Utap+fDjUGm9v69WFq/MRdImX/7+ss4768aEhfYyNDZsP65lE6lg1Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqhcfUL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqhcfUL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1141C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774957493;
	bh=Bm/GDKdVpip2GVNJFPjzdiRCVYXrlTeaMuzaL2xHfks=;
	h=To:Subject:From:Date:From;
	b=RqhcfUL8igH19OKXq4hrN/qFdb7pN7uqRUBTF537mBfFxyOKiv10/9+6Z99t3CDGC
	 5BYI9f3Xt5kYoSFpYWcHKBXNezBvFNVOA00I2I46teoT2Cn2F2RujpVSfQ0uS4CPm7
	 OR7l4IdqaQ8lM3B3QbwqQeQTFPJbOUr3P1CcPE+GMJTbFsxSqfmJn1Oh+pxDz/6ZdO
	 P1RtcnWDZ9GiMOU+bll5djqobA6yxkNnihYxM0dMoTBMO9KOVSTwzZBeeDZXWq2Hy7
	 rdvMRkZEdDoqyXliifqJDWLDgmuS/7clt718BoeL5yDzmQProE1s5v8/JrBrbBa4ea
	 h6PDVPXxzxRMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D181061B39
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495749358.4784.5894360395079377434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632e0fcf693e14a0261b16e83d05d3a931d50069cb2a5305f8c8e8ff482cf9bd
Date: Tue, 31 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774957493
