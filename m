Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B368361DCD
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771343694; cv=none; b=BQNQSPBLVSpw7/6aseSlHnUcIjdiKdyOK+xyrsds7WF3jzQdoSLMh6LDXRUcpdm1yVt5T9MRJyzceTR+esB2E5+R59SMQLy/V75h4uugNJSXZKoOx230eeslKrQ592eTmmBaxB7RB6hyywHxoSwyQ/m2q7vqZz1JAV59sAuWs4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771343694; c=relaxed/simple;
	bh=UVx02Lb/yVvwmcJ6ucxhkpFFuLHu5FmrlImzBseaXI8=;
	h=To:Subject:From:Message-Id:Date; b=pDtW/LaNS+zgwFdQXDm75/l0hYs6T+/fgAKRrIhbyhnsn5kSfEuxtNfoI2MMVH8ovjOiaC2f9/FwqBqzwA+lf4roZy6P8GKBN3JsugrqCGR79388MP7T+uOBuNBEyjFQju/V/d37BNrwBMeO4YJgw3NwaF5jpPGvf1YoZKsHAYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4eHaTyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4eHaTyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F44C19424
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771343693;
	bh=UVx02Lb/yVvwmcJ6ucxhkpFFuLHu5FmrlImzBseaXI8=;
	h=To:Subject:From:Date:From;
	b=U4eHaTyZM28Hsl9VoVnQhsy+uzYebKaqn+lf9+1rqnjM/3gCZA/2iwsbKBM0Al/cO
	 o9KfhPJ3MMldLC080BULiIlr3w9T557498KJMN/al7lf0i4CHCzbrCIdLBtpTSXIuU
	 Sd8PFxDWbqID1MWTGZ3BSROFeNToUTXCxJ9YAjhww45TKkJXmOKS1tK+AXUAkPyvO1
	 8KZYiX9cgnVdBbauwMgfnnnq7nrfzSNtAbF1tdVUdW3fSB/D7mfMiq8kBS/DwjxRZ8
	 Ms8IGl9KdNxM54ciMf8GBK7nfM7Y3YZ0oDPDfJ8SrfMoQTqBxYMIB9BoWn+PLqgSAH
	 pDKSbYGwkDGfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922C4E909CF
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134369358.31404.8739119680434116203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79b802055d1431ebc678eabe15e02ef6ebab2ec838bcf598cdacabaaae67463b
Date: Tue, 17 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771343693
