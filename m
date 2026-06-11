Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0BE8340293
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 04:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781151394; cv=none; b=k+6H3H57KRBTcppBDLRBBUBJLUK72D+Ocv3ld7OW1FKZUaKGfAmMsI7gwfXWyaPv/1fXTCmHgzo1jzIOnAZgkwwi7lzBhZr8MUNgzo/KINnoHKPsk+v0cbrRAriTqKV3lLgKa3yHl+56KYBxGcy7LbEN3mEaSNjJNAjtgduOkp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781151394; c=relaxed/simple;
	bh=4H25TfbzeGcwXOIm+CL77Va+sB4HsiNu3Sku+5kp0bo=;
	h=To:Subject:From:Message-Id:Date; b=p04l8PJwh/B4u4ulMuJj+bx+/xZ20oepC3YW191W24jPY8qk6QOEKi5+yoEK66gurwr9vog8kgcxu4X61Y84pQy/8iO5A9nCciic+znCS8Pwk1Mo5WadvK9K85DfVRwDZ1gz4UsI1DLL4lkszbfJTNI4z2FIL8O5mUgbgOqgeek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quhB6DhX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quhB6DhX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E44B4C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 04:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781151393;
	bh=4H25TfbzeGcwXOIm+CL77Va+sB4HsiNu3Sku+5kp0bo=;
	h=To:Subject:From:Date:From;
	b=quhB6DhXU+YiCqyAuPf0uYTUF6hzbFj9XbtX6mXd9BLPUBKyq7DLbX41cdvcVO8Jc
	 Bmt3L3zvGmW6J1dIQmR4raRPqHkKSxGvdMWYfTXI3tH16Zw9I3KMLBrlvIXRNrA1Ig
	 cm74Bk31/cBTor+gfBqVLZSqS6CT585HT89bTmrbKO19M4/kjYXX/1PiEEc4S4k+sD
	 q6gNlH+6DMp9nchCWvpFwwpduNB4WBDG9nocNHuEPw4QMETXx+oJUnLQ91USPhSm4J
	 nvRo9Tf8IG8N+xidHw8MuBbLr+8E4qbl5v7lkiYOr1U6pObKq8vvqToeO81T3eG5Y/
	 p8vAMY4j5ZEDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE124CD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 04:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178115139373.13232.2989390918979960135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ba0d72e1fcb06b810a3f8b94d01f75f36cfa89b8fc0918622d9b1f0ea20180
Date: Thu, 11 Jun 2026 04:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781151393
