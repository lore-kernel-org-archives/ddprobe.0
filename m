Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2FC7207A0B
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756550393; cv=none; b=puDgXIXyG8Nh2d+2r/eADEqgBj8nGxMKikH9/rov8xr69zz0UmkCzk0ut+MbckW9HV7SiMfITe17kLfI3dHSwWf/7yMYtyearKsIm0DfiXjI30o6xhJlaLPfxCDRj+KGjIroTWndiPeWUb+OBsM1YXKrJhVLQo1S6TB+8Lx9tQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756550393; c=relaxed/simple;
	bh=1Hoo3CQ6eHskKoFoK2lkS/kXrprWLHDrQpNZoqyAnDM=;
	h=To:Subject:From:Message-Id:Date; b=s7HNuK/nPDSRpwTmlUf/UM45ToejAlHQYSEV9eJe73c20zuxP4XcVZ2zmurbbBmecsmrFl8pxMKVlNozM2TS0J4BUdc6ZZflndbLXBVLcJyPpulK1zYEI2KAMnJVB0eBRuaMQ6Yg1/B1uQDazGJiIaxeRNvfsBOmQYiMdgAs/Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGCjfHTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGCjfHTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A199DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756550393;
	bh=1Hoo3CQ6eHskKoFoK2lkS/kXrprWLHDrQpNZoqyAnDM=;
	h=To:Subject:From:Date:From;
	b=HGCjfHTKPH40tZ0qq4Z6ZY5N6ApGDFC9JgrhrPdfmDigSh3hrw8ECBgxXvcSPb/47
	 B8xhGS59YBXWU2NQTXdt4ByFptpu/w+ALfBtoTLIxnaMG67QPwAPlOp0gdFRUDiH6M
	 8ZIZ+o3RQvESlOxNVdWJIvyGDq8+mMh9qKzRtH6OXkDpG7SMmYxuklDJGGc6IkMxez
	 gct6EDIhGjPwsq+K0ybS6WfDe6i9ZRCW9KejNdGjYJyYWfQnerc4xjcx+dR0/LnXxU
	 jo4Xr3tbdYKjMbVg6UOTFiyji4EXaZogutijWU3GrRAddRJST9nTY63f7QR+zwkcSZ
	 gWxjNnxOp0mZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B6ACA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655039358.26352.12507093234312708985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7834b360f007b8347111b4e25c949e43ec3d61e31e1178a5c9365d02c7e45d4
Date: Sat, 30 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756550393
