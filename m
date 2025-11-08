Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EF5261588
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762594194; cv=none; b=m8XgvpfftThnRMJOrFvgMg9PKiDsb9L3Qpd1PQMNP/MPVvtYA/NXvjkedf+OjC81qWVwst53AQ/jI3kEhOZxLjCwkvBa/FKL2Ip3M8zjRiONJk1NspMGpcD/Hed1y8DVsD92us8KgcslxSDun8qfaL4YC6bjpQgF+nFufbJJp3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762594194; c=relaxed/simple;
	bh=pWt37VTjB2Y36BsgSGVwJCsS+ot0ilMo6x3FjTJBZVc=;
	h=To:Subject:From:Message-Id:Date; b=iCqKuZ8QPvSGOdfDK73Lun2KgXitSPTu14yaAVsnhT7PY9acQZPNuYN4NVqAOvSfa1RHcfxQPKQNw/lUE5o6ABIpLf88jRHV5+WCsgohWMe99Dt67BeVsPqbUX++tr85MxZ5bN2R6I5xOCw/eWpB+6VCUhDR0SUHnVI8GUnNDXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiaRika2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiaRika2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4320C16AAE
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762594193;
	bh=pWt37VTjB2Y36BsgSGVwJCsS+ot0ilMo6x3FjTJBZVc=;
	h=To:Subject:From:Date:From;
	b=YiaRika2tGSTM7tZCez9zdxhabxJTqPnq/DD8KJHFY8uDBIrEmYTaw3q28+gS9fkz
	 jIWMUnwbCHIiN8pU7zANqd035z917AHuOK28WWhmJPaR1HuvMWuFeGtTeiO83koYvC
	 OTSj2wv8bCdIzR9/4K7v5pnvM2lo9SqPMdMnyrtPBOCtYt5+b+wk3LRECBWH5jVqF1
	 MXDiDZ6ZAyWzL0ifalUxLdZA31VQu56IhIlaxdsP557TEgovlJP8RWI5wrKnyHEb3L
	 OT/0eiVklnXpRmOpG0CuUfloOQ87AamIyw+wXgQGAQe9Z5TTlCxLA5Y+jyeQHyckzA
	 GmXB+kUcNfAnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9005CCCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176259419358.19768.6294286929466676064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 043ba24e99b7d20a4edbf51de8ce7c5e84b8f0e1ae9dbd011657886ec64c9b2b
Date: Sat, 08 Nov 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762594193
