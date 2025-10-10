Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAB22773DC
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760119194; cv=none; b=Q5JXASImRdlBlNEZGNE2Xl1AlyyYv146UPIiwXeaQ3wh1hsOSbCxjkpXAHEGg0derYWO5zeSnCTaAGmLHDORK82BBntRu+sBe5kFvIyq4NR7IyaP1OknjvfYFjGCVuXnDBKMnwkwkYsebj1NWRjxM5+LUngaUx9uadvmz+qJTiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760119194; c=relaxed/simple;
	bh=JXVC421x5MLRkE+1aTt4kz6iWpvu3mIzm2IZOrqWxbI=;
	h=To:Subject:From:Message-Id:Date; b=mDWz6U2SyXJgBtZNVibduLarTYTGWLQcGQ8TlYUU+rwUMTnK3u2IoNLxaJZlZYYC/wfKgjm7/nUZh/KHpmEQIX6+BjeX/iiHQqoT+c86I0f7hyV7kHE0ShKf3vvcrB+9cqZF+O3dvG8TsMTyICW1/wHYDEYWcCqOjvm6QPQk+Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I10FAxQT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I10FAxQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB52C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760119193;
	bh=JXVC421x5MLRkE+1aTt4kz6iWpvu3mIzm2IZOrqWxbI=;
	h=To:Subject:From:Date:From;
	b=I10FAxQT+lC7k5NmnLkK8O+LHqYHKFtamxbq53UpSz6FMNWFa4yPyyFXjhB1DR2UV
	 aAejJkoJljU3dutd9Wpde4U0vD01C5pFAvYo5JmlklLB7bvGjXLEdQSPbF6W8uSNa/
	 AmUKQ+6HJNMlwh44spG+cyxuEcwh7sPc3AlgAmmRZ9Sp8wr65AEoLlOxHHdCeqkbFB
	 uIMg0e/hTKncBvfT2tAaVaQIcL/GfCcY7mzinSHpTFCHY+n5ifQpxi1yHWUWWq3Dl1
	 fYUYL4ink3HgDdjfZhGvisZ0scDs3O5zziLLDOJJwMlD4WrJ6y4ESAU4LtVB4owyu2
	 pzq8u1jq0Tt1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEE5CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011919358.572.7438540834451342289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704e1d21b15c414e4e918a3a69911417436e93ed55870b45a386d608a077cfb7
Date: Fri, 10 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760119193
