Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250BC10942
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752838194; cv=none; b=idLXskxAhG3HSJnxPzTXUJLLlN2+4Ih9meQ9CkAwEogY5J2Qo+AhbbMo9NcQOnYP1YMSEElazFRWi82SiWadiaMgKFuZH8x1CWyv5jzrwYkEZL/kPxWOsZfFX2q5tejT4mtkH3J1bLPsuXdMaM6HiKQ7t/eluOcKg7CCkl+aMrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752838194; c=relaxed/simple;
	bh=bZjFiQINrz4lzI1LRa4Vv58ub3BCK6igNgeXd6FhW9k=;
	h=To:Subject:From:Message-Id:Date; b=JFvu76Afw8EAo/nJfJuRpZvnOv3Z/YfpyeURRVpyTeq/+EG9MnNy8+IFjMBzlcoPoU++8Sb/frmBSxdHdgKklUvajJKP1q7qBp1IMePY16pnmRPVQrzYmtHB7Fp4Wm1dOi7RUL72xhudLn++hKhuwCWI/o2MxHiFQAq1tmhaPo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPFDQrlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPFDQrlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AE8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752838193;
	bh=bZjFiQINrz4lzI1LRa4Vv58ub3BCK6igNgeXd6FhW9k=;
	h=To:Subject:From:Date:From;
	b=WPFDQrltdxh4GsoKRstNwCRPbUcR1zaUn9aDc8vqUvdBaXJxYzrK9r1w5gkBWsJgN
	 v7+DRvjbp4hPRpe72CfhTKnsyJySwhAcLdj7Fj9zHl8HtitIDqS4fde3r1UT9f16Hn
	 zpZzn4TCN9Nmr+XHW47yq4A+XRsO1WzZ9A2HJ0gkmMiJraJw98sDNimw7ocxze56RU
	 M+tSI4bVKW9+UkWcv1r6BtDGYMgt8oKwnHKL1NlWbrwtAYh+RZFCrExNy74ksVuWk8
	 xdNTKQ3fVVk8AAKpQPjLKUDMSG/yQNWoj78nELGVkMD8caMko8fr88PAAHIxkiNlyp
	 Y3gQpXvoPE/iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFCEC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283819357.16588.13066422788832972041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 399bc66a64b1e7f40fed4ae70de76c2f54cd6c210b859f8fe3fa48a4124673f0
Date: Fri, 18 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752838193
