Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0861DED7C
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745785194; cv=none; b=r1WSLX7Bz1xgrY8lRzutzti20nkh0KtPp4khdWTAWCYZ6yekT95Qn3GZFy15scLn6TyBlLPKSDyhMxMRm9sdnraKJyFoNVhjLVlhSW5xY8G2utTkPJKtdaFQoJdQ+VRcIVKTOXV9ZcmO09XgDqO1urcrlvhiUwBmyzc8TLH50Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745785194; c=relaxed/simple;
	bh=y2M+27h286APfjL8YpmAt25NFdmzD1z8OkkV/tXJlFI=;
	h=To:Subject:From:Message-Id:Date; b=f/WyjYCtX4DXPy/T99qbrDMaRiPZxZnxJnVqTVCUibSOTW58Vq64VUF1xIW9XiBkmdWhfFfB000DPUpNjVYFQ2uaYmGrGd2B1CKyOXkFV2xmmucYLr0UbBtMHVypct/2zg6YF5FwU7YV9TnRqqlFZCa4kLdqMSoeAPAr1SihB94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvvI/1Ce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvvI/1Ce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2199C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745785193;
	bh=y2M+27h286APfjL8YpmAt25NFdmzD1z8OkkV/tXJlFI=;
	h=To:Subject:From:Date:From;
	b=FvvI/1Ced4E8VNqyJFT6bdFwfhlM1fmETlELc3lKs4QQ7rHkxl0Sjj7cNtjed76ys
	 pey+iVipoJwbTJQQyoe8GOSkMO1sk7aJv6Z0VncWmvqJ4QUmykjqq2RKgQWPZasbEe
	 Y0o8uniTtME4ArIMrACY3zmdsIA4xjNj7Yj1GvBuw8UuZJseo+O6Xwkxzb/llxX1Wn
	 gZryRjO8raTqxWPccOOPaK0S42sTC1eWPD7uMpO6UFqDK6ea1ffRP9U8jGQjZKVqeD
	 YoxAIuZwbZ2fUuO6I2jUyVUY8FFATS1mYErw4C7typ4K//9nQ+rl+2TZv8dTHJCj1f
	 MlDdmzWSrwBgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F597C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578519357.32378.14032080846605614773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84898bb19a57bf5f1ada620eeb3c86e267ff6f5b7eb728a79dadcf9bf703c3c6
Date: Sun, 27 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745785193
