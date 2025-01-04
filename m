Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332681E871
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736003154; cv=none; b=SOYu14LFXzS9PWicEXhdECUQ77R/qs/MkC2vX2bn9zkX6zL+NptBL34EDUyT3UULP01MJ+s6HyTGitoW34II+NUwxmkUYsRdr8Vw12YU+WuD/5njqcZl7Lvy2Z5bqkIgQsf9httW5AF4zNBAthEt5UQOceCFyhO2qBmGsF2TwH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736003154; c=relaxed/simple;
	bh=+K+ZUKayjUtV/b+tUgNA/7TRA5ZYysCp+kpuyF8FyF0=;
	h=To:Subject:From:Message-Id:Date; b=gGu27cc12vcq3Nu2Y33iUa8DRS7IZ7HFk0hYK3qAcO2B8ETfG4TEhuLajkSZVUVcuFdUwL1obfBBv9jHPt+TABDLTBBrQtWfar1Jv0QXQtXI/FBTCRnI+N+TSkTzMXjJCTVRDo+O5c+c6enYsKFqzk52FaHJf+KLKZGqn0cCsX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sG3rodPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sG3rodPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D8BC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736003153;
	bh=+K+ZUKayjUtV/b+tUgNA/7TRA5ZYysCp+kpuyF8FyF0=;
	h=To:Subject:From:Date:From;
	b=sG3rodPJcWiDOJ9MS8dbeqHNLioo0mF4k0JEJc8O27LwnqZh2WpYq0CEUBYehiDEy
	 HOme2gjEOzkj/H9qXOnWEV+PM6AnTWWTt5NqPv5rktjxfUxdthwoxXiRU8seNJRkuy
	 aox4yQ+YC8GXzT8uhKlVMxlqqK0EX69KMICQYTEV57Y/Jppt8c6NhYCfq5IxsIcYT0
	 Yzj9D7gXyzKBK+JtvlKhxRmqrw7dQy/kpdg35xbdt+ozQ4N9LZQNziSzDjvsrqGLJJ
	 PRGcpEPjelJCya8E/UCqtQR5vXQzc+zsk3gV/XfxcuvBqnsUmFA9fTt8ax+0O6z64J
	 M0DsNUPnINayA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F4E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173600315357.17261.12165497157676014245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 340ff65afc5794fbc24809bb52d780f807d41ae4a0ffb781bdedcde1e879ad65
Date: Sat, 04 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736003153
