Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE9C1D61BC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746601794; cv=none; b=Z4IKQCB58uCJaSXci/EJmW+cNs3OdF1Domkq2ONrItB+d0rzi/0Q20Cyb+nUz/BoOcJEhVo5gHhCkme5OMijl34vHpdqbtn6djSsjkjsZBDZRFqlhW9JSW1igkdR97EThhrbyrD7WgbQyY+niAoM0g6nVrUSe1FfIGvHFpT/0CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746601794; c=relaxed/simple;
	bh=CdElTmSaCd0HTAFwt/TyQJ2gnmjC7om/xI+zxvCwE/8=;
	h=To:Subject:From:Message-Id:Date; b=Lq0YMVhaqxV9rXuhUEYX5+AVrVEaIIvbjsWscBH5wVqZgV5RSWl2kbOkl0ilGnlKRSIhdAIDJC6w180mva0nkvuCYk+KXn65WRwpsX3RjKlBdR5mE0mrfWaxo46BSKf+tZv4NFNnH9kXsuM7yxNOKw/M2EEIMnucAW3IWAg5Czg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=By/arSQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="By/arSQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B7C9C4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746601793;
	bh=CdElTmSaCd0HTAFwt/TyQJ2gnmjC7om/xI+zxvCwE/8=;
	h=To:Subject:From:Date:From;
	b=By/arSQ7WPqh/4lDXJw/xKHPocoTojbAnmPGjNmEZjsnftCbeH88KGjSsHxBeygDc
	 lCGvICk7o2FqMETxMQfjvVc1tmgIVYb4Czjhh1hmVghaQZc3FElIgUG8Gh4iYFZp/u
	 HBn2+wI40KkXGqImMPzpvrv2ytpjcnqgzL8Xc0B6vX2etthRvIKhe7/saBsCG2Pvvv
	 ON37NTx+F/AUUTWvFE4jnvEV0ItQ7VHQHtNZq1oqexy0J74B56eR2AzPEnSLy4EF0X
	 DO9xzoGCrRTHWN01fAQ0amVDWJJJNV9ZqUNqqwWzSDjnxkkr5XCV9LTkF05UNHatJ4
	 yd5XUxNzJzTEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCE7C369DC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174660179357.22499.11485148893287099640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ef7db5e267ab38704223f0bf899c8cfe9cee36dfe5dd2d1cc6b36976db1bf7
Date: Wed, 07 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746601793
