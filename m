Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3842F28691
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751422194; cv=none; b=nmNJQANOTWOPsuJPkRmtfBkIfxVSC3zWOXzv9wchR115LjldnjLi+Bt93K9eXBR+q9i/BfEuc7btWFNUKlhpKUSxczGRgLSsKm7duezQ3LJ5tgmO3c9+b0FdgdDiYr96zsvS7o2yjne90n9mBPSHW+gt3sJORL8KXBQ7/k0FEpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751422194; c=relaxed/simple;
	bh=mrjzyitYUKih1NocZ9xDSxTeaZJy7WpW+rMxh0H+Q6Q=;
	h=To:Subject:From:Message-Id:Date; b=tQZIS8w1p0EKT3Qf/AmtDAFjINS+BYrf5hhgjgC82n5LX6txz5VNpQ6BdAAlHL5eAe6Umij/jKEwq61qDem7COVQgvgGK1ZNO1+stYyYAy/d4O9wv73sln7xPiPSwu97bSJj7cfMIn/ltkR2BlC2yXxqmkfXipM8R4NrpoYt6Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnufcDuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnufcDuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9C2C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751422193;
	bh=mrjzyitYUKih1NocZ9xDSxTeaZJy7WpW+rMxh0H+Q6Q=;
	h=To:Subject:From:Date:From;
	b=YnufcDuAOjOmGjxBkxQI2n1Jq7SYnO9J+PzxU7MO6b69QQpljvurcyzjPZlrs6oLU
	 31FWrJBAT9osk4rgLKgV9l0D2WFifKYoKL9D7wBZ1Lg6Ii4T5jPnHVZ+kI+DR8cCX4
	 PF42+aoz0iDN9KTxNzBUE/5YLXRJtbPSkOBR/bRnaiw34WrMrdFyRM6yNBFqJIMMkd
	 dwKRrz63UVdOKhBLXRfAd4qVBEKO0jy98iILl2+/Y3ismqEj/JEh1ASD5WMLV2/7E9
	 FNGmrXm/3aBniclQp8lRwFvNkbYlUKgLM4ISyAf7Y+tNZQgEmhfWzBVjsbCdrB7V4d
	 ljN97WSZrPcHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B088C8303D
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142219362.9473.7233252811634731738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7b6bbce3f902f227c08a627e24837bec8a46ca4786d0026afa9c3b331f3126
Date: Wed, 02 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751422193
