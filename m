Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43327C13D
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744599594; cv=none; b=RVFBfgYPF1aY7gE/dWt7g7gCuzDzMoJdTAF0V3Y0pFcILj1qqvslQoJzEHtj2uLQERPRcdOkgh9UGwwf1JKHBK73NxBxHIqecTaYbjxVBr0r6FqRfBnqIg72VIzfO51aKiNAqLaKuHcxRBj8RkrADp3ZX4KN7os5MlB0sxgxefE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744599594; c=relaxed/simple;
	bh=Yhz67blPFQ19p7Ygc8TA2zsOw6E8n1QD3fPVmpeu9eg=;
	h=To:Subject:From:Message-Id:Date; b=lPo5Xb3shx/DYRL19/aRWJlt3DbQOnjfzLfw4rYmdjcK7+FrIGTOCoAg6QyeNNb+TE+RjfXGR2xYnNgWLOU2jHR0noq5tAVLaPFgkktpabuNe9/aL8ENbMH60wM+aZ/m6jqpGwfa3ZnzWcU3PHuE7LP4FPvxL8A8wNB/1BPqZQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWwthaPL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWwthaPL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFE9C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744599593;
	bh=Yhz67blPFQ19p7Ygc8TA2zsOw6E8n1QD3fPVmpeu9eg=;
	h=To:Subject:From:Date:From;
	b=ZWwthaPLpru+FOrJljL8SVmYigv/gHTpIU6Wsk/3pmYvVroC4wbUHHs1Ak5J4vNNY
	 YbtIQOXyy9bErHs02J788PsPcBm57pjiap2OEdybSSlZQw4VOnKv5kXQTP9zymzTAY
	 JLekDZGan53C4awRkBgIuVqO/Nm3qPUPX3XUP4SdK+GsvouzSzITEE4Tcd1LsP3P2J
	 20EAznCI32nHfAq02ANi5fuMA3mKorE8M698L5BnsnFRc6bRC8g22j/wLdvNAqWT7m
	 ED1NcN4BbIepDuTCX9ub4cM+ODQLrQSDx4g+FtoB1fEZtg6+E4M7XzUKEYIBmDSyB1
	 HsebV1lyVNC6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABC3C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174459959365.19123.3015611456346576341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c83803aadda5d3e0a1f173ceb84b5ce498ecb175b539a1fd80cde7ba663fcd9
Date: Mon, 14 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744599593
