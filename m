Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7921862
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787703634; cv=none; b=c5zeSejm/iDuqtWwKgqk43/Q9GxOKPiJV4iBiOFY6TRjCqdZaiple1CGByTg9egCNw2mphlMniwdqCHi8r6Tbeiw3F/ICy4eTVKtVh4s5iQcglvLxeV/Sg7E+iohSHNfy26PAOcPdXvRmJsd/FzuaW9LLVo+ynh/Xi/n3UuZ094=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787703634; c=relaxed/simple;
	bh=t1hwlIz/3gCpfLIH98vxd6pJPQdaGQOGiKaoh5Q3scA=;
	h=To:Subject:From:Message-Id:Date; b=DdORjko9DZqCJr3hmvac2BxAesn6SuHh0BPIkWp/IDsoZYnmS2kq8WstvhMyC2eQBh1qxadPSD5gyhilEC8u+8R7yjMqXwmrMmcf3Scd8M6ZzcFXHlimN/rJSXndemchpUPuZxQLK3IogYrhSYluCUQUOvsX4J0hSXDwhX7OQVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1ST3nQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1ST3nQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4DCC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787703633;
	bh=t1hwlIz/3gCpfLIH98vxd6pJPQdaGQOGiKaoh5Q3scA=;
	h=To:Subject:From:Date:From;
	b=N1ST3nQXqfkNl8HjKSBrjWY5EjZ016JIclzyuaxn9fYA7TYqtAq7JCz+6S5CxXI3e
	 MwQF4QOoZ858jHyceJ+I0XSucBqTQDckeDCo06Kkge2Hkta60XAu2zu+yo8d7+fXTG
	 A9yw2JqF/0uohTyziTuMTK0tJmzWiaLj5Hlv0ZViQm9Ypj7DlvTBipyCihqwUqzOIc
	 qCbtZGhWMwsBcX+3fhApZuE25zczeanErE9psDAIbUam+tjWhVcbnIRvRJnJuP6Ag0
	 JBBR8nyNH35EezF6UK4yzL8NE4DBYcECYkrih9hjXkwiIUn/tFJAvd2QhmJJF86bGJ
	 MhbEchGjphBdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BCEC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770363369.2080.11277967643495381500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e13b6f0f0a8c05159d741631158b09d5417840eae11147d0d31ee7c923c0c21
Date: Wed, 26 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787703633
