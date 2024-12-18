Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C8D17A586
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734561954; cv=none; b=R1i2jhAa0SesXS+PtHG4L4cvd3aVStwTvTAS44mmEAjlRIoX+IgbAFdKLDSYiaX4tG0ABVtRNxk5k3XQRP/tWlrKhef1LozoEGQ7BXxED8ML2llt/otLdUTwlmrFEsQTcd4tXtiSiT8DdvDz8KjW4mb32BnUo+92HH/FdEkSgyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734561954; c=relaxed/simple;
	bh=Ht8WNuHVYHkbDCgmNKw3MRDeCp85vOifhP20Lsv36YY=;
	h=To:Subject:From:Message-Id:Date; b=l38l1KSTn5RkQORaTT/MYSwx2w6DXc+GQWUSKsEnM6SOTfIMWwZG+cV1sV24rtm3tw/i/DKBUFweoeIHAP2DUUuWoNMyfnMfIqnNyqCDTP6NsLW0TvDcIw07JsQWbjgvxxRHm/Epces5jkT7vrVpbJUHJ5zXVs2VwSl6eOgenv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rja+um78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rja+um78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B6FC4CED0
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734561953;
	bh=Ht8WNuHVYHkbDCgmNKw3MRDeCp85vOifhP20Lsv36YY=;
	h=To:Subject:From:Date:From;
	b=Rja+um78gGsYSo+Lak3u5O5gFsDWsRE4GKqUM9qVx8ZCRdjWkun6AaszKUT+qd+0h
	 gn0jXeUddorffN/8Rw5oIPPhRlb/GeCVK2XbjXVrM+QmF89snENiNwLcNotl4n1q5y
	 AnraF2CnccNWGBiD4TV229BkKgRUV+Plxhw/XAFL3XWHl44Fyr1jBAsj4FyYlVeeKq
	 VzoY46L4K8v9Yyw5POwKDVI3m/BPhIrxN+sBwwWcP9RgH9qf/Zopf1DjyZ5r+uhpHL
	 Gn+03SlVEpNU1mkmxzlmS7K4uzp0+ppQ2/PgHK7HIJXHS5ZMACLzZb3UnDTFwwDhze
	 lH6bKU8oTYAAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7AAE77188
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173456195362.28361.10380179310461229833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52ae1129c36c0cc2a060cc5bff793758b1124866d48a9038aeb4e39cb44de1a
Date: Wed, 18 Dec 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734561953
