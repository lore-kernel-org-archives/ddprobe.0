Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9142746C
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749950994; cv=none; b=gy7q7NeCL2lImqZrLuYL3CWnIpv99BtFYQp4t7xl1H8zt6hWCOPxSKA/EJRupsyTbGEZUZlwauoSt3dQhWYB5r8oBsyUfKNOhfwPilVIv3IQ9vHpVVojtcsKjjzkA2rVNih2mQ+jhDflJCMupnnp3albuX9Qgc2Z3CfZl6hlWog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749950994; c=relaxed/simple;
	bh=Nf9fudkyWTer2Zt6XWLzsnu1fkJY2hRNGakVi5/xV1Y=;
	h=To:Subject:From:Message-Id:Date; b=sWwgSpwFR8pT4H4R5CRFsFEHCVWUsJTncHkof7cGvsMpKzm53xPfKowKQUi+4oSV8GH2ipf/i8y3YaGAaKBijZ57mTa3fDum3L9sJizQr54quxrISizn4qldTI2sI7vsnp1M8wUTsTk/C35yVfx1FXi/UGrzDQZwiUW86kEt1bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chQR+4TH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chQR+4TH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E23C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749950993;
	bh=Nf9fudkyWTer2Zt6XWLzsnu1fkJY2hRNGakVi5/xV1Y=;
	h=To:Subject:From:Date:From;
	b=chQR+4THiIHkxLrRBBCKqc7Dk4an8YYm9fi1qXe1aZQpmYbcFBVlMod6RYiTcYaav
	 gNw4lkDeVTfSSlwaj3jNnDIY1HnIy/OKxuSzrCyn0thU+mEH8Jru0dYNTkQVHodI6O
	 Oqg9h5dVzDmPE5gCZ1FMQCAsdOhyPjFZkRd45svy3Z+4GllqaVD1/HGTV9kuLNUb8Y
	 lZo3qTqsHyZeX0whVmCcULS/A0VTEuRmeOn+nLHO223v6hbz7fmIjrXpktVxbeQWqZ
	 Q2XQM3noWxlOuisgntTWQiQMdWQy1kD4mB+wHkG+SfSd6Hn4yTCDdjzL5OTQ1p3e6l
	 FRJJod7ntsJgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB92C7114A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995099357.15862.3406098896152673929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3404771546def47f0e536cea4328a243622ee5b181b30c09d4ec9d5bf84c03a0
Date: Sun, 15 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749950993
