Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF007E0EA
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718018843; cv=none; b=CTPP3uSKzgnukz4X6fJ5+2Huk8pHuNmdB0/u98Cwjhp6pV/mYtEn8V9in7uDxLpLQBSkzDXGOYlLKeYezdU8aobwcRjYFSe3ftqRo67c4OHj7GE/jcarhozkiXPiYAXPl7E9mJn360esscH8m2i+6RZoB/iBCvSLr9azr35nwZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718018843; c=relaxed/simple;
	bh=Dty185KkzD3Y1SG6Tu+n9XfcZ6IznUGCIzXXjWhE3WI=;
	h=To:Subject:From:Message-Id:Date; b=rX6Ossqphk2bcttD7RcPEjV6zzIa18d4PrOrRChU/zFBLbY5k8rO2cfds0F0OVpKqaQwCcRRyjWwyzJtwVw+H9oD9VA1M8pqSPcq/T1IAW2WWBf3FgCRAdUqmArzItij8AP3oa6tYs4F/J4YnQk9NILCxCUKaAaJf1pO+k9aqJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBF5iKc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBF5iKc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE23C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718018842;
	bh=Dty185KkzD3Y1SG6Tu+n9XfcZ6IznUGCIzXXjWhE3WI=;
	h=To:Subject:From:Date:From;
	b=BBF5iKc1NvGhfrw9RBhJOxCqagwQ610+cCbOBxTARjRv0Yz9/E9nSf4MxT6P7ObXU
	 kfXkoKDFESnp4Wmthw3bzgbwVZsnnt4Jv8bR9C+aFbApuyPVuyU3SbYjWiBOskkXRM
	 VYQhvIPeYqltFCZFl9DhK38JZ1SmhCEDFeNXU+GLDC3JIsOAaD2as8zJbQACk9/bz6
	 rf4g0/65hpieSeteeyctBSp34cniRrA8PmhYvbL7pD9fGZKPtUChZU3LiTZbUyPlt9
	 u5t4U85htYGEyzwAsrGqx0XWzc4SyLljoYLyqSZakmm1RKfl/DVwfCrUMdIEzA41PJ
	 ZXSMkikGdNu4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB022C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171801884282.18290.10203677896298619532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9a99559b71246bee1535adf4e999fbd8cb806e8d3dbb4e42aa56fa297bb350
Date: Mon, 10 Jun 2024 11:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718018842
