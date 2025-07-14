Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E9B22F16E
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752476994; cv=none; b=DE2BtZzF0Xs5n773w5hn3BJWNObTRZ6+jZe5aHuNhQwoY/G8COWyhqDb/LJn1rb8U0K3UFRQx299+xiIg0QxUmd8OE+beQZD5EauXAGvNe5VPoqy6a9WZqUVnYSGNO7z3azOymVYJN6xuzvPPtej6r9Fdv71bsTqUREu4LQ4eHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752476994; c=relaxed/simple;
	bh=lPgZlKrBwANVH2YqR8xpptktaOSYh8mX4jkMseNEtmM=;
	h=To:Subject:From:Message-Id:Date; b=N7TveLbutDfUOXVg9/bOVxtqlYSYiqHnpqCu9BqvnkTKp9peGso6jV0QDuiV3Dap8LpYZFpAit/2ghQr+goiX2NQNCgOezQ/hHD3bLJsXHBMoTODkxxN8g8ij9Rm/omiOtk3wQeVX10jZqanXnAKaE7E8t5paA38abUNBh20JWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVbLysL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVbLysL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F73AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752476993;
	bh=lPgZlKrBwANVH2YqR8xpptktaOSYh8mX4jkMseNEtmM=;
	h=To:Subject:From:Date:From;
	b=gVbLysL6ENDwCyqD8tZxp+xB+zeZyqjF9cBp4o0rf0fJHhITGWFJVq2oYDxcOwZvw
	 Tvia8GHDC7j3qXsnabaWs6QR2iyNY3bSg6VyInu8Za/F0S/rIaXdpkOs/fbvQ1bLxB
	 ynipt/HvbIKpNVo4Ni1LLn4el4V9HRtTYN65+xZvpaYwlZaVIh5Shvvdc8LrY6G0g+
	 +D5YKUcrm1ADGMc9kHuZUPRHLSM0BJHkaPZ1elIRaNdz++Qz7tOejY4mnmi+N4hGWk
	 snTBMrZ5kw3im4VFiwiJa31y2rMcT88YqqakxUe0hFayLBsHSFPX5jeNtN03gq9JpO
	 w7xFN4WKl44iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED3C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247699357.10241.11452388119629423515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be52a5f13595ec7e180fbb5762ed8904ff286769f3fa9476582c413c0e3a553b
Date: Mon, 14 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752476993
