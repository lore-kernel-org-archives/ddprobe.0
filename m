Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4D533F8DF
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760729395; cv=none; b=a05IuBhajetyxvZnzdtOItZ0x9vgLYiDq0r8f0UP+KZdQGC0oYFsMmqxNkJBwHg5Rq8DEj5SSu6rHLmCGae/goZS0+I+srDQ8fbUOcRhwiU7a4fGgzzJpCG3kGzC/XBfDfDWbuNI4ewLcNEkS44huHVYfN97vSkOPMhw31SB3qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760729395; c=relaxed/simple;
	bh=25xYr4CKmve/RWTrLT/+5UlVchVUVqUq0Ws6ESWK3Dk=;
	h=To:Subject:From:Message-Id:Date; b=tbP4QW76OGIFUNxoWvSh3dH4is1ilTfAl2iiMTkCJB5E4aFXKnBOaF0epM5Nc8mQlgF+9B0JkNyySb5zhdWxMhq5PhMNPUumAcHAVb+gFg7U/r2mDAPbB7pdVO11vKT0///qAqQT24sjiMpgjOu4nZEkOqGwbFVaOgzTBTqzsco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAP6UyOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAP6UyOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AB3C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760729393;
	bh=25xYr4CKmve/RWTrLT/+5UlVchVUVqUq0Ws6ESWK3Dk=;
	h=To:Subject:From:Date:From;
	b=HAP6UyOKh+Hq3WRbLGPwjdmVfxx+alJSGLV06s4a/U1fF6mCassRAOo9SAckAC45d
	 NTA2D5KUEoAItSBpgLRNcgNITWpvAc7QRrwe9l5QDt4BlGjak9JEt7VWu8zSlGvQ4k
	 775LEENeU8C6OQvwCaqLBr++6IBLe5rbO3tVTwRPF1qcR1JhBlqWualTo835Z6lwcf
	 vbKwdKCN/46oWzbVpa+EFQ/qd/4nJfcW/WXFqKF1MwCR/Hg9soa/x8khJS6bypTBOm
	 nK0jgDm5Qd9VTcd+lNSG8DceIUB/Hy89CWYiF2Ia1P1pmAqBBDujPnrJTdDL6VtHH7
	 0CLb5YDOG0J9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A8CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072939358.20541.8873911821757752470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4747e38072e1519f1f9e06975dfb2a2e5f70f044771d8792f028d4a93b583d32
Date: Fri, 17 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760729393
