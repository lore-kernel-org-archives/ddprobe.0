Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1837F28399
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755457194; cv=none; b=cwskwOJblj5rVZjBBvNef+IAI8vPU07oI+2aEcdSi+Cl/cywAC26s2hbkuQJaW85stZuKuRqSg5aZenTrRE2GTaWIsufLE1RwmTME0inRvpM1omIO2mXtWmRDYCnyHiOQhvPstLvLM5l2SbDxJfQBDjj3sbeiXDTx0TsxDZFSdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755457194; c=relaxed/simple;
	bh=UWOBPiqiaWzExEWielrdyLBiS8pnYB4dkSbIRTM6/78=;
	h=To:Subject:From:Message-Id:Date; b=gX9LEEw9iHg2i3WsPpCN8VnI7wl9LoEH9YHJV6zG9RxBCEE/oUqL6NQt6G5xi2/VsuwmlaaOT1zBoUwUVLvpeAIr3KnDes/LABKNVe9cg/6L0hM7r4wfp+QNipA084dW8twvPGqxb5qVtE9fbzmIxG0ZoS28zsDyxsMmcs/goBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8u/DfKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8u/DfKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50DDC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755457193;
	bh=UWOBPiqiaWzExEWielrdyLBiS8pnYB4dkSbIRTM6/78=;
	h=To:Subject:From:Date:From;
	b=Y8u/DfKLDYNAqoGh5FlqtdOLaKqf3YEtbu55DCQJ3Glc0k8v6EnhtD7zRvzJPD37i
	 nu7Rt6J++zz1gRwJa3goALSjOapzXHmcg7Ncanh3vhbY+dDQ2xwb/yiL3vMVYFMuJu
	 ylXnGpZBkFTZlAag1SwETNseWb/IvH0SV6l/L6J/7CgbAdYkE0xe1mfzpj12eVFfEj
	 VIGucODuiNrkRr+rs7RphXvHAYw2/QxAnkitbE6h5CkLfPcz8Xgl6Cq1OcKdLymB33
	 h2VDGucD4GE+Af38jpIydnFQzoOMcBhhWeyANQNx3TdHlnJman7dUMVD+EMPICn0Rt
	 Cnv8yE6koEVzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94071CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175545719357.32233.9729433052119303489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80bfe9919c92a781763d89d5a2238d84e94c4dafffd949326f5c1ab34c6f921a
Date: Sun, 17 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755457193
