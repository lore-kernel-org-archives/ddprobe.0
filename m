Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046CA4086A
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770593034; cv=none; b=PU3IKy2ZzR0JFvDyoXu2Fo6RahWIVhJHoNb0/Cn1woUX0EYO3O3lss30YMW5nelE0fRJ0JAXoWcFGHb1Th2iuW4M+ee7F7laGbNkvfdSgjMaBcu68/Bqw4m9Cwb/KNA5jeEaEycTw+O03fED2zB+ttKlH16vxFM7yIcnACkaovc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770593034; c=relaxed/simple;
	bh=76PHkpCdRi9w+GeIk76MipVMA+LBaveOr1uNLfImreI=;
	h=To:Subject:From:Message-Id:Date; b=joPDacxKMaGZgIgQ0vMYl2GXkZn/8qjRhofv13wUJ1Sax0Jy6EvyEiO4zxfh7kxPS1pCTpg6wEQMLgXu9ppcjCfNeMNVMSDmcxn7sHlObIK5li+QxTDyeHJuJT0HHOfvr+JKfObSMORzHUqWMdxcHg7XbeHHhrKHGRjbCoQNFIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXLwRzKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXLwRzKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A397CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770593033;
	bh=76PHkpCdRi9w+GeIk76MipVMA+LBaveOr1uNLfImreI=;
	h=To:Subject:From:Date:From;
	b=eXLwRzKCeDP4IOEiXk0X7Isiz3bq498SULzAo/m+OGqy3/IKpS6hwG2mwnZozcxCx
	 rQ5AaRLKYD4UmY9UY9h1NlbQRuVohHzoYGE6D7+HaSW9UtjAKzKtx6Y9xNAI52BAKf
	 IqGOFiNUWueOS/LnCKsExsi1/Tz2WBHOLCqHeiMr4sGd7Ypx7WPHcspOk0vAoVc9wd
	 9jRROIk0FPOPlfVzbkEIJUfwZTnXpCBsH9SAv6Y6YrOHPVkTrJ7mwTNrnMYDIW1qhO
	 HJXFWP4v5as1mROWmzw+QS743Pd3W5NDuhMtEcm/Jw/jCseshWmSaERK9R00mE9Zi5
	 V+efmrF5nYaSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D6DEF06F8
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059303358.7233.14428052351672273724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f42404c7b2da69ce24fe96a20e24a1fcf18e7b6ddd24ef64e609890538057b
Date: Sun, 08 Feb 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770593033
