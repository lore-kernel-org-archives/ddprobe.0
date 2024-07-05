Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445551459FD
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 23:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720221923; cv=none; b=EdmjyekZ2ZaZ+c/EXqgLJdta1x+8Y9KUuANXOseqLsSM59S0Fl0529M4TOqNHIBWI2E5sKRweW53hLktf/2h6Z51to/sIBMg+E2nKDIsavdvKNqaTPMUNUKWbBiHAyspiFcMKqaJIzt3Su93DfVGyItwWjOnDly34zljlnu1+ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720221923; c=relaxed/simple;
	bh=Sw+uEOSQQRGlrDhW7SE1eAUQjyuGfC9mWiuF3JGA/dM=;
	h=To:Subject:From:Message-Id:Date; b=WQS3bV0bgGgPW7hGpOPoaLbAqfyMUKCnJBqqJWwv5XR1ogz7annMtPE0CP6qh8sGCpMONXyXS2QVUspun0CqxqxfRhd44WKwsQR8QjTDAn0Wn0YCckJ4s0fOSQ6l9shIV51E1eJ+bjQaQBxplHPwdf0jJIpJku6HVVBGJJOYmew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBrC0kgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBrC0kgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E9FC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 23:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720221922;
	bh=Sw+uEOSQQRGlrDhW7SE1eAUQjyuGfC9mWiuF3JGA/dM=;
	h=To:Subject:From:Date:From;
	b=EBrC0kgd7tiK41dnQy1qHoyGZv6P9vKKY3PxHr+Eb7X6UD82+aWXfPXW5qOhudWKz
	 NweVrxdkVa9SqCpeKQtrFUZirpJD4KFrHFsX3uX8yWZOjO+0ll1rBoZvSDae7Dh7/2
	 idhM8EHzWx5W8uSBWUkE48Q8PK/gN2LrRGu6qEfTFAIy1GesyohyKu/md5q+3Zxs+H
	 P6A02JDM13bCzpV86dbf21Pv0/ouot5TxR7Vo+UYIC3AMQOOVnuWaiQ+sRhxj/uXdw
	 ssBF9LU8P4pG6gi2EIM4rDd8SKVaQOB9q3Zb1t5f4cpMTlo7HlDl6XBgroVppPRzP9
	 TIRGaPLV/+s/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5EBBC3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 23:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172022192277.10048.8586991934670194154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564faaf749e436218e1134909e38b6b6c1ebec91abcc7c29647f73e701381e13
Date: Fri, 05 Jul 2024 23:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720221922
