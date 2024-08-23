Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F2713B58D
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724396154; cv=none; b=u978wDFPkJIePmDU2P/MVUjypX1D64T+YWgjaNHGkpV4gDH6Zt3XlIA8FMF42TJWJVivUYjOl9iv9Ogbdun+YmI3Fo+gfm+52xsDnDSbmHKoSlw+Y5Kq2qF7TN1mHHNbX0TVOC15QoyXYWwYoUVs9hrbUorzeUwfxWckkqmCtGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724396154; c=relaxed/simple;
	bh=BBFPKommsjuzW9BafQml4F57XxEKXkcTH1E8wtgyw2E=;
	h=To:Subject:From:Message-Id:Date; b=hOuwulATaIzu3EB6lIivJKwOUp1Awn9NjOpkFuV7I+t4C6yOHQML3wR8o/rgAAM3aFgu14zCyWTzj46YCfJ0uJ1Pz8Gh4LdqeIorw0oyRt/KuRWuUReE0TBLrEItDolGLM6SItTmNz0YGA2upgexJJ3io6RFeCcEgmKVkSA1pXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8UpgmiQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8UpgmiQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE12C4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724396153;
	bh=BBFPKommsjuzW9BafQml4F57XxEKXkcTH1E8wtgyw2E=;
	h=To:Subject:From:Date:From;
	b=b8UpgmiQiXdqE/CetcCawSPOcjeB6rG++sK2vsKE0hyNGD1E/3jzTwwS+6ENUBGLv
	 1oNrVg7YK/eV+j46lj9NT/LQy0suILCEUJ/19EIaSZ89Hyop8XcJsP/V1USpnlnicY
	 4rEMjhRATJiwFJLO+ctO0Q3UvuwPGrdaoJPbQqvMGkqtG/9WRmvqsCBrluutOCx3CI
	 aBeq756dLr7aFAiJvZSrLIAdAggjVE26zAHB7UmlyTi7cFDKfoJzvvYjHy06BR6eiD
	 bKVbbeo77wUf27ILGQKNKGYKgK0GQ60CLPWDju9vtbO422WC7vmHKXt4Ittzy0vNFi
	 TfCU+VrbexzHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974C0C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172439615361.13456.115881811963158510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10c033797e08e1e1d30d39f16fcbd9002ad27cbdbcc1826ab07f645ebafc3e7
Date: Fri, 23 Aug 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724396153
