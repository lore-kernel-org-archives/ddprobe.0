Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A9E333426
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763386314; cv=none; b=SMImf+AsHXIAuAWj8ILbUH9KyL86Du2Y4WgOhSfv6ZzdHJbgl9PUkq5F+V+5F9n1Z1v8p1IVOi1+OJ2G8l3D/Hr/sCIhBMB4tisgYThoaCSaICx5AV11SctqjwXldH/HBf7q8hRHHOsra49JghWc8yoMe86w4s3lWI2Q+Jx9LxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763386314; c=relaxed/simple;
	bh=IVVnLwo+fSErb45UEhXPLk8FngppmqjGNzLKYYZossE=;
	h=To:Subject:From:Message-Id:Date; b=gwvaHU6UZSVGKwwgEcwsxxwnWBtRIlQM5AK1Jm3gpRq23yJ1cjqszBKfl38CCDdbd9tkWj0WFu0kf1K2IvWMUefssnMoR5IbB3OYMk9SmFv6PvEhzSkbFUyeGRI10AY/KfpTH0DZTv+q9wxirO47JiPN68Q7qQCzsAklSoloeHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dX3/zFIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dX3/zFIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E25C113D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763386313;
	bh=IVVnLwo+fSErb45UEhXPLk8FngppmqjGNzLKYYZossE=;
	h=To:Subject:From:Date:From;
	b=dX3/zFIeArFVLhYgNvvrGp4fnoXwCjgETOyBNk6zw3KTH0JZnVYmJMkadIImgEwgB
	 rAQ54KDdnpF4yz8frm3gptNNjWVDIE4GEXrgU6BZtrjk3wPQLch1AaeCOQygdqWcoi
	 OVEr+ly+e28a2OjxjphHLEx7KjNOQJ7d7qEaMEXW2x8f41g3vt2s1PqM3smPHpcBKY
	 Qc38VRM2SwOaX1m9fM33lj3qBJF1rWE+SJ7ykaw51Sp5P7zwnWDY9uySCyPH1kptSc
	 +/YBzjoUZ1VHswcWYEBCjov/xjJ7XbhuRyy51clOdgaxmSnIQljBs0yziLEJC2yCi/
	 VMeJ6KfNrT+zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98089CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338631361.10896.7062491293298373304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13e6afebc06cd9afcb28c77d6c259ec7bdd8871cc754c43a156d346a83bf49a
Date: Mon, 17 Nov 2025 13:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763386313
