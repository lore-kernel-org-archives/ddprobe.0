Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5C229B0
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755456594; cv=none; b=AjUG+JnVZ7CgRLWJj652XYllLl0OkEsEOxVCYnVoc95S427B7n53RC22yDwk5B4rs2CpWXeaYEHEbfYz88fDEkV8/5t34hO2shLWelfYipwzUa7dLyu63DMewl74HxBcodAisYP9cW9TDphOTY5ZfE7vP7GO05NgDyODUUZEpAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755456594; c=relaxed/simple;
	bh=Zytmd0Ib/9gCe+4ZFGIqURnd+W4edfAeNyWwlx0lkZI=;
	h=To:Subject:From:Message-Id:Date; b=rZmmzvv2KhQi5OBzUGw8rSdlwzq64Wv2VZ0hCrqCULmYtpGqTpQ+Cu5ZW3z9KXQhfS4i6h2/piTBZfzCZ5Se/MkcMUzZy+RSa0reNtOrbKXF+lknICiFF6LG0MJMzkoK/0bOmEirqOxnbJoNMlMGuCGj8gt73BVFwg6B4Cv5T0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnLdjShF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnLdjShF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A141DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755456593;
	bh=Zytmd0Ib/9gCe+4ZFGIqURnd+W4edfAeNyWwlx0lkZI=;
	h=To:Subject:From:Date:From;
	b=BnLdjShF+Z3BLL+WuAD3v980eNC+wwz7YmqEYvm8sBLjxFkk1zXlXJcpOU4L7v7Bv
	 EN/R3xM8bRdOwft2Id8ae85UIoCrDxuaHxTUQdrgp3J0nHEUS3+jzmReRCt6U9l171
	 ce6iQc26sWjUEfMVH8/8jffph9Y3TMjeOKI2MlHRySE/e4v5DAXM2S0EOiTexbZS6c
	 vYpndmrWO1tOqRJepksnvOnf6JlEYpyBOayTNneNNK9ARSvoVO65Z5F8WHULDjQqM0
	 HY6uKYVHbhBIt8U6ClkIx4c0p6PFwA+BqTJsKP4fFHZLIbMKNjWXJ5/9Xv8Hua2qex
	 5oi3K/Rf9QooQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F336CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175545659357.4781.7371070466346667874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08490b7fde5fc9ce190293df7d9e9aa0ee66423df20622f2fd906bed0d212b87
Date: Sun, 17 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755456593
