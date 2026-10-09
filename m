Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B64037DE84
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791526234; cv=none; b=stAlZCp9OA/cY2+V3J68R8v6xMmZTpluz6d2OeIQtljbLZsyEIWbUgfN5p1/cYbECCXfmI/7TBx5Jr5GWQfMTd6Sjjsd9Hg8GaSJfQVhMScos2ca+mQjs8DLL7UpTZpmCS6BTULB+dvheaxAeoRIqWRp0cUTh7+8IZUnBjlExoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791526234; c=relaxed/simple;
	bh=Qiy9vSSfP+xY2hM8d8F60W/jPoYzDP8W2ydf118b8ZY=;
	h=To:Subject:From:Message-Id:Date; b=aT7Gz1ufNnuEYKeaDiiUXe+vkxs7cUzvoKZqd8Bq7HGpzccYPzE12zToSrcXIFyrYpUXYNahoDFfea13LYqKpux/o10zCIVi352AnUReH28Bp/iw2Ygro7JyfuWgIZ/uZ1zD43Pwv8zKlBGUby0ERdTCJU+lkCOBVfBgez6lVOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HErtkZ8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HErtkZ8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39B0C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791526233;
	bh=Qiy9vSSfP+xY2hM8d8F60W/jPoYzDP8W2ydf118b8ZY=;
	h=To:Subject:From:Date:From;
	b=HErtkZ8/pZAWL+9Q+jQdQgC04dtBf8PVmAJPLZI9q0QURVqJcOGDG1wnZocsoreIb
	 hqoq3/Pob1AF73hi2wARhx67m/fuQJzWb5SFxLMHpXYL2EW3viIv3ISIvIVfsD2SS6
	 2bnkJPBuqXsZDVENRjnWcZOWNbwWAQXfARaWtxWjejWNGXIvb7mTv/s9W4UfLiYcN7
	 ZdftRGxJHQJlyyDl7EbAQsZa87Ab/43HwVlAi2lFTZUDngHNxRp0B/adWGVNDHdSlj
	 iSmZC5jINAAlmIxBwaM0Xhh1lGm/ZTfZmzaxJkW0jMq3px24HiD6L6HCUlo/o568Cg
	 q4woQD0k1zS0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B0ECA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152623371.7663.10956332360283242377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ef885ca0fb6f1c27665de7a70cc5aa6e997f9990a01c4e89f14836c003076f
Date: Fri, 09 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791526233
