Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEAF92AE9A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748875194; cv=none; b=tTS81uBNrdBYM/i5qDK14saNJHWTKko3/9MoazZb4c1+o/7CxZPZYYZxZUaZtUEQujoD14DCWK52UU4zB5nmsmRLneixoU8W6ESTKZeTcikXMzRPgeWq5XDaaIJNacpCbPHpGPBjeaxaoD1/aAo8F94vuK9D//3lySwRt5viAC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748875194; c=relaxed/simple;
	bh=YnSzSxISWE8GskPjlC/z2iugdrDmpDIasClPGVrgoxw=;
	h=To:Subject:From:Message-Id:Date; b=TXlQp1X6L9pG2JNHhJFuwzRKfTomtcQ6lHY5RG4sBDGmK0Wcu0hhpH7UhxvUQ7wk4AdO0qMLedxUTrNBh4T/ieaZly4p36dht6AnvwwthYAJfM7UptppjNMaIKkTvngEmKhEizHy1SFHU8PDQzlpqYfb8z61tc8lAloHle9vnu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqWUQFej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqWUQFej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A124EC4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748875193;
	bh=YnSzSxISWE8GskPjlC/z2iugdrDmpDIasClPGVrgoxw=;
	h=To:Subject:From:Date:From;
	b=lqWUQFejES9bIjVyQ/zNDm/QT6HcLZSbvKIOw7eaTL/gZz6+JQ0JzMl+SL0u7KkRQ
	 pRwjCIvI7vPcKwLqtNKOZz9tbGkcG9hXbx5utoxC4Zb1qlckhGGr5smOExfIciYl4g
	 3Xa/w3Bnt8lE86mqBsMfPWPvFDXfqrlwKk8+2CiSnrX8Sy+RfuIEEuJp3ZZG7q1Y6z
	 JOkGaMjFK+ozIsSp9hZnx8yHnoJDPLFgSSbUtC3TIEvVlKh3R2ymbfK7x0K2dVJsC+
	 FN9gWcxPOycPY2PfiRAJPA2tlFnvLkLJAUnxLYA8ko5XrxXGh1l391DUeQAq6869JW
	 IcdhoBo1W0Fzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD7C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887519358.32606.10591926114788063822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84e1aad18ba9fe50acc32c1458c7c8016036f284a630ee3383228b1de9f69795
Date: Mon, 02 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748875193
