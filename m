Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFA2547057
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790719234; cv=none; b=A/9cKkEne/6wBwxi6YzHjjlkLgdq5We39L/ZC0R0tpE51yINd9Fq/ltKLInnte2UvKHtBYOShTxbaPl0f6ZsQjoO83A3AAWtUKGm9V1pgaGlcmYtf42lU2iJ0q1EZa1Uy0ga5ZGobA8slADvXOPktY8IYvQLJOOhKfT+G9h12yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790719234; c=relaxed/simple;
	bh=Nt3SAuXOsMrQZc4u1I4YbpMiqvTPIE6dod0FXXyQm+M=;
	h=To:Subject:From:Message-Id:Date; b=sxtfins0GrXLBrWErfLiW1Dd3gBMzhOfNEtZFvqJ1ExR61wTAig705KDTiLQNg8v4vC1IMxt3lqYyeo1MxJ3ZJYIcg8+gjCOvAwixfCEN5sf/A6s1nsfzQxgLgUoryW1mtEtuj7R7g2W+WQFOMlFCkOO17H9BrhOuTxohiNYxtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pc29Mdlk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pc29Mdlk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD263C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790719233;
	bh=Nt3SAuXOsMrQZc4u1I4YbpMiqvTPIE6dod0FXXyQm+M=;
	h=To:Subject:From:Date:From;
	b=Pc29Mdlk6UALIhU87ZymrPCPCEuz/i1daPcIirSe81WnYeYUybZCE+n6gwzp9/FjF
	 UmvbunZH8PIALS0xAAnHapH/R1RU2sEp6V2kWpPXAm6xU2LBy42iJ5ZVpCnO6/+k1u
	 +HJzewqqvWqlwwj/Xxu0fr6ej/IQ6p5j09ODwFwrZSH875ANIonSUMe193pbQEuMYr
	 YS4s89e7srXGctNIOzXRSA2OVocFlZYL0QsM2vYkYAnDbRelJ/Bijiy/IoHxWUSGux
	 9BhomRPbiMRJ6YKPjAA4cefs7dXcu8+pyfZicZfBFVyFC0WRoPU+8QTGdV7AYC41rt
	 Q+9/DEhQ09dgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E68CA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071923368.20975.18355325459193750892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1d1c26b67914652e0dec20d7604f5d51643714134db5f0eaaf493afa29e1d6
Date: Tue, 29 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790719233
