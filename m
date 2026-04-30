Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A94A44CAD7
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777576054; cv=none; b=KYqMpbCd4cpI0hqHwR8pQX6Dq4Vk+7wU/xvhqDSb6aP/HQVyvudiVZaQrDBVJaXfBYoy9clD915CSCkGz7UFhKtb2BcncBf/IFv1pz7AQC9exGFweKJitLRukUmw5B1SK2BAvNTEbF4rHUYaTnikJ6Ug43uutNYmtgCHSCeJfuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777576054; c=relaxed/simple;
	bh=14TLJQ+9Cp3VGKanKVC/zYudQrKB226ZwlRCgwVATFE=;
	h=To:Subject:From:Message-Id:Date; b=Cvw58W/+QQrQ7doicSNzrQro7eiYgUsh2aCny/jSj86kmJ8SXzVQ1gH3T601gw7kvKhnoS3SNi6aDZIo8T97LiUCKpcHEr6y1tt6Ol86cVFbYwiG/BanFojVSZUp1SmPz0srxYQi0+GOIW0dT92rL7cD0b4B+DVCK+R4RtGv7ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjS9E5L4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjS9E5L4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB8DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777576053;
	bh=14TLJQ+9Cp3VGKanKVC/zYudQrKB226ZwlRCgwVATFE=;
	h=To:Subject:From:Date:From;
	b=AjS9E5L4Xl/QSoslRrBg0twhtoXK1Eu8DFR/2fH2Q+E/Oxtk9kugNN1KGZAOfvq58
	 nTxwNe0J1Z4esq1Y7pKj11XYL8/BF+UvuKC61/VM8DT/yqVOsbTeIev9UWhY/9vaVh
	 Dm5WToZDiOQLPkiQ70Tshnex6mHTYSTJtVQFc3rYurUoQJEcze74SY8xIBxCisUOt+
	 +LcAejcc2b7IYTOGm51Q4N89yToFSrpFvp8/RHwkAuR2unZgU9RVTu1ejL+g6vI7HV
	 5E7SK52Hn1vh+ehZqROmENWcjc2vaguCT/aeqFX3C27brGE+kSF6fubPUioORPfPTr
	 +IyZlKTJPqXpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABEECD13DA
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757605368.28224.2385251789017796846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974bcffe4b643bfc9580ffc9bcdacc16b59273676db47c1025400d61821c0781
Date: Thu, 30 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777576053
