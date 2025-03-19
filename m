Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BCA024EF9B
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 07:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742371194; cv=none; b=KwjlGCsX8+nELzyTCuYuUP/jgWFPP4kj2gAIZ7yUswI8u9I3Id8FfKiDK5SrYuswOfhyESc8LXfB/GSrdO+H2meoGWg4XlGWDwR5fxnUN9NDg0WmYUe/t9RIbUAQbK0lvbbBPmFmDcQL6oMPXql3uRqtBpNPVxhfzlQxDCpA9oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742371194; c=relaxed/simple;
	bh=0sHV06EVJYoxqWU7Vm97vUNxe4h1s44j0n30yp+XY8U=;
	h=To:Subject:From:Message-Id:Date; b=L82IhPKyH/xbxmtfVj4XDoyDXUeLdoRrHqD8PAwWPAleMIDjYImTyDvEi5zR1VHoYibMDzhv6Cbwm8Ed/egyVZXfNC8Nkg5/V1niZfbjizBBjBwQEMg+T+NnHu7CKsAcuZKgOmywTMgPwta9Y0I3UoGjX2j2mK8nw641jZtDbS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYa6AmrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYa6AmrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B34C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742371193;
	bh=0sHV06EVJYoxqWU7Vm97vUNxe4h1s44j0n30yp+XY8U=;
	h=To:Subject:From:Date:From;
	b=BYa6AmrAGB9Wt6CORM3dZffB4+wehZHfVe04fbIzgLUcAs8mV3GpEb9i0ORXw0B6q
	 Uv1wqyUfQkB3c/h+MSH9owgnGMFyyxVBP21ee0jQEDg2sRPFaR2bJvx2M9uRz5anNe
	 9J6l4s8JVPY086P0BLlMWfMzfqUe1mBK2xtZXApCYEfRcdJE/TD0E+5xoOsfyHr//O
	 U5Qqs5dkv6lYhnyYBB1Nj8EnWR6Dt0pwBqIEF9Xo8NB7mtWH7CCYlK1fzSSao8uaHN
	 LZqLIoskOB8SK/C2nV8zG1QhYhlGfOoksE91YrLfDptulJnkDBn+Hwn57RMqnb8etc
	 Fpf5Chn/jH70g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E78C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174237119370.8540.14852618730270194472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc05d64129a5a572ec72ab64ecd1d541b79bbcc4e54011cc4c286dbe3bd171a3
Date: Wed, 19 Mar 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742371193
