Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AF641754
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771598694; cv=none; b=J3i/ZwwodzkBtvMnuH31cI9ufUxtp1zO56voFjIkBFJAowcKoIJg1DBrnslGWEJVO2ApIDkI85Ia9VLdk8uCCdbmYLTpj9PcEiS7G4tKa/WYKFXM9EHhVs9YfN7Rv8KiykRVGum/HlK1UAG7USg0Zzpm2HDLslgCA0s65n7m13Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771598694; c=relaxed/simple;
	bh=CdtTdJe0Ct6GjL6t6hUPFJ3/oPV6dcKHjbSKGCXAOAU=;
	h=To:Subject:From:Message-Id:Date; b=q7PROdN7mEDsaYmb4XhU5yvoegi3X9wpsgGHZV8zxlS8667gjh8YkqPrhgwfzv3U3z6wSMaMA4ovAhME6nZK8Sa4bpvVKmsJVORpqoLMDDD/WrxYU3gtGAk6ebptPSNAxZGRldbR25FQfsDZ7FmyJ+Lp+V1BDGP5UWTvRZtfY8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0f7R7rq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0f7R7rq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3180C116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771598693;
	bh=CdtTdJe0Ct6GjL6t6hUPFJ3/oPV6dcKHjbSKGCXAOAU=;
	h=To:Subject:From:Date:From;
	b=F0f7R7rqTTbo3r0ERVwnVotXFFZpJduOgFa5++Ck7HLIYLL6HiLOwuUUo848uquWt
	 JsqGoeoHVcxf/KSb5qzVZRdoIpR6ulF0NvR75n59ipikc2ElznGtSSi4kELNeQfj4M
	 z7Zf9NbZMyzjJ6rxxqz63/9auQ0otjZcxZ99Fhdb+lH8i6ojjmwjpVoJPS+KQZs5j+
	 cBGrrsMvAaI8cwlajz9Q9jKXAPbC2ojcRaRLl9NKywaDaxzLZx9McOJ1Q6xhB1RbTw
	 amCXZCawxxmbptMhMxDgZVzlRxPfm5fkGY3iTxMYPuggUfDnqzSclv9gnxFjgfuV9+
	 aSyDDmEBigSjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92003C56204
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159869358.32142.687704710726433011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e69ffc46fea7947c370c6888f32ec59dae828adcc5032ba389839345c3976a7
Date: Fri, 20 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771598693
