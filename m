Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349B52101A0
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746004794; cv=none; b=iiTdcor8PwYCifNvP8ZvncH4dYnouSc0R+gnk7BaZu1a5mktvY6Ji5KeFjYxp2S99e3nNXQR1/3tLDH1jLKRBqe2OdWIm7zIjCllvjL9ZWbmK4MJOaPbItJqhpR04Ua4FQulL8hKYnq4W6aTs/nl1x61kcGbNmMtm2pdJYesuvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746004794; c=relaxed/simple;
	bh=r3KfctdyPsrvAIRmz7SOnlIZ0+2rWmRKgRmovIqdmDQ=;
	h=To:Subject:From:Message-Id:Date; b=Ihg+VuOcyxVkJT4ee/MlvvViGApULrVTJ+Ar/QzPkc93kRvPkYsSmXxCVJgTa7BJAEC/eyzZ6THXwxz2vma7GweCOjhrPDR0cVqdXrC/pAyCrwGmgdPtyYJT0zz/tOUhkgJrunVblGUiGWpbKMSiML2wie72FjFafOaalAhlUWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utgePtg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utgePtg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F26C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746004793;
	bh=r3KfctdyPsrvAIRmz7SOnlIZ0+2rWmRKgRmovIqdmDQ=;
	h=To:Subject:From:Date:From;
	b=utgePtg0ram2fN+Hl59zx1FoSiZrNVNVVw9gnN8Q+dXUw5MfKaeqPG6kSsuntyz6i
	 29ftcUCNvIlPxE0k0223gXk9xNbISeqadZAszliFv7ZpNW9bWVFK2jqloIeO4TIZ71
	 QStWblMRzuoXqbci0Hh4YqOywNS7U3B7pineF4JGbSnv1wlRrZegEkpTZxVGYQEUCl
	 k0VT/Q3tkQisjxnGLjtgb4beAPyMV/WEM6jOgjyJe1nOFdLKMKcEDjzdm9tDeJ/Kld
	 fasOyLz8OMo0wvA2CAa28TkYn7YEUqNGOE9kDPRv6KyOK6ltREr8lLbGsRDmgymzTQ
	 E8X//o0XEyI9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E582C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174600479357.8964.2992408606122442120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d52d7107c18c6ea4d9899091d6b99567759c8f813675dd357a56459f536336
Date: Wed, 30 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746004793
