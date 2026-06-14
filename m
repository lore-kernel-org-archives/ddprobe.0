Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B2E2264C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781411794; cv=none; b=aLkQHciymgiI7YVPx8rVAVvEKfNo0LiF9zzfNYj6wCcLyrYIJbOtQ2FHSM/7GSYKHZS8eCgXDXPVD+6GYsY1j67q+Go/T+AIr2RUh0BIhtU9B64egzNDwyrTy2Wj/VfHrH/oL2r51lsCO+x8q80pRl2Pct0opXo0SvxVqsst3JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781411794; c=relaxed/simple;
	bh=rOIp31t4pp111XkDs2OcT3+MlNTqUuyCzkQgf8Mq5bM=;
	h=To:Subject:From:Message-Id:Date; b=U3mv2s0b9fnOr+bcY3Wc/tpIRvjSJb7Uw+No6FgQDq5dKH6HQrOhs4uIpX5qvVmCp/WQ0HuBCYe5qnugDghltNh6j0SAK5zuMeLYKkKkjqkZxjTF924F8KC62Gmvy0Vc7LM9lQcRs/MIigF+uTZbQzsH5fxjQ3P/fNUMAZoCmFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENaBLYGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENaBLYGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB0CC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781411793;
	bh=rOIp31t4pp111XkDs2OcT3+MlNTqUuyCzkQgf8Mq5bM=;
	h=To:Subject:From:Date:From;
	b=ENaBLYGT1wq7+++6z4pUBOOxwINNJpGr+EsD3TL5T8Eu4i4PDD+nWeWbOnLwNOp4+
	 McuIAKn6YcdqVPTJvcALVF4eLf4kU0tNXjnGdmXesCyhapcpzeIuSVdosqEOsTXZF0
	 YJdJN2rDJg/wJvB/qKQcUOlVr2S0/OJrdwPPP5DUuZZ4ex921wRA/tYKKnNO57D2/5
	 IeXfpkeE+cK5Fi1xeByT30s3p01PE8PWjldFUMzHs02n0vdmKtheLDWxSTsya/wAqE
	 cZPJd3cN6ksyIUgGXgllhyK0LIUZiieLH2yYZfDYvH39onx97Ic6eOX3uIAykz3bDx
	 6Fi4WPXm8jjdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10D7CD98C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178141179368.5561.9376263459786244830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42aa37a205615c7c8ad18f226d69ed1f1886fe1633ebe689adf73af21095a2e1
Date: Sun, 14 Jun 2026 04:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781411793
