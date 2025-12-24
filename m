Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C7E29A2
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766539434; cv=none; b=elmG5xOdGRJReVEVzP1nCAy2gYCYv3o4la4N3If3SBq5AyJB7/vE/jnT1cWhsuHXtcKgBKMSScJDncUFS/BAR4RItOgwLE84+tLk7MZgcVpX3MtR4asspQhjPPcYEP+ewdga9taPJXVhOqxNlyfu7rWYXmUtFOLfCbbXd7f1428=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766539434; c=relaxed/simple;
	bh=rwLSqiPXW9Q9OJuguQp9XsruoD8NcM08nIyxbOpdUbg=;
	h=To:Subject:From:Message-Id:Date; b=jy3+ASfdwmHPlnkPdEY7QczAOcsF2Yje7zkpzaq4+NKEdvnILrExYPOwxJ+yBUdQUzaUkg/DsW0I9KYXHxQOxZdiLotrbTtLVlRS3wgO9VZkAraLJJxnqegLrbUNBJRLrF/ln+fTV2+0vuqBw7TnEDcXgK36C7mTudgyVcGmyT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aueK+1mQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aueK+1mQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A728CC113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766539433;
	bh=rwLSqiPXW9Q9OJuguQp9XsruoD8NcM08nIyxbOpdUbg=;
	h=To:Subject:From:Date:From;
	b=aueK+1mQ94gyhwE3kzh761tMz4VANhKF30dPLj9BqzeBJTuevtyKVgMvJNWlLnDQd
	 nA75GQqvPJ0rlHP5cgny6DHNiWmJ7+a4OvCHCoycCEHcgArQYx1OvdM5wOKHmjo7iy
	 Wr7OEynYFkFv1OFohtxdHyxiPfPFt12zd+JpNiXgZfmWvu4tzkaDn6KXPZEGRG5QQD
	 gMk2ZLLzsgI08a6ssizUQGmUrM4bxEyGfLYv7xYZQMy3oeguzx+dj67JKLzDqXl/xH
	 BSuvv7CkUvXeuwNEdAHpQUX5/BiItBWq9kJYKK+vnJ6ZdYT9pY/BCOb/6D9GM9/ZiH
	 ZHWRVAiId2G+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961DCE748FC
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176653943358.8292.16579634826827638197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15873c9eb1c8aa5945bc5a5a2e12ea2f52700b825f8d6161aff134373b4edcbd
Date: Wed, 24 Dec 2025 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766539433
