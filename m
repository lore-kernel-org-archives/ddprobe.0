Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5713F37A843
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790860234; cv=none; b=Xs8vBx+syZsYOLmZCKnZVTLQIJQlfNU+cuVhohk5GPCEYR+1Gb7XnS/MnhygeglVlC2iqQlQJ4YYKw73enkYyztz5QiuAwbxaleEFK26PtBzIFdWQx9Gdn2tvaWJNxaTKXyhrU+g9ALp+jDiRVJDxJTE3fJlPYU5UzhdU3n+rH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790860234; c=relaxed/simple;
	bh=qlsvk2EN5eA/NZe8hk4QExSWnNF1Fm6F2XqovnhNkkY=;
	h=To:Subject:From:Message-Id:Date; b=TqCrmFRPXEdU7N4Oj75CsmlShooFQjjGneyK38ZuXNhn3uXeRZD8BRsXZ+R55BVV/Mr98shrWqNxC27mmEIAe45EAWf/u2Qc65o3CXqUHYusuGnPC0/rd8mDD/5Ax+2GWwm4sY1MNKLmdlPpTnQcHYNDlvpIoJJNeRwtU4eOLP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lryqI/Jj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lryqI/Jj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55A4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790860233;
	bh=qlsvk2EN5eA/NZe8hk4QExSWnNF1Fm6F2XqovnhNkkY=;
	h=To:Subject:From:Date:From;
	b=lryqI/JjU3h0ZaNWNjghCHT+YLPwSXNyufqf/Gzezw5sN92Fdcig+MqNeDMvVsfYE
	 xvlOumkG+j5AnZNHPOYrOvpe4IF7WLh+mdda43fUZ6MNsqXDYfHA2G8/8wl6R1KHjZ
	 5mvDaGpOTbBYKJ64vaJJCRv7OEUFVKA36n+C0L2NPNT4MJEbawmg3YCtKYlckPocQb
	 vZ3gFdRPMirTztQxg2LWh9J/76qxJA20GcAao59vVOOjjl0eJz4CfMgEu2Upin2X/b
	 1KcLu+e1FTHMwPX3ZDmlAZq/XnH2o4Fyt6O3G1ogy/WwoBEh7iax/nlo9Wsu0Sr46o
	 HcQhyBYIl8LAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB0CCA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086023369.21779.14683090925669663109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58fba0c58f4b7526b5b15da9d7aec40f6ce3dbc4bf9e99cba91e3e1d9bd7e7c
Date: Thu, 01 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790860233
