Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FB21EFF80
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765418574; cv=none; b=qT2V6XoifNGLXwVE9vMh1xYTwd3JXzqBP4jNN+e8wSglfBHyzg9hjuN/JdkxwVACqk43/jJGNNEMhyCuIcorpMB8jDvKtxTKANpiguk9tWy9DYVQb4NuKTzgvTB/YCrhVxP0yj5mIDuuDg3D8TZY8iTP80CriPGSyxicUD0tD7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765418574; c=relaxed/simple;
	bh=AUsPSeSkEn67Sse4iYphsNwPC2vzBUmMXdqy5QiI0HI=;
	h=To:Subject:From:Message-Id:Date; b=X67SY3Wggqs8VwnUJ0nQOZ8GNrXIYH/odC/i0LCVFpw2dwuO7Sbhfc+kn0mSOWGNn7xb/C/kyiZqBonRcTNCtDRXqORJCZMEOjZqI3Zj4g3aDdG5NUXOf+VxXI7lXLoQvkWAWFwBjhVXmuOaAs89uPkwoTDzFsNgZVYdwF9AYfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ive3eRQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ive3eRQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EF4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765418573;
	bh=AUsPSeSkEn67Sse4iYphsNwPC2vzBUmMXdqy5QiI0HI=;
	h=To:Subject:From:Date:From;
	b=Ive3eRQg4hp4ckuoSe1wEVL1SlW8IYCaU80WCcyiwOb0WXx+odo1RQDfn/9Bs3t8H
	 pWDtgx75igCVwD6zr/ptEt5uc1oWXW2aO1ZZhqTokTg55z0Qebv7fIXGntwerjhjfS
	 eXAbHOdPNyjwp0yJHQio5eB/JH11RUoGhIhuYH60O9P0tnsp+DNS/sKXQkUZ7QMXJB
	 YDIQnJni8cnoczkCXuBamrGmAFeukLrE37R/i3ZF6Oelg0qlEAA5o3uXPgONiD/AiT
	 uRh9Ld0D6yusR4cHOaH0eq5BevrlCWF0J1SltCTPCF+j4VLy29SCQb86Mdu+YG0idk
	 x/qcGFtjmvJaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF1D3E785
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541857358.19400.12878501114835871258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a267a3671fd732f6f95e5a83bd2cbcaedccabdb99d9d271ee21e385e3796b90
Date: Thu, 11 Dec 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765418573
