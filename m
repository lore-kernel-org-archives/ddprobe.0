Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E225279C4
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712278097; cv=none; b=RG6eCXvdx0DAw1aDydYjJZqEp1pqcLb/xAsTUd72CRN0tIeRLKzK3OhtrCVYXC2U/QB+AHAHNiUIqDZAwaxU17Wey0+1WZCm/D1NvpjBLEqgfWL//B4L6+Frit1q11V9GF7ckQEZ7aEhwx687Jub8Y0MM5Xl2Qe4f5P6y1ggA8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712278097; c=relaxed/simple;
	bh=BwJu0dJPyFon/Hz3uZ7FdG8hGhXbTm05V1IObrRR0JU=;
	h=To:Subject:From:Message-Id:Date; b=RJHvjjycc79mzSowaYT3xv1kzHPapdF4f+Kk9s25gKVuyE1x5ddGYy5rDa5XYistjANdrDP2A9HeaVgAPv5k0zh490Ocj9rVMKOdYZTssrX049R/r3KN2WPlAiUCcxwVvHRe6ERmDWXMjdXEzvirCZWPZzX7a1dAhWYcekqir2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBXGS6/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBXGS6/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 722ABC433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712278096;
	bh=BwJu0dJPyFon/Hz3uZ7FdG8hGhXbTm05V1IObrRR0JU=;
	h=To:Subject:From:Date:From;
	b=YBXGS6/aCKHkzDBpar4U+BJKuuQR6Z9Cq75BcfdoIs76c/R7x39RYJuHmWg6rHW6/
	 6yymmw01cfq6s9k7VB15RVFV1mFfSd1DrnM36sFIwSQlUqnJaJcdRCIpyibo7EPXy4
	 Jer98JfIqLEmCfYJu9w/tvCB/sonkOwIxtdeXuOaBkz/NO1mmnwq3MIa2EZUixD91/
	 cfo1Gcgx5S8fG6CS/OL1AaRqoo3pcg4kiUfVJmC9aEwJIkqdzmTmQP2qYoPQQ4GXu1
	 8OTFQeTZUKL583nVV/dHH6mOaxR4f5uoVtAEuu1SV3Vbzu3bDUShQ5Guri3aX036GZ
	 KJfZB6i9J5arw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC25CD1284
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171227809638.2074.11820411306151932643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee8ab246b7356a0a7c7eb328408cd411e8d145486538b0334355e21ecb8990a
Date: Fri, 05 Apr 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712278096
