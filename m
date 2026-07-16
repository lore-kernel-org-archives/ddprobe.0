Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C12E2045AD
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784237914; cv=none; b=cwgsf1nis9Cl1jF5DiNrm8Z6y/DShsIQ7pk04eoevWPD3Q4wNkN708ves/OtEFlNfHfZWiMlsnlBl8NtBJ2hzveRfTmbT/cJcVYQ29WHrqQKViokfqS9/WP+hwu7qWuOd2wL5YPAVPjeb2f1D8XCPbEXmD+BqHfpfJGBAgn8d9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784237914; c=relaxed/simple;
	bh=iaxGUjTg+s4zLzPyaSs26UGSKzqHT1Dl5Fb+wBmIO0E=;
	h=To:Subject:From:Message-Id:Date; b=ZMqgCCjYaNATsW6AkWHi1CcIC22prtvY3EsEYYmVCvE5NplYLficvTSxXne4LVDA9dxEISCY5hYDGLTQ78QQws+dMTrrNqDohRry6tfs+lqWQluy1RtrhkaT79qe6D5dUKLHeLdWCvak+E6Cxh5ZXwDnfdUQws6fU2vbUC9MsAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0OpS4yq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0OpS4yq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C36C2BCC9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784237913;
	bh=iaxGUjTg+s4zLzPyaSs26UGSKzqHT1Dl5Fb+wBmIO0E=;
	h=To:Subject:From:Date:From;
	b=p0OpS4yq4+UDYaX0hDzcMoQ0Gd7KWouN12Bub4UwPZn5SKXiDH/k0XLb2tF+pcecG
	 bE4JQCA9l8ASkEvtXNFy/3LM3sCLwcDI0Jkxh/vleN0dTAZS88pFY8l5d1boS7WFXe
	 /w1bFVWzMqw9ROLe/KDvStCtpmhMS1nnfHROEsa3oA02OyA5aiYaydF7O88PyVc0iT
	 avCAoqRFAsOokj8G/9TE+7DcZHQVcu0i1O0Lu5DonK2Hw0DcQVfyD9/R7D+AN7bG9F
	 DH16/cFyJO80+EL8iXxbs9hHfk8aG6OzFiHQKQ2ezDJAoL6BcyIi7nwYp0f4knNPn7
	 BbvN69gREa4DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A804CC44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423791368.29290.11100281578282561114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bbdb45c7fa1bf498c5c47018de5e1e0dc9a9d9bdd816433ca1e74c453e63043
Date: Thu, 16 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784237913
