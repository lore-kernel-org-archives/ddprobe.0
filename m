Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB5A25A334
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762824593; cv=none; b=RhoUpZkhv5QOu7E14OQR/ZpFmHunpIEpgJOovVjEV7MleRI34xg/lb8Wnv/HKuEhc8xouuTQ68qcTW/A8o7FwQQr7rp3IQjK061olDu9jXh1YY9OfLy8hvHkkvbtNM+j1RsNXKP5+eRpdJkaspl5AJGBqAIfc7pMNRk4+TbriY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762824593; c=relaxed/simple;
	bh=IVdvsevuh9CHTylf1+TlGB2scC2uA7y3OJDYgaf2Oy4=;
	h=To:Subject:From:Message-Id:Date; b=JYPwLnuM7WluoDDY9SX/7b/lpKmQ4ZUneWdhMcHC401erNbw90p5hApHU1/q2XgPPpCzK1xbcXd5YQiYOoODp2vxHPOKVqlM5DrX7cO+8iiVJJpDfY/apSN1UaBzLYcWPwYlGtm8Fvw4PSpZgSCpf89TQQxOh3Y1vr89El1FnPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJMnCNxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJMnCNxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3298C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762824593;
	bh=IVdvsevuh9CHTylf1+TlGB2scC2uA7y3OJDYgaf2Oy4=;
	h=To:Subject:From:Date:From;
	b=dJMnCNxNSgjJzRSs+Ag93BNVTlKtC6jpFwLubyyTuZlHLjhmh65U4b+8IxbUMQCYM
	 0s5rmO9lyahvLI5idIojdjLU981dtRKBKLMkT5UQ2bYaQX8ag0MO4PK05pBw9t03iA
	 RwzNagggOtxOFTSZV0rnqmmGo/M/v6TviHtnOhVhc8lAjNioGswEbNPBR3HyKizhKL
	 5eKOhgud0FieJl/WDCRoaW5/MU2xvfgmInVO0uBWrNaPDWS0AKrY6zFYcUMYwBwr80
	 XUym+2b0SZWDwMQg2i6e8kS1BV/Na505zOX20w8WTra+O0dXMIHYN0nc+i2SyolLA8
	 MdUjAX2JRjIhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B63CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282459358.28474.9848851660188105123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a0c975aa9c331b769d48a96d2bba85a886faae02ea312f2a883d80df4df6e8
Date: Tue, 11 Nov 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762824593
