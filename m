Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C9379B9C
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 18:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719166943; cv=none; b=lhZdqjOa8/kfCwmyMg6ufhmt49hG+ZwXVPhN7KjAmp/eLZ1hFKIjRJmtOwWbH9z9zPMvPyAwC2vFaZTC4nVCMxvrQOO1/WbLXqzJYNQcXA/Rxja0PwK+CWu1/d4xIQwYw2zGYjeahEwcMsEAaWN3GDNzsIgvkaPDlQtMCtblaMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719166943; c=relaxed/simple;
	bh=bVue06i0WF6IHJtWKEoUwnuZJXjm6jHJ52f69DiRGR0=;
	h=To:Subject:From:Message-Id:Date; b=eRt82GpyhwW2mI5s/0TeYPw5ETYhyihu8LnwHJ9hMz4SMi0eNlFV1NVb2cAVLxBucsqxgdkTFnnb62AJmc4UndtDVkeNc+H5/AxxFxPYt3KAzkuvfAV1qSYvCsptrtoT6+bgJYgjG7Q8Q7SFeUpYgKD5G2xQyOVbVRbOMCJPCyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOCkuzPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOCkuzPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A9EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 18:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719166942;
	bh=bVue06i0WF6IHJtWKEoUwnuZJXjm6jHJ52f69DiRGR0=;
	h=To:Subject:From:Date:From;
	b=VOCkuzPSo5dNRTonNtNaYdeZdt/G4sQjH/t7nHj3iTG6DQdkxX7w3A+r6I9dLHGcZ
	 zA9msplH1CIUNqqesv9scyUOtq8hcw6xPFKLrvWWf31lllKNL2fP5tmN3w0WpWE7A+
	 s64CssDzYhaWoos4XoGpcM7zy+QuSlJtwW470mmxptc2YIEyze2RK0rrlV7XZcbWPs
	 dMBjkxXqSBDykshDq0QqcZevixP496JtCTjhFOR49FBmA5XDnkxEfOrQI3P+TdKWWt
	 yWdSaChgia6mqyy3zkIDNY/1DjeeqVU38XntzgMiMQyqnpFTCj5brD2B2ZaxN7QVCe
	 Qi23c1RVUS+jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE621C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 18:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171916694277.9321.1675003189932137957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8c6599bbf9e61eb127c08a86d2da235122f8000cf20fcef14b9f877e505b2ad
Date: Sun, 23 Jun 2024 18:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719166942
