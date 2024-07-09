Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6315818F2D6
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720533383; cv=none; b=h7JFGPzYHq25KrECjcYpIWgnle4mblfukPZMD2FS4VSDjAkV3fwDepNVWGaWEIfTVg5VNLGxe6dTDCgKKCvcZaHz32UUEgx8WNYaEwzlGOx9zBS6d66i1jvzQsIIBBnmojjcByAxb6QZAjfjMkpBJppJysHQg50uYVMIfR58S3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720533383; c=relaxed/simple;
	bh=fn0/02xscRqZzzFjS4biGmQ1eBYXbZtFU4BoPyQAvj4=;
	h=To:Subject:From:Message-Id:Date; b=i12d/NSNO824TD6ThEcD07VKuluRY3norR7VVh5ws3hQtCl7nx+zhOIihsaOlxiFP+tnYanQlE3r2/njplNLh3jkBk69ppuw474GihHt1J+0sOiYi14U/iqRL3GaUAsx/OE8kiU0IAPnfJJkP7vClQFZ9G69j59MpOvfRmRJidI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klKw1DJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klKw1DJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E26C4AF0D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720533382;
	bh=fn0/02xscRqZzzFjS4biGmQ1eBYXbZtFU4BoPyQAvj4=;
	h=To:Subject:From:Date:From;
	b=klKw1DJWFRYNOzxm+pSP74QnvnBH5TawguefPiUkB//mPJm9PtigLa9yNituwbc/V
	 7q2UZ/ttrssfgMIiSrT8NIkN3DsUhLAlSIEzSMNpGfoDcLT7udbUzFQdtfbxiCVh5l
	 z54yIL+7yKrH/pI/jvuEtBaEq5EDF8cNvaUWJ7S0Qwr6b22Z1RI43L5VsV16rJisuG
	 ZboZgFEqspoCnclWu7o0MMNIprVzMjmx8F06Pvb+d/+2FAyAerzJQTr2cyfcMWOxvc
	 G9rFiZnkwmW+x2E0qljoXShxSbneQT2Tv9h33eIHOt7D6CP8my0Aq31cQkRuPkw6JO
	 3RzIFMkL9naBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8923C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172053338279.3141.3588470183871245750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8fdf4f9773745fc558eaf58956a56670798d9cc7d4eccce67882ca04eef11fc
Date: Tue, 09 Jul 2024 13:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720533382
