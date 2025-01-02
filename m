Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCEC1B2190
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735825554; cv=none; b=DtpNhsJY5b+JyGe+qkDSrGhzNPnYBOiGdoKz8dmCXQHF7l1xsH+344Olvxwa0yE+wohcXwDz3i688ICjT2j4S9KPjVVQdNQsWlQVmSDdjsrUNQrNphVdflGP0mRR7y0LtsAmgTeOC/euO6GFogv982YiOGJkpnza/XR1rE0fVEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735825554; c=relaxed/simple;
	bh=CMg/sjUHYsWdl2xkdYyMjPY4c0zqYHnR38aCH8kWoGg=;
	h=To:Subject:From:Message-Id:Date; b=ItJl5qfxh/kO/forDDtolggkcf5JHDqFmUJRucB7IUBFyEb1n+9WZDs4UfMQE2MvRO8lpxF/owXY+ENGYTV+9WylklstmYbzM9feqsgGYPA5FqEDWlIH3mYSKD6KRRmo4QyI1bfZVWMYLRzErkN21HIpNqTLoW90Fvi7NjCo3kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWwYWE7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWwYWE7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA502C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735825553;
	bh=CMg/sjUHYsWdl2xkdYyMjPY4c0zqYHnR38aCH8kWoGg=;
	h=To:Subject:From:Date:From;
	b=YWwYWE7C2d95T1aGUn02qnnm9AbDqfOZrwqqMYml1NTCmBZnvaxjz0+mZPFQ/QRcy
	 8Nkikioc6J4oq0kIXM5RfigTLn6PW3r7wwcn8pU3bMVf9oF31eNlCHpnklTUHAB5ji
	 Ko0yg1HtA2Mt2rLDL4yhaHuSuVWzfcWFp1NKzrJW1L8B5y2MxbnmUZ9HZbOqc+MYVc
	 DyqrhVSpdSri4XORJyhggS0ceWYuC15nl+0dVblIWJ5k8fsLt65OAuAAU+HRb8oABy
	 8hAqMIibeR4SB1W0ZWuVyG1AUcSb1z73KQAiYxYCUp9/7C6sgnP8rWKgpVROqyWaxA
	 PVEVGrkwUY3iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949ECE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173582555359.21844.8335517166650582252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca72d001e80172b4a7cf5d5a0deffc167d12f3db7bb27e43182393c8aebf9e6e
Date: Thu, 02 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735825553
