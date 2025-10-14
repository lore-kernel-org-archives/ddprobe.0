Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D1728751B
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760443796; cv=none; b=IJQimy+LP/lKjCeh9G9FjPn+YLULzv9ijlko48lhnJOoSXI9ab8IfWXbVuvyI9iJPCzXmqG1avpSOzKIp3LFkc3df5KqO7GqY174zfR3AOeRQiEl0Pr/cyr87+yIwyjpo6Rsg5756wBwieqncjUAcep+JMST6Cks43lmJ1xOp6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760443796; c=relaxed/simple;
	bh=09unl9Ru//1gBaqX/VvahwkhMhPJ87NIcCUWIA0OzgE=;
	h=To:Subject:From:Message-Id:Date; b=aT+mRoJZyE3UHvI7Qq0OfOCP6UXG1vmbglZl/d2IQTKJ1gjuSHt5AlPn5O/biQ4Q3U1YezbBagDg7aldILRd/7pIP+C58Ih7xgzoxP9+1I9wymNn2BNxscQDjmVyPhlD/ByKQ0haGlKLmEUAikcvKmLYKrFT2QHAZq9gdzsbW4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9+ZWTEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9+ZWTEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D84C4CEFE
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760443793;
	bh=09unl9Ru//1gBaqX/VvahwkhMhPJ87NIcCUWIA0OzgE=;
	h=To:Subject:From:Date:From;
	b=D9+ZWTELlBF4jjl4ooOGW9LOpfwa97oq3IVPNsMxCX6gpoIVUQGot7sqHRcTlyum8
	 gP+vdx4Bnqo7vo66+1mYn01EPYoUUnFGNRFD5ydOGrTdt+g47cV9mNLFfGho/MrjZh
	 B4SRGIoUwSP4QHw7f8q1cQ4otipj9YTAXfrNMfxk7FPs/L0piZ2xQgly9BmsZtSoNW
	 /sjUdGgMTsjPcgE30gdkKm7g8cCvVPk4kvD2AKffl44hrsRKY/aIiop43MS+1L/9S5
	 /gIaaQDpX1PY6iir02HE4qxlsPbxk3beQkDal2vxgRCG0KTFf5uRZLZaLCCgm8JdOA
	 RqOLg3pbom3Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E1CCD18D
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044379357.8837.16996526895208674951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88fbee83a402a5e395a5e8ea66b381e44aefa9c9f0ae3b666c5492588ca5d762
Date: Tue, 14 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760443793
