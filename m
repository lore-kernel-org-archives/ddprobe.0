Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2FD1C84CB
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765613574; cv=none; b=E/3to3olVMMf+Ep/mhmD7bQOOw1n6fTd8mw/26vb1q9iQm+3d1sjuxlJ6aJOCr6Gk6WfPX6+WdoeikI+PywFgML7EjgKZwKrW89Z1KcPrtbbm8EC5Nf3uDtQApJv33BmVYUPdT+vqMyhNgLgbixAIDhRWptb9MJhV/XvZ5JRArU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765613574; c=relaxed/simple;
	bh=Sswfr6g4f3EL8FcYnnYZNHXM4xQ6Si4l7mzMfqgcJmc=;
	h=To:Subject:From:Message-Id:Date; b=GxEdbjMTn2TybCg/ItXjc3glLnzLcN2W5bNngDzx499NCkV7NAf1vVmI13pYdQ4NEy4onQT+9p+ne2The//1CePxv97xIOESRG9oVint3mDcNtCVNMK5g/WZPCuHgFWXOdPrD0ohGoUDZO7qHzNNkbeNRq028/Ei+cUocTaWB64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUjx/Ugi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUjx/Ugi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAC5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765613573;
	bh=Sswfr6g4f3EL8FcYnnYZNHXM4xQ6Si4l7mzMfqgcJmc=;
	h=To:Subject:From:Date:From;
	b=uUjx/UgiFtHPxTmoKKtRVQDtyWojP3OKyzpgYrQhotKO+kODWlbhoDUITv548MGdq
	 uflx57x7HH1q+ewl2QmqfgsvoKQX1TpAp/HGMkJuIM2tke6fqdNlaKONz3ybmBWa0x
	 hULJyFGojW6DRaqBviZLkpcAL/hsxx3PSHGKI27hMs4xm2xdaBvom0i26brXxDvoQC
	 StR/7LVYxZpgsEMAgjQrab8gWmXSTAMYjiCwa37lgMPMBDCAeOUu7gi0YXW0eBnTbA
	 SPXxo7gb6wZ0sX6okJkk48jslmeq91y1V/9zoDSa0fS/eTzeSUt4QuxU7wXSbNiFjI
	 Y1h2MTtIYD70w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976ACD59F6F
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176561357359.8489.540183700024512496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8d7bfd0f32eaf6d3c0bc730961dccc76d68d22000ea26621dd2229b85bd225
Date: Sat, 13 Dec 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765613573
