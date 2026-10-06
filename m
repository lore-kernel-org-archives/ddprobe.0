Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7621E26AA91
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791267634; cv=none; b=AAmxgJHwwIkOrM8xjXTLK5vzkhgyfjguEviphBMyEAy8GsSylTMdJIseMa+uJduMsJ9DQLRFWm/xldlaayWHqcBY5fKCbepFnRXRqeSPrYR194OylgEn/TMAzPTu6d/xHOblSEFi+Jibh43MeTyg3B/c/N1JoTAKzGf+n2p7zns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791267634; c=relaxed/simple;
	bh=Jt8VjKlVgf2ScTFUsDq/qsvFwuyOr2IbMb+ocajZdAo=;
	h=To:Subject:From:Message-Id:Date; b=KusLiqLABc3xLsCAwoWTnCeZPZ/IH0qgh2gsN8OKY8KgaPkOoVHStYnkbDeUfQFeYCQXXrSc5yTx+EEmsIih2CAJz4j9v7LyHVCwQ1UqJwpw7Ei4BCSIDVpGERxUXKALm03Wjt4mtiAfQG29oOiaaRp+wcxu3Htg3ZtPo6NgdoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjqEl4ZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjqEl4ZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06FFCC4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 06:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791267634;
	bh=Jt8VjKlVgf2ScTFUsDq/qsvFwuyOr2IbMb+ocajZdAo=;
	h=To:Subject:From:Date:From;
	b=bjqEl4ZKOOTIKuhXuARy+r1N+lah32evY90OM0cJgxWHeMtFD2PDh/+hIGEuE0hxv
	 7Kw/TyygxblDnGaEUUqfKY8GW2nQWXQS6A9Nl1YifuXJyUQtX86DQwx1jcs9G/EZG0
	 AR6JLzMDTG3HNF0hBpt47dsKESok/WL0BvIQZDKVacEB3XcMvJ4Nt2O/rf72QD/l21
	 yP6dF7U8+jn9K/G/vo3N/e0w6puV0dpiKaQbduHj7xCQUc+E35Zr5nzGN7zufU7rQF
	 pSNsqTlMQxxIHwOYoShpn1NtDgTQWjeftSUWINpi3FNmgrci772cEiGLWJKf+pqgkr
	 05QYdxLNIQGsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C203ECA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179126763375.22698.1219321198057113232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ef31c282058229a6e30593ac5d142ca774b913ca29a58aa1445f5e8454cae16
Date: Tue, 06 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791267633
