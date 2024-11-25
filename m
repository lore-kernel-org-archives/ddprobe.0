Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262DC1E517
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732517754; cv=none; b=UM4eVxiFBZUILFVc6Osz4h555ZCwhw5xzJ3hPvXOT3v5kQP1YHf+IFjDzlNO+/3UWz3xcaJoG69JjOPkF/6IVbY9eCFXyODo82xG3Y1eSJoDDyJJGxm8+INFHglHRg480HxVsQMECoTEUfpe07XzJy2QQ2SEGuiaF9kqKfmUF1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732517754; c=relaxed/simple;
	bh=yFuSLl3KWJ6qPykH3+EYpwDQRvS1KWU2S+BIrynLEbE=;
	h=To:Subject:From:Message-Id:Date; b=mCQ3gFy9m0cZ10DtUiNczaJdVX0Cn/ChzB6OlPmMEAI78sHhSz3CG6JjVhoiZKLjXYbCcfsst1iDQgi6KwhP9pWWRiLh5hFZ6nyKz14b4xgXog+jQkFnM6c3zMMfwPNmPtlcBkNQzIYOSh6GsiqQlSWrRKjJyWTjG6hIRmhoj9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtlB9j49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtlB9j49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A828CC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732517753;
	bh=yFuSLl3KWJ6qPykH3+EYpwDQRvS1KWU2S+BIrynLEbE=;
	h=To:Subject:From:Date:From;
	b=MtlB9j49rxoV/ZVZ/ou0fht7TrSXpK46oMtLoVXM1kaRJTmj8Yny+oN8lRpDX2efM
	 0VMRGmW7OH54gSFj4oMqfwc9z6e88Ety94ECdCq/Yl7h6FUoOoT5uyiJX/KLFLAwR1
	 eFZIlvWTmf5y465Ng3itCcTSt3oddes2K8Ue9k9esV5X89Cb0RyxAuHaGZbuKHyCN0
	 R7tqggEAK6lgyYHsfSPd1Kl5zVPhtzsPM3sl4O/2B9XmCKFKNKr5JbP3NpmsQ/67tD
	 vNQwaNg3ersYW7w5EJzmRr9a8htOUurnT2U7tiuVibOG76HyVIZC181HjdV+8JV4lB
	 ILq7gtDR8Wbeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CDBD3B7E0
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173251775361.18025.11902634983959490602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec0d80d2e894b8445041e76c51b96be14b534ec3647c5ca5cc09e8398f6a946
Date: Mon, 25 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732517753
