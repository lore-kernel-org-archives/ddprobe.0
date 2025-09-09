Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8DC2571D4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757455194; cv=none; b=lNATSqyzLDWmHJh0ON/qcwAlXOkhKkruWlfzetoXRbGv7Q1AIEKWPIhiBiYvS6NtxDZBFOZvSCMB0fArjgKYA8WsBbXR9ULx7rmjVAM7woJg+MU+5I5ml3EErNjNrNlg/tkTPEFTeI5UKJd7iCdrTZbBVq40F0s+pmuh15lau4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757455194; c=relaxed/simple;
	bh=mL/tXvw9WlEz5PjCg9xmKAyPKis6QBSYz4z6udCz6T0=;
	h=To:Subject:From:Message-Id:Date; b=FmY1GyKce4i/P1GtuN59etgxKLuqEoF+cUdIvW5CmONVgrvxgRQr+jgVEQsXEhf2lxkteREJRpJApww/mzN0zCUPg9AFIGy0Evi/XagjYxuftZswnsi6iY286nNA760TwIl/oaSVsrjz7/pcPMP+C4ykcsZVbtrLIZj6TCG/avg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Se2UuGoa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Se2UuGoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2013C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757455193;
	bh=mL/tXvw9WlEz5PjCg9xmKAyPKis6QBSYz4z6udCz6T0=;
	h=To:Subject:From:Date:From;
	b=Se2UuGoacrBRnxtgw/7Mymt6yVRHgffdIB4wryklM2Cr2SoouDOP7ivDsnZxjqEsi
	 Stl3vPjgv3DGRZsi3sx27x4cATB36/JWyJvBZe1qcFCeO9ut863NRSef5YyqyLMGBy
	 2gaaY982rQaTgjvcoHSg9EylzLLrVHdQMHDl1fWQG6Ul/6P4xCi8ITKY7MbfnPe5FE
	 fN/lPEGH/EoxUiNRezGYVIvJcWiaDuZIRsFM2N1sjhTkKAQGMK5iRb50Vsh2eCn/ln
	 C9fHSxiT7zZ5a9rcieJCntY97argqQGhHNCmQlQ9vlXWEbzrmpo8ZJPH+Tt+0IK7Oi
	 15wnS9cADGLDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD5CCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745519358.27889.6416235941899856213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9b52b6b90725bb3f265ea0e5e89d51f3f6a2921cbf0ca58f6ec3e37a098fe29
Date: Tue, 09 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757455193
