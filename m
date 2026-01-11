Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F280500949
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768100034; cv=none; b=KFysC9XcZphRKhzv+kUcJPcjQuXfIoQjMJekxTI/atMTLpiwIw1+gJ4HqIBH/9JuJz4RA/3x1xguxoUBy2enNDzL7GW6q/qysIsk01rEiQueTyEbNaTKP6C62jxfFJAwB4H3eS0R/cNgOA0VCXwL6BUSbTCh6uJQR87VjQ8xf4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768100034; c=relaxed/simple;
	bh=F1Id0z+z51yV0fRblZ/afWtYoHWCP8aEBnpT+1TO/Q0=;
	h=To:Subject:From:Message-Id:Date; b=KdFzVr8EoFGwinDtHBHC9snTjxuefubMZmnb37yWhFAvBuFvvkR7gByyG3dx8LlctDE7Bw0B34W6ng3EVDjPiZMsrUEt3uIcMQpwTeqvQ0LZFUjjEPqDHzvXHRFwQd8jpg9l+6OwjZG4euutjGe2xIQwqGgqUw5SEzyCgDLrNYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOPfVksk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOPfVksk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DA1C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768100033;
	bh=F1Id0z+z51yV0fRblZ/afWtYoHWCP8aEBnpT+1TO/Q0=;
	h=To:Subject:From:Date:From;
	b=vOPfVkskwa9tjL/Ig3Ld0I5C4Mg+iisKsiNX6+lllkWVfgI+OqW++qhxKjFVTzNJq
	 KgZ+4LzjaPdAfV4PtNJbAekUUzDslnj32ELoLZ8YVR6tZxqzR8OFnMvWQ44UecO+ta
	 BsOAzb5dw7K0XFhXewvzXt+D7p/aUd/eYnA0kZKNspMBpvUlXnkOSyphZJnEwN5IUM
	 hcoBNQfo36dmTm3Q2KZIMMPCUlvOw7nNNWKiBbd86/fP1YHR+ouCtN1NxsY+jxAl/s
	 NNQQ5P0SLDt66QOSofUSvOiaVinW9qNOQcCl3q1yFKweYmGCaWenv65R0FlXiBormp
	 VN4efnSm1pn9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AD9D25030
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810003357.7362.15834536505872315639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f371b95a50c643c4fe1307e7c0e7768aab762b66e4532f5e09add6bc50e3c08
Date: Sun, 11 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768100033
