Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1380D2E92A5
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753186194; cv=none; b=YzCUbDqrkliH64H9CozXCTyXlj+ZjvA+BAoupxOzVp3gqzysMprk2P14TqK1v7EqUi6XvSbnNE83QrzxDJ0rafrwOKkuEVSmDfPpjwbBew3OWu45zQDKMIWSxsjGM0GmHXIzYU9L3uPNcJodClJwnTZHI3yWD2DX1MnfeEwnrCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753186194; c=relaxed/simple;
	bh=2kX1/VIE2qKGDF1y3gTpmRVS4QG0rXCQBbww6hBZKqI=;
	h=To:Subject:From:Message-Id:Date; b=LJGXm1kkDALzjWY6XsC/SjZMlX5uTJcVIGQKwRbdCrNMpxKbH/a2xzJEmNgQzyw816Pv8ExEmrQShKzDOFLrrH31P8zOyWm7EjsFqqpd3NEXWWxUnT09m/VmvhbR6RGGRkPs9bnV1kiVSi1mVcETJHDP+vXei0xBwbt+mQQR7oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFmcNbn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFmcNbn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C53C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753186193;
	bh=2kX1/VIE2qKGDF1y3gTpmRVS4QG0rXCQBbww6hBZKqI=;
	h=To:Subject:From:Date:From;
	b=VFmcNbn2YF/Au8pmwLtX5lxAAc/krz8vs2YNp4EWtd4NPaICYkdo1Ci3qO/8hkCld
	 fznS2pSS/Ml7FaxJW7QYvKrKt7TuHzn48yVm21ycUI782YLe/Pz41mNNd5zXOLp8lG
	 fiyX0/qE0txUbCEXU9m084fAFsWLx+szWRLk4OpL9zY3qFYMOszyeVCurit1tBu8fZ
	 PWXQq8VMzgkph1B1z1ZkYLvKL3ns1Rm7wq4ROzJRW8F1mboxHlRBuNdNbl4LODAQaQ
	 7x3dDRDbKOUVfRVkBHXCdE8a6xYZjvNdy+ANs+g6WlAQ4S0umpr7upXYOgjhUJumUd
	 Q1Nx8B7+EM44A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B2EC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318619358.5314.6455978436598717164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450f05d0de13a757283ddd21e2871f81e21c5e1e208e8dbbb5bd31c51993320b
Date: Tue, 22 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753186193
