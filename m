Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6F2524AF
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712643496; cv=none; b=diEfXFZi7aoDTmYj30kAdOjs/wFZdntcoMKQvplTbM1fr/y1dztgx6KxCScL/EETeuhkigTAWsPTlVIkIyO8ZCEW/nJCT1MgS6hOt/rprN3xQ5sH+iESSwTD1RovNTyGDSpKZNNwuiKz1B0rmHfJqHX9BhTmLN4C5Bgvjxdq7Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712643496; c=relaxed/simple;
	bh=V0YwDtTSwxdefKSHPSqE7IwLDvgvtrZOtHMIqUUjUU0=;
	h=To:Subject:From:Message-Id:Date; b=Tdp8dyx4tnGMjwvqlgmtM74fhBBbkU3tFGCFtAS2Lii78ccCJTHcUvXhSFfVREj8j+QROeh2IA5xhrvXuhCQWhwKnB9eY43Y98IGr6yAPExiKmYrUsBFClYPZv6gPC5hriEcnOyc5wisgAJ51L4bbg/rbBHYUIXJ9epDD4wwG9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aA/7mEGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aA/7mEGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77C9FC433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712643496;
	bh=V0YwDtTSwxdefKSHPSqE7IwLDvgvtrZOtHMIqUUjUU0=;
	h=To:Subject:From:Date:From;
	b=aA/7mEGGamVawwOIrjmWUr3iuCVseW946+OVR8xxgaYL66EOIJEd9ApKfjoKaozH7
	 p8NbFdCiExF/DLVEilABRGm5MyVgtwhUSOVgh2tZFQlj2FhmDKg8bj2JSWYYHsOEBC
	 DOwOwfNW+APba2WkkBMZi0F/DxemXOHaOjkdn/pNjsmkSAY2ef9SZv+05KKQaoQJbB
	 Kz9+MrXESi5o/XeBX+AfSRB6gJHk9zvCy03RzjurD2cE0VJ4JwLnKIqnTTauNhwq2A
	 fSugTAMT0xTArCnYcFK2Po85Akzo5/fIv0Ps26k6FzifGbHH+wyvmHo9nADasJhZwA
	 zPHhs4i9nbTEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65CA1C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171264349640.26657.15057329321353824815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214179d45e738de4e3fb68045e9de059f793c9d1d4c2c5720c932210eaba8da6
Date: Tue, 09 Apr 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712643496
