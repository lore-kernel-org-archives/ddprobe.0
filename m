Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356691C9EB7
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725623754; cv=none; b=Wbfa2iKeycOvLgblbSFcf8KviRyPx9PDdP6fqdx1G093iXkLXH/g0ON0vRyUN94Z3CbjQIGppbwML/RuWFcLgKK2VZ7NcrP9bXQNiV/pRiWVKJmjpDCy2hSjh0zvuq6Ke0pAgyAmpasZNgy4qvIWnzU12XbbJa+EbZPgUrjy8dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725623754; c=relaxed/simple;
	bh=oWdgGzO9XJHu3vt13QXn7yFrSZkunJsLJ99QvOvter8=;
	h=To:Subject:From:Message-Id:Date; b=pd5FmCMrIe8nwhjVAhrzh1Vv69xN4L/WXYuHNtWIk5Msv43z6pdsksbruSofvvr3bod0ZMhEyZd0Q0fwE9wrSvNC9cfSiAuXCziBajKg8ApsdokRSLe1Kk7JmvzZmfj7d8vJmx3QJZF08ytvNgQfTkxex599lwtBLKGO1v7ktPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpuorvJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpuorvJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED7EC4CEC7
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725623753;
	bh=oWdgGzO9XJHu3vt13QXn7yFrSZkunJsLJ99QvOvter8=;
	h=To:Subject:From:Date:From;
	b=GpuorvJBlfT72oSw5IS5d/AX4K0G5Amj9gNaNd00uyD8zb0reQsW7n6h3o2udCM4b
	 +dE1YfdH9LXgvE7GzhMzt/JpgMFBy0biIU1XKdKfIPx5NvNPGt8bZUTBfqSG4wbGZw
	 7ZoWEL296QlzeXHXKjS+gQBF2f/fh4Q/9Cw1yz/+ruKOTE8ulHcRJCSxDWUVnkw5Kq
	 i0h10gxfy2UQsX1TEfRGsv6dqu0RZItllwFlhOGdGNkDUPkjF0TvzDMpaof37U8a7+
	 zfyCuFZrK6pNPsl+N8BNhj0+wAMJySZizenj1tKZfNQL//3/I89tJP22323rf1gY5p
	 VmHgAC8xQQRhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C82FCD5BDD
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172562375362.14894.7659624840310248851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9313ef5aec2b2ce9013b43b815d8348c225073d3a70f64d8d66f4e022a60d25
Date: Fri, 06 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725623753
