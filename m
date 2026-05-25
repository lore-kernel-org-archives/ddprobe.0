Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BAC146588
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779739954; cv=none; b=n8We5TrRgA3WFABS2QwrSjsoaB71gdfyIia01XOeG4OQN71PBRva0PMOcwGAX0bIhs3BwzqRUUgvnnLEH3w6uIyUrA41Ic+5X//pZqU5QVJ4osooWoz63mTgox5b2LHiCeKLMzzaOLiDDhZQ3+ao/RbuBFBasw4nrph8HE794WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779739954; c=relaxed/simple;
	bh=w1VeLDZOopToslLjI3O2QNIQedvD8sYW9QG+BjeAvnY=;
	h=To:Subject:From:Message-Id:Date; b=NF4h5r/9txlfbD8BGWWU5xSFb9dZGbccnoIBJWTuw18saNIwJC11yuOTB39pJdg7tjgHzkRVeH0QMz90JvH80Y16enyxfiWnyaFeDHYmMUHZXEkgXXghEbTxcXaP0JQDF65czGTZ4rWlg19ERv9b7FzPT9dR1kiXwCTTsJ2rJV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1QPvNBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1QPvNBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2086C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779739953;
	bh=w1VeLDZOopToslLjI3O2QNIQedvD8sYW9QG+BjeAvnY=;
	h=To:Subject:From:Date:From;
	b=h1QPvNBjCc3lGcOtFqbB6rrFK3EevOErup47cAnsiWo2AQ6n697tvJKf4gHvMTNst
	 tFrw4Mm6oHgvvVz4GMU8T3pFGUFaXucWCx9ugIqqmo0f6kJtFVYCh5O765a+o4H2Mc
	 Aj7YOBadHPJN5eFT9ZiPL8J5jQ4nvSKJaI5rkEVLGb+iFicdZxdKf/3jfffWEs0AhL
	 TSjX1KxCPjwXAQtnNLd9WAEoE/75BQWAOXq9GxWD+0S0sFadr318pA7tKmj1Rqy31j
	 qpTcxFbM8X3yqoLuX9JDrq+DBkIqxlU0csZsbf3+LER3C4DSud+GX8tFmpXl8ZvdPw
	 sx5P8u6NjIZJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F5ACD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973995368.16100.13919687224028956759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce641b5a6d6c935afccd301a2f75522577460a89db34eb35c4ff1eff2182f880
Date: Mon, 25 May 2026 20:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779739953
