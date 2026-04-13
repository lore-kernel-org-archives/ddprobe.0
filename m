Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B3E1BBBE5
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776113854; cv=none; b=lLU8Cmr+XVzhlAE/ii5Y4z4YHQrfKXygMxKsBetZOQXUg0K/OB8ybOqtyYTR36RGcpk5Hpyuvl0XCQLAu5jTIy+Ra7+H95vc9iO0VfqY5ybkZjySNjf4E+h5h9lhJ68WHjjz7XoiLOEMmadohUVXAIIrGjWXQnFjrNhKqnUqfhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776113854; c=relaxed/simple;
	bh=rTmUgnEWW0Ge7cO+aOWCgq7Qilz6yppi3P8Nos61q5o=;
	h=To:Subject:From:Message-Id:Date; b=b9QwslrqkZw0PGZHgirjNruD0lljboqtIEAmgqZ5khdjVDQGEhR6KA4d58JESpVS7DqPEhlh4uXHLXpaOYS3lyAnd+ba79Jti32+SmBWUFhvVx+F9S6jU8YsTbMxefP4zxn/y0OqpHvWfUjyRBDABf1Yto23ArR5GoF7eEQLS7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDknJJys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDknJJys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB91C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776113853;
	bh=rTmUgnEWW0Ge7cO+aOWCgq7Qilz6yppi3P8Nos61q5o=;
	h=To:Subject:From:Date:From;
	b=gDknJJys03VWM4uN9J4C7BAkiA+ckl37Chk6kzmDwK0ZaGYAx7iRNZd7V9zq6VZol
	 2Y5NgZOBN9JUdCVLRH57/iBOL2p3Ghb6JApbrHouN3vOJHS8IRAYvYhG3gznJ+YJ5M
	 na1FBoGcIF1edRlclC6lJYiPuFkhR4GwcpMP9z+v8HCUktlqpgS4HyIn77m5wFHsu1
	 KyPCv8DfNCyNt2SwbCTrmNdEaF2/9Ihpaif9Kp+1RghesNrdU8Aan8UX7mK3AvPmwl
	 Cjr5/vR71VwUI0UjXMzCpr6bBOBGA7ce22B2glj6aXoiirK9KGj51BGD2kkBtl6tYg
	 2d9JhU5CPFEHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2CCF531CF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611385368.2570.14909840099621382677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25a375d57189a7af9279efb2bce3ceeda4aa27ec13495f793871d3d72cb6df20
Date: Mon, 13 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776113853
