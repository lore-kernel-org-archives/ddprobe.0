Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DEA2BD022
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786821634; cv=none; b=iwuRz+UqrGmtZJ+rjxcIIs8S+TwYsH35raXyEz4cfj/5rmdYriR0k6F5ezr/sErlX7M7+nBV793wbYIuSkVlmfWbXQcVtqTZuORXfP3K7lRR7Pi0AMMlru8yOxw74KwUa3xQ0pfBE+EDgnMsz8CPsstr4bMh6ZAC8dzO1FSdNNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786821634; c=relaxed/simple;
	bh=E1bqyGy5oKkT00MB++cEpLdki8sS3ejRQqX/Jtu3jPc=;
	h=To:Subject:From:Message-Id:Date; b=GqYTO0P9YvbggmydSx6MCrRev9cTUQH0JuZfuyFmVyDLiZbVP6RUgjVq+E8JxXp3JIG8FGK0mrOffkkLr1uHf9BKPRBL4J8f6FAz2zYoTBBuR1GLLvKt7WPd0Uep06lB5T7LLkk0Q5rCoGSlpSe+g+N1ZTsRDA7INu0JSRsKhs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUt0Zx6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUt0Zx6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A53C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786821633;
	bh=E1bqyGy5oKkT00MB++cEpLdki8sS3ejRQqX/Jtu3jPc=;
	h=To:Subject:From:Date:From;
	b=PUt0Zx6bvcETeHNP2s5v3kkCM+y9mjhbO/xG2ghVyC9Kdo4BAtIlmK2CaAs30vw+8
	 V739t4uRBD4VutqEaA1XDvpfDqXDXe3KwV6mH1pPbOJuhZYakTRXukpTktqQufqt63
	 ZrqEURPi1pQ3/rkQlLtPmMPdZUKtukgolUVQaBO7lJftsIvexTOCVBFa5pljj3LDtH
	 A1tIlT9T0ZJ/oCnmiindLRdLE2XSJjaHDppwGyMF1MoMhYh3bDGhiHpVl4lrtPzgJd
	 16czyHblaZ4a3Hor6SbZveBwDlmgL3Q8mn6ovrAIdW1zvPOqZ/ViK0+E08WLzznAIH
	 hY40bUhpXnwbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE2CC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178682163374.3817.3767048158486958189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b05198b667006da105cb6d9251d4dbb9479f175796f413f64a634f1e4acf0f
Date: Sat, 15 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786821633
