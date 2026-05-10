Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFD23537CD
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778391634; cv=none; b=nCW15Roqz/dzKobS0oN/FqFVOBsRIUaEaP10xYOuLmsFPl12yuNdf9NJYjiPFKYYTD/E707B5HB9ZuxKgVCKwkoWbkqc7xLb0ccZ6/J9vc4+TUAO3lKMgBaZbgEu1O0UPZ9cdUn5qErzVCivzo4InwyNB/uhKiJdA31GPgBuMug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778391634; c=relaxed/simple;
	bh=TgXhWU07+jw0MsJX3wdBPPMdIpE1ii2Oa/N6Y+Le00c=;
	h=To:Subject:From:Message-Id:Date; b=mCKPwW19dYI3G1jySKHibmjibCcF0oCgmgIvbUr7srKoCIvCmBKr5YblNU2VSGWhvEbWSuG5mHV/tAkX6gU39pp9RMMK3WbgBxZ4uzPNOMVmk6vMBtj8UODKhniI0WLxptHCzCsxvH1QD9SRHyPTXaH9jFpQB0ToDFm8SSKsNik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3bvQUhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3bvQUhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AA8C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778391633;
	bh=TgXhWU07+jw0MsJX3wdBPPMdIpE1ii2Oa/N6Y+Le00c=;
	h=To:Subject:From:Date:From;
	b=W3bvQUhmyivjDZTUvp/HtEbV7OkybiZS0PxTevsjFM851zbsGt3pBDQAs5WSclIEQ
	 Hq106RNDE7icoUQ94aaNxUDBsigK5T/tpHdmf24RU6G+EHxjW5+hKE22YB/n2fkO4v
	 sk1xzNTeK0o5rZn4XI4AXMP9Q3Uj/AF15aHuBeI99saJCxqkOevvSdTYPrr5qimAfy
	 7dkkhzBJs0A6/QZ5Q4cytDnL/EzGOY8EHky4TbFIBQiZcR4xkyaqnkLHVj6umCoi25
	 ErmcxTXoQZ7cOFLQVdJ/UrFyVgl19+1F+oTf+chDshUAq7bxNZ9Njy54DPS0Q5h62c
	 Pzg43pkxYh7Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12B1CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177839163369.21626.5162295804433309674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be554488e97e8d86be0b72f3b7fce888ec2c4ab61481dfa60fc0418323b024e6
Date: Sun, 10 May 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778391633
