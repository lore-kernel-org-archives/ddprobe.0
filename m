Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCA2393DF9
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772139294; cv=none; b=uPGsCQQ/7P7OjeZ5ciHqgGbtFCDq1xqw/JQxSmhJfERphIVhh1YIkI/8iZDgAGH6WDe3DkJhD8v/ukDnyObgM/o9JWNyPzJDBCFqvqC4PNa2eXbxPILEnipozZiSEuSI4GOgPKSRjMy8SZaeiumwgONQM5J6C1TB93SZ6MH39oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772139294; c=relaxed/simple;
	bh=5WVNH5LuVmfQCiEnuoNNvBR+Eb83cao5/kdL9wxpqGo=;
	h=To:Subject:From:Message-Id:Date; b=KekO0ErI+u74JnouRVLhPiwG4juYdVzvUoimjCTFedlCvdeTfLzC/4HZ97ltJm35pyeymUg9pgK1bEQeVZGHl/DLqD3ZIEGAHVRMHBRxmHc2uGq80Ck8ia6UQ5jrYIhn9nHEE666KOaZFNeyyfGG+FikxSiJ01JTln/A85R8HVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnSmkUtj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnSmkUtj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7429C19425
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772139293;
	bh=5WVNH5LuVmfQCiEnuoNNvBR+Eb83cao5/kdL9wxpqGo=;
	h=To:Subject:From:Date:From;
	b=LnSmkUtjXt0lO+hpByzWFY99HzOj6PjtwpF3u3+m3AAU4HoL9R+J31XMr3iJ1LhUD
	 4RNUBIeMtYpi24RL93MguahInZUkgS5RWgiDxl0EJmcZyqh3E00K8+HkNNV3gni4M1
	 emsTmT6mErXqr6ZWmsFIJORHpC9bmLT6VIo2l1E2gLtADAYddjGakjboQZNQLyeq3o
	 Y1JZplKNDEo2d+E7VWVvUQwadIsBNEX24ShiL2Xofcp4pCrrdxLkJl9eJwclxIKFK9
	 c9UCs8KSN5UOflVGLik7RNGYX4cEJ5zG28RSIF6020BCQcTepvSNVdBXforbjkfn+I
	 DRhUlhSjkPYiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970C6FD9E12
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213929358.25895.15533750097335009274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db4f74fe99f362b2229b7bf0d7758c3080f8475dc9a719d5137df98df1a45b10
Date: Thu, 26 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772139293
