Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2926201278
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776194854; cv=none; b=Q9m4tRbUR65bnIhYkavW2BZkcZJsxUVwlayvHM3M+PdAVHdolHa3dnn6EpcJo9iRiPagqZ9ChYCfRxSnHPu3b6QPyTg0rcJFhpip9ERokXYLn93UbEYk8bBHuffxGzDiQi6uL92XA5eqP2fPMb8yyuzSGUG1ECjVRgqlVig/85A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776194854; c=relaxed/simple;
	bh=u4LSM56jNy1ElPktCDolxUtGIWz5Wg6kYVdyvol+2wI=;
	h=To:Subject:From:Message-Id:Date; b=TZS5bKkLCxE2M+dCe6uOaW4jm0I3iR2YuWlhZphG5hSzViyARGwUQnkysVXyIo6moHG07hikOr78EA4/6vV720lJLXfyyMheGP0wUDnwReF54yiepuJbX9d1JVO+02B0i+bNxw0jnlcsT/2q0hTFQiek6jAr402Rmz1eUKC/B6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A12lV4bR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A12lV4bR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD179C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776194853;
	bh=u4LSM56jNy1ElPktCDolxUtGIWz5Wg6kYVdyvol+2wI=;
	h=To:Subject:From:Date:From;
	b=A12lV4bRqJTjVbIDkGmTXfm+lvouZjCNq6J7177orOUAD3lMNNeEhwh6yw/a7/lmP
	 mNTo9vaBRV0zg18I9HSEatU72dj5OT3qeT0OmQbIbi0v9yZShnoKXBa/4N3Ynv18rh
	 T5SdGHKh9Nwent9ImH7QA6JK2mbkKBCXOE8f67zxvVXS5mRYv2Nd7t1JAzy8ANVE24
	 cxYNVcv33qBMeWphVEfUDb5yIO1Gdo7pvvW5AAszeEHcIYcBiiw9af/jWEyKC35zas
	 rRu/y8xtXq4yIaVuyKTJ0AcXiMky0Y+fec9SWt819uaGxR7rNgMDg55a8Clir7yVle
	 9xfFeNRj75KJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0E1F9D0F1
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619485370.10387.6670851124171850238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec11ac1776ba5056384f15cfe73d0b0d8ed6f7c26c2e385b9438c078ab66269b
Date: Tue, 14 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776194853
