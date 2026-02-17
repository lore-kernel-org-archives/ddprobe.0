Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2122F2C11DB
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771356294; cv=none; b=dkmB8YVw99YatNfhvjhN8bAJuL5dlHMLPK+Sh+v5+DtCyuqev6//vGa4mAczWsmy2NDsl1TDEGSo3nn7bCLyXqgn+Kj3nY/RpODA0MB/O9NgrA4rUGSnwQB2rYYJ68tVzfBeh/335A3TKI8CkERlpt2M5HvE5B47MEBGu7JtiX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771356294; c=relaxed/simple;
	bh=zJg+nWq1NXDK9ZpWOO+IcudxBoyV/OhQcldWQ5Q6el4=;
	h=To:Subject:From:Message-Id:Date; b=sxtddz4nlIYLh4z5Ldq86uHPy6bx10fV0twwF59nCJmXMoWH1DWv84+5Tk9NuedV7JIp7qyu+HtTNTmUPF9nBwQNEB4dHceWFSFFH421gVm89vJpDsh17Y5RvypK8eg90dChyETCNDWTpGc54AclmLmVRxvl0uWEwTK/fcMd0DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVpHglXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVpHglXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1393C19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771356293;
	bh=zJg+nWq1NXDK9ZpWOO+IcudxBoyV/OhQcldWQ5Q6el4=;
	h=To:Subject:From:Date:From;
	b=qVpHglXNc9NOR3Eu6ykNAu1j3BbWoif8u/LS7rNCRMHYS0fXozrXRnPwuCfRmTm5v
	 svmW+Bhm5Ca5Ws4CbFPmfnT9bgxCiSuSDvL/aB3AzpVo6yJsLdYPpKitA6EPlscXAw
	 cWl16fVrvotkiumjuVCU/OWpse9bz9JCGebwlGVpeKumNsbMUngjJDwq6zBREFSIeb
	 AW8/9nDHwOiLoFnzoV0V+rOepuOP/1i1ooDgSxvj92wAyWoKnkIp9Kih/kXDwYsh//
	 mzsWmNensRMwMLuW0g521LUDiE27FxuEdt2kbzw4qT9/YQnHHjmt3cnjve6TRUw2sY
	 PgpVocPu0HGkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BA0E9A03A
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135629360.25459.1685718033834533103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d5d58f7ce96b296c055982cd637cb7965336e5579bc07efa55f6bff643753b
Date: Tue, 17 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771356293
