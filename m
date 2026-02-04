Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0372B21ABB9
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770181434; cv=none; b=Pp+3uB//0o3/WC8PFqrzP+mSc8Vv4ieJxApl5yGDDCme5vepozaVBOfTZJRmG1FqRYU+PpRh0A94gprotd86yjj0nGfIve5Vs991F37btMwfgqE8EwZkg2RBIozH3ZRtb1hCq7URXATQoyHennQSFOpF23o3uPgxubOVKkhbywI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770181434; c=relaxed/simple;
	bh=Xjgpv96OVo5y8OkXUcUZx00d7Cgm5VmNN9Bw6ZLFjQs=;
	h=To:Subject:From:Message-Id:Date; b=O65vMDb72b4NZv8Z3z+CRiqQDYuPPfLNAK0B841McClIVIRWhfE91PkGXPcc4esZ+i3sOQDlDA/qgUCZBh4lHDC5KgkHZgBEl3s19zlY+uhLL2886j8YRAwzxvftnQ+q6y3nmQ8+Rj6T6ep+S+G7zTVx5OrLKhLYJsh2XpUTXWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtZxjiCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtZxjiCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A61C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770181433;
	bh=Xjgpv96OVo5y8OkXUcUZx00d7Cgm5VmNN9Bw6ZLFjQs=;
	h=To:Subject:From:Date:From;
	b=MtZxjiCAbgM6oFYUdhzGr1XiFdPpAaZ59wWiHumtrQrdoxl71N+2QZ2q5FJz7cpIo
	 djyJfkGfA4Ov3zj9RxVD2CyUOynImJnn2lOOizFHOPqS50YZRAhm/r6ws67Pf+oJxQ
	 r3rtMZVpNj7jx3WBCudVigCCwuJ3L8wmPBrIEKd8AHb1d9IyjPZ0tSs+mY4pcaVDAj
	 yaLv5aiSWYYLZDgTMElOI+4HIeTcSn/kmV8OZ0vIalm0SvvOWvFqssXs5kvV6qeFZU
	 ZJuJA0w8dcOF/cIwX6WRVF3es7oHfFTgpWU0UZFSYAkKv7OTZcjRfW0NQ6cBEX3STg
	 ydO1aB3Btlpvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937B5E8B39B
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018143359.13408.14348572583905535564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 749f8dff010c44cd217e43a8f5a807a12e1a0e820683be3d96e116be466b2fa0
Date: Wed, 04 Feb 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770181433
