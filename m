Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5922D23A6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782219994; cv=none; b=MeMmoEJ4OI12CMh6jk7DzYKo24mrong8Df1Cx5ExcUA/DLIPJVbnC1+wiVCejlhtAMFUw2MJiuo8HAoPfEuMnBzBfpK8c8gHHmCeUDi7CgSP7WCdif0CIHlB7imIHfalEXEFUjMriDFN47LuE6Y5GAOIp/3jGEFbL8YjPf1cNoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782219994; c=relaxed/simple;
	bh=E6AprS5w0H+MNASRdJHyYZ9MqTxrH1sKsoZ1Mz90Mww=;
	h=To:Subject:From:Message-Id:Date; b=H8j4LyhkBVrojsN8wVM663RXFrqk81ooJK8N2WWO5HK3ZLUPlmS8JI1OlMa3ADtpnffqGaM4uVNz/eEo4qp5fv+kRM1RhYSj83vsUsy9/4nTFsXjAIeoAatvUnAQTmNXswZ4kJHAw+TaoMdTxekiR7wEbWfvIeSEgWXxEzIpkIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgN8m6Hf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgN8m6Hf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3906C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782219993;
	bh=E6AprS5w0H+MNASRdJHyYZ9MqTxrH1sKsoZ1Mz90Mww=;
	h=To:Subject:From:Date:From;
	b=SgN8m6Hf7kMOJ+o/YWp98m/ZPw9xIykkWnMJTNhfwrtdGRIaA230Dzyb4hVW0TcPf
	 jiNC4TjOl0gXWVVGaqr3JqYnSIyVi5Bt11OtU38eylrpH+/rNn3R8lS9hydzPk6wu5
	 joBKOlf2Q7xa1IO+vwdTf1dSWqzCxvoFqpZEZlM15Ep5bsrGm5Rgyqo4MsITOVdli8
	 MRBtxHC22RoAsTlJjgfuhEABgxYpfOkZOkQTzj5P4vybR+PaUq5kuAhGkt7U/F7J8m
	 wSK34zZ3YfMzTAyiIDVQXdzUJ9/M7HxZYxyrufbCzYsEpwkI9HF114erpaadC+0OuO
	 rp4OiyOxZw2QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67F2CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221999373.1805.10534008131940397096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e96f56775380be0297beeb73491f4d2d9ba34ce08a0d39a1d51f9291a3f981d
Date: Tue, 23 Jun 2026 13:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782219993
