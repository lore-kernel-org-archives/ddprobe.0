Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BAA19CD1B
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780196074; cv=none; b=HMsywLXPVG0WQAIj3XatmFj9KELbmgPHkOs0c5EgWbItsjdwGEee1607MxSDiKN8tfL+HOlsq0GrPxQtpGcyOdpL2iusj1/KezoDxo9v/kEFWxLrWfSRz/nBzs9+KNNlAHFPoQMJHxOmha4UFF03Y9yVzguf52XupPTY+i9m8hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780196074; c=relaxed/simple;
	bh=KRPn5nTlZMyst6rT+o3/CugtgYlJK8gqJ53nH1PuwMQ=;
	h=To:Subject:From:Message-Id:Date; b=CTmlm7aVm6vJLr2N5HY1xRSrh0NmmapGFepPcpht879XxUNHSq5b5H46+OgbJB8z9OkOq/YfIptDXUkPA3pRN2ccHMfo5j2PMBHsvXOkh9sfzBHZtS4QyeYDeqDY8mRyxquzfflx65vXxuYM1mx+kmyjrjjBx10y+Up4eSHVC6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNbrq4Me; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNbrq4Me"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D102FC19425
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780196073;
	bh=KRPn5nTlZMyst6rT+o3/CugtgYlJK8gqJ53nH1PuwMQ=;
	h=To:Subject:From:Date:From;
	b=vNbrq4Meo+rvxoPtGBi3zjRFqivkH5hkXrt0Q/2TAiEYtL8bVzWLv2CIrdVrSvHqm
	 8u7/illgzcHuF4/0OKuzWXxlfJPxdmEk/bx9llBOJlYyJFcevT//wVqe3q7FFostkG
	 iEt3b1A5wnN+vagXXBb3k7suHEm/BrFUwEwuETd5TrgFL33HfKh80TTCGQxSxKqDWS
	 MZ7xIGjnPdP3PRDLma6pxRnfiDCecuA41bqzSW/8oWraPzmhAfjEz3jA4oIizDE+VR
	 fiVHQ7fSLBbRnnB1yCpXhyMsDw0j3MSYcBOMrJKZu8RR+fyOaAceikQ6J0VREiGvdU
	 RrvDUQTud570A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45DBCD6E4C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019607370.7768.7645956327050012900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b1e8ff35582423587e8fb90c5c35de080e768782d66f4c82fdf5763905b361
Date: Sun, 31 May 2026 02:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780196073
