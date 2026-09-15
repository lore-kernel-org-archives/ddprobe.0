Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB7D44E66B
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789503034; cv=none; b=G7BUWClQpFRgfEmSInu/jvkxkCpfUm9rAZ+9K42Y2wAglRqOdiRK5UA7lNdkT/edLrVeAxwGPg3/du2SJY4DxOH0f63yCT7ES4sD++G4ugmNTtWCvO7VnkugQzzst8AYEoS58X4TaWcZfYBO83Sc5eiWoANVH+EP5KBRGHoABGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789503034; c=relaxed/simple;
	bh=PUmkGmyqkZqyOV/TZa03zAb2x/zh6ndx8ZgdCmcyZQs=;
	h=To:Subject:From:Message-Id:Date; b=QkVUApZ841xBQgt+v6srwbF0mKgUXoU0DC3851TqL2Jr4pLSP0XHJ0j6QubgfcdZj7rKVwGB+SzqYdMFDS1xj3jmuBb2saMPcxhzTsXIF1YOS8iUZVMGH+DSK4VwnAM8yiG2euL8zaVtyv3WZoC1CXiAwTuI0JXYY3QW2q+h49k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyMLI+Gt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyMLI+Gt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABC7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789503033;
	bh=PUmkGmyqkZqyOV/TZa03zAb2x/zh6ndx8ZgdCmcyZQs=;
	h=To:Subject:From:Date:From;
	b=IyMLI+GtMGzSrDGbonaooqXgKDGNXugc8XjbKF50liwg+SlmdzXKlB6B3jAaM6aAB
	 k1gcaLNltGxcq+uDsy2jujMAxJXKElGKPflQu0CcAQCK5kNpPFZUGEOyIrqT154xwj
	 VW+s2xa1jOBRPNGg+liO5OVDpjNUrqNjh2iBUFMLB+vkf4nKtKP6L8kvPx0WwSZSjG
	 nFX02+0S+fRa4VaFoP3Y+ZNxUlUM1i5xUtmn+6tWWQm1CXv+8F/zjxAI9H5bXmj3K7
	 amhFxaqcEF2AE2BvSCmwX7xuLXgPHKYPslEY/k+cGn9dMmZ+uD2CBSJW1RU0kJ8GS7
	 nGlWNFWl1jFvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A992DC88E7D
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950303368.21838.15208830709733321776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3bc6825e7de5329725aa49f0875581f2ae1ee2db7d96dc9465edc218edbc20a
Date: Tue, 15 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789503033
