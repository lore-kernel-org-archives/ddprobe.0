Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1660C294A10
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774814694; cv=none; b=qQrk99G8pLYvbuXl7c8oemrqhPrDfPGSM1+cSTk6NPd+w76kBwacJIsFDQoUcI2i7ViMh8tL0KRpiq5SXrgawe/ImbqCDcJWVeNrDUUlUBchFuf4xJOOMLooxNHqV9tYJ4Noi6Z6sDmFF4CxwDcaWMqGzI5f5vUGIb0DMhJQHC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774814694; c=relaxed/simple;
	bh=PRiTNx37tsrJJ6UFbBhC+mCeAMkFxnQbkVjDv8UY6GI=;
	h=To:Subject:From:Message-Id:Date; b=a/ZMN2Cdvi/Gept3kcLHxj/7kpZAMyupdnX7T1l3RNNIi4Ti90DtqmRsGbOT8EFH7fSnlCbuoROi09AeFN7VN2TCYdVIRXp2iPJwpkjM77bN8H9AV3yPRpkoultG6xYYJpKrqLAIvibCxmtmO1c/4MCWBqdPut8wAzXkxJVpwk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbkAY5zY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbkAY5zY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9657C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774814693;
	bh=PRiTNx37tsrJJ6UFbBhC+mCeAMkFxnQbkVjDv8UY6GI=;
	h=To:Subject:From:Date:From;
	b=FbkAY5zYxCw+MhlX9waahjByHoXQ9ZLdmm+3oCMDvmMmOXMtTy4xdQZcs300IdR0Q
	 cVHE5NVfJYRZb2dywkIhfdTVmN+jqwWZuJMJ6PcFzbo7OFjpM+xLzofYx3YcjZWkV4
	 BlnzKL0sst9bF9hRVwneRLIYi8NcB8BRSmYXmNa21TzqYDehnCWKJvZlrA5XHS+2aC
	 vpydNMZtpPeDFj1arZ5x+5XF5ZlX4hPtQHuTHjSY8gQJNgFCT47pt3J0lCm7YH1ltH
	 1NziykoOVCKnJYE2sYmA/zSKmOfkaiekrVQ7r50R3uT+KB4B0RhyzUwdlnsSafbMR9
	 aPzNcUVDFsmaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93922FC97EB
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177481469358.23602.8153462274408385682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30efcabfa81b8d6a69afe256d2e55b4d2acdea6f1e27a618a8e02f9df8d77728
Date: Sun, 29 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774814693
