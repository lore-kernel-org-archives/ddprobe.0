Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FFB5581E9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788959434; cv=none; b=dGvMxAnm442IAVftzoHehBcY4MFaQ3IzI1Lddpcgdb8mRVTt3aOPH91/4uBv5+qAgGjzPJel7Z72zheSqrUbiiGo/Am4+ljasFATCtYopnS3arQHL+YEFtRRf0/5y4oNxR17flgOrTAcpR6TfEbvgvb/Wnpyji8tKdrf6YnphdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788959434; c=relaxed/simple;
	bh=R/NQ9HNeJMNrmewx53vrgtkHISjqnD12BNQ4ZRiT8rs=;
	h=To:Subject:From:Message-Id:Date; b=P+OhLdt4sPkp/dl6yf16g7jQe9IqmnJere/tjC26yE9luDIdRdRJh06gqDV43XIEu4TU4LX66sfYpkUp0NFiA/bxBUOhLX6N4z1D8DA6QkO7lbUaFPOuC9NDZb+bHPetY+Wehiy6yR0vij1o13QXqs8Zfdp4y1tRLMsCs62cerI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Amd52c+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Amd52c+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B63C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788959433;
	bh=R/NQ9HNeJMNrmewx53vrgtkHISjqnD12BNQ4ZRiT8rs=;
	h=To:Subject:From:Date:From;
	b=Amd52c+wZ7FkRYjXpRCOuVZ7bRYKrGUAZkTvO2EeHIkajcDybEEkSe1F/J/qqRTZL
	 ZFwhiMvvEW5RRXO7FBiuHIa7wk+xdKKVLSBGf1CggYtSASbu5pECl1sqxqsq6/NJ5n
	 m0SQ7IqgokAx0EEDwwYv4Xo7TaoZvjxcOsh6p1xZxVdcORU6OmX47ilQZ5ksTGvoyC
	 aHAP7gc/QUCrXl1jkW2NqieyLg9jQImu71TpNZ0WlOhEt3auhNBz2b5uA3KixC6+VB
	 YDq+MkTC0YgIQe4UFzoQsF7ghkmzBw4FK9jqN8Ivqk4qDTzf59QuMN+BXXhNmotJDm
	 0PcalRqt+TkCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD87C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178895943369.311.2129153342539891311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b3e62900985f834d18ed215f97244c15877babca1176ab498ae79bf9b5b930
Date: Wed, 09 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788959433
