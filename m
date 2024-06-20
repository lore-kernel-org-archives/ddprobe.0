Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2ED1AE870
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718907023; cv=none; b=Qz+VELKLP8My2O84mLxxnisKs2Dw2JYy2d7SIcdO0XHzE7wXX13wJ7p2AvjAPhZzrXjD72d95WXdApu9C/8jCa2Qi0862YKWyaOr/HBaB1c7pZrN/BzNesV+PODxXvuYLhxnolwsai8LNu4iDmf7/UAmb+C7thnnsnhTsYMLa6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718907023; c=relaxed/simple;
	bh=mbt1f7PVJqDTj1C5qFE9PS0HQ3hOwjZd3jfRLAWUMuc=;
	h=To:Subject:From:Message-Id:Date; b=jkxm2q/yboM8yTjWYnfpJNEcNaHYo8ZcSqFaoK7dMoRyAfZI/bzv3ckEe7zHTVW+crpIKkyC7Kx2hlBWjWYq7e5V76SkMczpAbYDncE+rU6fJURnxVO37kXAaeg6vZYwz2nvTLuWX2/RiP3oc13O71b/SspVZgJ3zNd+uGH0UWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hh4M/l/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hh4M/l/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E127BC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718907022;
	bh=mbt1f7PVJqDTj1C5qFE9PS0HQ3hOwjZd3jfRLAWUMuc=;
	h=To:Subject:From:Date:From;
	b=hh4M/l/JKDt0RApv4bjecEnedmGJToayNi6dFUxdUgkAInAugEwjlVebjNfGvpIfF
	 FqCJ37lHtNaK0oD58jg5Zvg8be5zBYZ6+FzCfc8mNfVM6NQk9kUHy+Cv3iRx4ZV/jF
	 iBYbKC0Cn7XCEoPKSEiDoHiIXHKhSECpPanShCTXhTZmo+0JrEqQCINe6g3kMQG88z
	 g4IRX7lMcZqqL5oMNlxz1A1M7rGiNL7ldapBo8Z5jLNNmV7L+zPtIFpmuXxfiA4t3l
	 iO7UJ9gcsMYI40sx7KOupgj+7hk28sxs1uJey/dhduo009jIUZu/eNVk6UKSSAmGpl
	 AgVNeDD8RH4zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF7ADC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171890702283.29444.15000365965515012477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d260f7c857dd21a29af42e2393a2f33d3f536300c1adb747c3a0909312351c3
Date: Thu, 20 Jun 2024 18:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718907022
