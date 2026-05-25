Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD371FF1C7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779717754; cv=none; b=NrB6WaCyzpge4AVQuiJMVYrJrfaoYuX8LV0cJcLYG+0JOkKnp8xiT8MbMpEt8MXnz3LMNyL+7wxprt2V1QVrKkTkfpGy9VksypqZCmXBLs/JTxrC2POqSt9/0j2WRTaUH0q1RPkUAjfHBT2mNKz/jOBfpPT0/i4Ne3Gewa6gUUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779717754; c=relaxed/simple;
	bh=EbK46mo6Tu1fMJad20R4EplQYWOHwxCZM3KNiXHX+oQ=;
	h=To:Subject:From:Message-Id:Date; b=i/Hb3o/Q8Pr0/ZJWp9sXG6VLBpZKI3HtD3n2Nq4xPXyqAKeTchQRW6VxvNwNaQ/fioK1VgNH9r6v3Qa1EJx9D2d0SoD5Hd7R0788qudO8i4JeMAkVfhhwKQj9VYLFgvDOhq3TQVwMWynTN/VgV9/63TPQOycLM/YJjwN3f07ykw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G898bXsa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G898bXsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB51CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779717754;
	bh=EbK46mo6Tu1fMJad20R4EplQYWOHwxCZM3KNiXHX+oQ=;
	h=To:Subject:From:Date:From;
	b=G898bXsak7/oMnngYO07K7R3vkhBi4pBrnEuSxq3C/nRr93ZqlSrqr6Ls7CWQeGD6
	 PbgC2HGj/jKxi3PUaWV9GAZsL3mpXhpmNT/bhIEHTSPNat25u4uSMqX3O42d9RBF5C
	 Fh1buvkv5Xj8tCfG2TxNfmmtm3QqSvOY307umJzJ6zJRd1kEo2u/krmWHUXcTvYpGi
	 OxqYozONLu3pHrj4BfLXcYeJaOGjN0gAuewDcIbhtwmsXLkUEpcI6V16s9DRlFU7Kf
	 8YjSMYCr7rCc0PVntI+DA4J24WNrFXk8N4Pbaci7kkbkwyWMysNouuJn5abjpU/qFk
	 qQoeCNQ5EIdlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8AF4CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177971775379.18385.8041980074144244478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb815e8153de1ee7b4953d0e1cd80e6d38cb5626a5221ee0c4d9e8d49f5550b1
Date: Mon, 25 May 2026 14:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779717753
