Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F95319995E
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784488714; cv=none; b=WCGDHJ8R8jI5oYo6aPCdcGvgnLJmulWqqQnCc+c943OyNbFMIFEnvJ9TTFVLhIWMWQLivVPGysEQWtmlVKcDa1vMWtMaZAc9ItJZREQW2jN3xC/zwR8BQidcvcAuvP0g/oOnc8CKZ4znN90cWZzxSOSwKFx3L3XsC6YWw1Tvxpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784488714; c=relaxed/simple;
	bh=/OnzcZm99k586/Hd8Pv7ENdecD5gY3GkfIccAvbSN4c=;
	h=To:Subject:From:Message-Id:Date; b=AeZLS9ojpTNfpeXQLU5ZZwRP6pEq++H/an/Zgfy83RmCG9GchMvFBwOx3uTy5RY3bkm5hr8JMlZiKT99vMeFj9CoU1Li/gBd/ah+X85borcCotjT5Nwse8VdF6FSDisltN7q5ekHjK7svD5Vd9/Iyb/JnzpJxgY90rJ5XEJZ6Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k65O67Ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k65O67Ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39C2C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784488713;
	bh=/OnzcZm99k586/Hd8Pv7ENdecD5gY3GkfIccAvbSN4c=;
	h=To:Subject:From:Date:From;
	b=k65O67UbMZe7F3AkC9yo4CTKgKUMPwtT3wwugxvwBjP0jxmL6iTY1C87WFY6MwBX8
	 eijEAjn5P5jDkqCBrji8Hh3elJx9O6V1r42zmlMbqm0jZt5Ix8Us8hmrErkq4l1nxx
	 utVQ6/5Tzhd8/N2NVfUSNrp6lesICPxmQ64M0QimtdejlnWvisZnMKDnaGFcvSqNze
	 37J1wpllPSaC9EuMWyt1yjZ2e6mTdNis/WUrgN5LMK38HjwBGXg6RYhRuN8y9O7w3m
	 RYHDRGwK96qICLpT+yWwy72JqMkHUKVwr1G8sksTN+fFC8mXBuauuz4SMoZW+3k4O7
	 xJ8h22PfMBJiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE846C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448871368.10985.3539574942371195249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c352a68cb8c522f5cbe48e9e17540a30444b183ba642f25e45a64dfa8b0ed13
Date: Sun, 19 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784488713
