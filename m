Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F093E1CFF
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783369714; cv=none; b=iuP67Nz6CYkYaGDVY5Ri/qbZNNlY8mmANuGnk+qbiazqIMs9iAdTH4VoY7B1ajAmwmSqIgNFsrgUQXHMDQ3x9KSwJHcMQUyBGU9CDjIKtJ6wbwN2k2WDxCxviG468EkrisITxiJJkecWSXUpTZ7ZCMYUhi4ciZvKdE/JFCSN1jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783369714; c=relaxed/simple;
	bh=UKkv7/RrKFSv9J0heQdDHdVvl+oGC1Hp1QOudutPCwE=;
	h=To:Subject:From:Message-Id:Date; b=TqqTUnyc18FOttX1GNIRvdDMp2mKJ/Va/iL6x4ghPfdLZoIVNtZhmO1qE8vZc1LeOUynsCQl3HHOR+N15BPy0MICKTQhiS34Rr3RsmX7RWtn7BnlHxM5JNVoyauWnXC4JjA0iyK6JGjyp2xHgWKf2WlIpk247htbIGTJaXxD2rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ke9Pe4iP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ke9Pe4iP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4E7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783369713;
	bh=UKkv7/RrKFSv9J0heQdDHdVvl+oGC1Hp1QOudutPCwE=;
	h=To:Subject:From:Date:From;
	b=ke9Pe4iPx0FpamZtDS9meB3+NmW2nrRH1iDfj9ZECXibRibyU8/G/RCK9n0NVIQqX
	 QjvwRbfnukEQxS0zMaA+zonOFbSrd21sM/VSBGFRHhsP3uKos1nW57HEYYWEQGUsCm
	 OFeJxdALeUIr4szbHyimLEE1XDcj94TgXdBNa+OoHKumR/30NF7soXLugFqW9Q8Bng
	 9RijcSlYxTQlCg2UGTGOCQTWSarbpbw2Ywkrw9EJro1EgWH6tzfZHpVmlzqrnTWRDz
	 1+KsRNAV3y2SmKyN4/KY1sNBOTKuqWrX0Iqvwi38MCQdCfzbagreFxpPnVUDgz5R6s
	 tE3Rl08hzhu8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8725C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336971368.7747.13127663680874999818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2277b5ba532a05461b02d51de1e5e7efbc2273c3182e670bd7dcde2b84e8b800
Date: Mon, 06 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783369713
