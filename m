Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579D65FBA0
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 10:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714646543; cv=none; b=GxIs8Jpqg9COLbJlgXz8KQLu7nACvPInzPJtjvXQ5LktHRhCLGzCds4z2lOU0v3qCrFgiBkAOD/7gk4wmNNzX0JHu41H/8+jv4RS08ox5cvacWcIM0Z8pK8ERP3kfLvJ73Te4as8VD/duiRzkRZ59K5kIr9qJV9ONzrJ7qnWims=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714646543; c=relaxed/simple;
	bh=FPzYRK2/DqqGc7P08ZrXUZxz8i1zA7WpbL/TuCQU8DQ=;
	h=To:Subject:From:Message-Id:Date; b=JOofZBe+UaPsKWPuLKV8O4Bd8s4ZWsArdLdRZZT1DO9D6G+BhecRQTH1JF2uyksQKP2wo00potYM/ILsre1HDUJdJ91EG0eNglZNFJn9M5kzItmeYXo0LqHaG5/OM7RTcBqTBaz6RiSVwmU4B9pPV6mr/RuTsUEr1Qsmyrq4oW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1kT09gS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1kT09gS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83D5C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714646542;
	bh=FPzYRK2/DqqGc7P08ZrXUZxz8i1zA7WpbL/TuCQU8DQ=;
	h=To:Subject:From:Date:From;
	b=W1kT09gSHjZa1e5/6fUPOCTG/KcmLecSOWDPIsIDk/xM9lPlVjfSo2Y1xaRPeysgN
	 k6NQJEPXXB86xvXgYXvlU9EjrMJwx+/NVnqlYHDlX9GlmsGnEgGUaFvZpUdlWWbe7x
	 qlR52aCneZhRx5XQ4L89Z1pZVazcp/Zb0iEZXuKBlu4uW19cGbgPI0Sh2r04tyzu90
	 LVcidJpA/XvVPVD9DpKKdmWWYXwx6cQonW98Bk0JJ6r9TlTtGkK0y74ARSU12gVP6f
	 hlRkY3dLl14ku+wA1+eKuuKMOZRGr7L/Intw1M0IkWABcNj+z11yyjDvmN86lWxpXf
	 8839UlIPLXLqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CD1C04FFE
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 10:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171464654279.444.11264110497114643360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c34d1fd3da81323c0d196bb3df5765b8d9adfb78343595c61d255f4082d733d
Date: Thu, 02 May 2024 10:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714646542
