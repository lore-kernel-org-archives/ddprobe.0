Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288553093CF
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770660234; cv=none; b=HRnY1CkeCBS+uBD1jLMPvHwZSYV7u1mwPPIr74wxd0zUh5ZIR+3oY6vFPUp6LOruCStr2dNEMk7aN9k4IB8edhdIi0jNr4GJLFsSWZMjo+fGdvIX7pW6xNGfIKIem2hgCrTQYTM5Z/N+KKtpNc4lf4Xn/yDaANW3f1q14u3fyBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770660234; c=relaxed/simple;
	bh=0pwNObyBacWWacoDUDAosqpsuIWyB/+NTmvjwpOsk/0=;
	h=To:Subject:From:Message-Id:Date; b=e+Fv5e6DHJJ6PzCBLOpyjKLBswTgRml6wsUCjqoPb+E4dXGriNqUBS5jf1mazJ0xkjH2xr6dGOTaq7KCgmjxItND+v1QwMcrCz9iEysE/6lHDFDuXdMIADNXa8Eo9ZVAw7F6P1fVLYNlpMWKIO42BYtkcrIX9NvdLLcftJKGnOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIX4SAZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIX4SAZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB60BC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770660233;
	bh=0pwNObyBacWWacoDUDAosqpsuIWyB/+NTmvjwpOsk/0=;
	h=To:Subject:From:Date:From;
	b=EIX4SAZLLwVdqcYXth3nB5tK4j1IhL9keolhni642E7Va7RACGWLHbmiJFrObIZmS
	 L3OwcWNHpL8pJs092gjfWBA3zZRZ6DymPzwjXQumqkuisK6PlbmwOwD5t1Laet4vh7
	 InqQpRqrr5U5gpe53IR/cwtuSGsilMWbUnKRYKvaKzzT/3e+w8sKSLZ7bFBQ+fKBLJ
	 YGFRmCFwVN4EEB1WqP7/f4TCt/d5uK06ikfhp+1XCF09OCRT7uV2l0uQTxYN0uHFNS
	 Xp9mmiOyxF2wFuZVTeIDlsmosuize4YKzf6sDxSF2Q5LcnaBYqNA6DgG39LKcKNN7/
	 HdftEVyALoQAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F30E7E0BC
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066023364.16484.1349574728703838550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3011a74922e41088993ef6164bd213e1261d71ec6fabb18c32b0a1aa01ee8512
Date: Mon, 09 Feb 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770660233
