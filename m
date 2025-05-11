Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC4417D2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746965994; cv=none; b=E0fLZrE7kjPCS1t1dLtOWnZCwvxX6UX36tXx1v525EP9tllgni+ldazJ3wpRCKgvCcQPBE/EAGNMjKhxKEHioSk4CoxSRmY47wwI1f3nWr43Y9c/GqoVzsmkxyzb6gWkzDlLHRjST8d0Oox3j5pSqw6WKpKO0OdonwlTj81H0lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746965994; c=relaxed/simple;
	bh=2lOwqZoRDrj/MEJPTcElpsylKd0eW2erpbr9Jo4wPOA=;
	h=To:Subject:From:Message-Id:Date; b=oRT2hVc91w7II3wVbyGcaY8aLV1iJqbxr3sMyVLps9cEpshS+r40eQgtBq6SGq1Vgqsv+Rvwl1+7SgAu3rkq41tspnNRpfd30KH5sonJ1qhwQW4eB/PHu2Dgw0sreKnju4Yud3LdHTysL6tNzHINljx7DF0xgwv9IurML7c95nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOuxco7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOuxco7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BC0C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746965993;
	bh=2lOwqZoRDrj/MEJPTcElpsylKd0eW2erpbr9Jo4wPOA=;
	h=To:Subject:From:Date:From;
	b=uOuxco7AbRXuJ1DxEtzn3FzMKWYEcn0zuaMGwYiacBbh0M4lutyh4UlB3mrWr+apH
	 wsDCWb7mqRZ/J2dLOmWyM6mC4jHPgs7s77kK4kC3QWP2uUjlroNrfferJ01e/q8kPf
	 xVLNXqn6Bt98gd67FGsahkbW8yOO9bgSyWK4qvdN6o+9oESuQxg/FZlLRoSk7ko9dS
	 tyTXd5m3mYJD+QtNttGvcBJmjs1rRp90UHcj6V4OOcnyY3p8Pwkwe7r3Ksxb+x8qQ+
	 HoPi8x2P96dX9uuqfx+zeFQbnu9lCAxphHTnTPJEcBhEQ26RVSId8jccyYVI7x4+KY
	 HWtOgUOcxaZQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900BEC3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174696599358.12061.6468638215056654206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c5336a1e151ed927012c44b29654cedfb626cebb2e2cf4954a90dc00216ff8
Date: Sun, 11 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746965993
