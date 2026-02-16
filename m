Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D641A317D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771201494; cv=none; b=TyuaDjFMEuYL+s+2zKWnOY4C7HMLwjVoFptq5MdLyNUr5gjr2RqgR/nteC2CGU7MAkh+P+FZ7ktxulU44FRaZMepuweWx0uh1QR1sXsL7xpGQiYl6u9QZk1ni5BXdDFT8tVQ2sG/3O8DGt+HZoAXHG4poEQBPG6GqV78D/7bGX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771201494; c=relaxed/simple;
	bh=TwaeFyoPTjbz4vC3EJfPsQMvoa01BistsnHZOtd2rvI=;
	h=To:Subject:From:Message-Id:Date; b=HZxfSe9s8aK8kzVlYS5mXIrCW6FiklaWDAURySBoLiFn9kJtT9tYhkF6BuF06srE5nwRdKLh8xeoTIO6nZuPqsh5PmdXk0QX2uZa8G/cTXrMLUU5c5QnPKWl/aiWcHnaTXR0zPqaG6HAv7EG89dydWrgZvL3/CFxJ5jCc11N+5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crj+3pW5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crj+3pW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2E4C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771201493;
	bh=TwaeFyoPTjbz4vC3EJfPsQMvoa01BistsnHZOtd2rvI=;
	h=To:Subject:From:Date:From;
	b=crj+3pW5Y5Halxmuya3F1TK3+UM4naKybB8Jo+SCcOuwHFTKGpTt7iVCWaBym7x9M
	 wEVvIWe0XJsId68OOivQToeQgNN/f45oVCY6ogvfbOszocpAuq3b7bkSDYdHBXmNMO
	 lOe6iByaMhUtsh38Xdtcg3IgkJtWdfFk4Mz0zkSHz7pp2mPRMyzytF8z6RjCgiOklp
	 6/sKKlNncROp8aZkLGdNikFDZ3NoAuJO3FhknPfLj5nmXZLaO5K7acH56zM7837aNQ
	 6/ekYtwWa+pT6nVZhECTXOvCTNAPsBFhtG2W8K//9Lc2Z5K2Pw0Nl7g4NQXRI4699C
	 WRtzBR1iSlkCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97947E63F08
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120149360.14103.7165752713978232086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f912d381f0bd3b380c5b8073e5cecc66326a66e67562dbbcbb69801ff1bdf0
Date: Mon, 16 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771201493
