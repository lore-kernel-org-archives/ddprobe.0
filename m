Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D8521A0A
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708783097; cv=none; b=PGqhEKCZaK4vyzxsk2sKQnLjrOE9IQT7b6NjfEmjxSu4UBCUyQ7ffnFX/v9pjkWAeOTKy8oABK5bknzccG9eS6pYSW3vINLqWcenCLQ4LhXNzdbe2uWqTRyC+VajyL15G2dkjwjyP9YT/auZV1GuGtX7SSmbmnQjhdU6tLBYha4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708783097; c=relaxed/simple;
	bh=d7J35M6RHr9nLruzoC8R5HQ/8wjG4/L7kOV1DKA4s4M=;
	h=To:Subject:From:Message-Id:Date; b=fj+lWe2qkbTAU+vTY346XuqfCAZfKM51F75PZVwp5uD21AXfsCRwEtdEHaFutsXn15q322E2fg9cTG4XMxVl3KhYN166FwgBXx/IpR77gWdmpXCsrXpjinzSAJMgXRbv7+TdfbWWFI0fAVgOtgHV+jyADw8HCKIpKs1yY/37v14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNxegK2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNxegK2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C3DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708783096;
	bh=d7J35M6RHr9nLruzoC8R5HQ/8wjG4/L7kOV1DKA4s4M=;
	h=To:Subject:From:Date:From;
	b=cNxegK2y3Gd1rmDTD350LrEualNECMzh/Sh8fBXjGjF8F7qAQjXSBL8tbhv4RwhNm
	 Rm092sOKru1dxGBxEg+SGQVJ+ZlnPUnVA4gkOm9+l6anGpKLRS+58Xv9Lflh3YzrvN
	 r2RiyFDad1iM06XynUaO2cBEu3gtZlj358BC3GyX0W62Pt5ffbJBRrGoYy2NwxEZWV
	 tBZq3/+owkhCh1BsSfmGxESBdzyP9ICIghk9T+CJSUtietyTXx6e2ENjOCgYrNxtFu
	 ebX2t9uVkCKZfkD3ljuNRn/800ZpYdbUDv19YaxqaIdq40siitBpzyDa1iDQyMi4xf
	 N0bkDuuMMsspw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9CAC5478C
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170878309638.798.4164987341469137316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab5ca7692f9a66f7bc670b1a08d2fd3a3f50bdbd347aecd827489f6371ff087
Date: Sat, 24 Feb 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708783096
