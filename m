Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B62D22331B
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753912195; cv=none; b=Yh6vw6dBw31TJxPMc7NqV95hgmTcfL3d+bqWRV4dZ5QMqZLgX4IU3xBxXZXaZ512LrfP5aXsEu3+ANU87l9KRAXd6W/BTdWAP3SUu6Voxi7PDsVUKeK/GEaP3BGTfXUX8Tn8kSav37K3K0sRuTxzCah+XbJ//v5f84geY16kD4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753912195; c=relaxed/simple;
	bh=opXDkxqZGaPCOinZgPF8HkMVX2z8gtnY40qaPM6bJGg=;
	h=To:Subject:From:Message-Id:Date; b=hJxbiqhfVvIhVdEl1plyTzCXwtsnMx4DScOcns/NtU0mEYk2+xcn51iIW04UWUVWjUPnQSRBF67bFhD63RSeBBo/4eIU8mqnA6PrXVu5SqPDEqZh6NKLsJDj4YIeeQeCtvmuKBsq9yMKG/OXcqMGnOr3IeHm0c0tWwPNQO2wQEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmcRfXt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmcRfXt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4015C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753912193;
	bh=opXDkxqZGaPCOinZgPF8HkMVX2z8gtnY40qaPM6bJGg=;
	h=To:Subject:From:Date:From;
	b=tmcRfXt+VSPAuaMka/3nxjGb0YZ9QaBU5NRLByjq6NxvsQvEndUmTtx6JW/RruTvS
	 jpqUx8KNeCjn+0RZMwTLr7YrEpqkg9UUZdhFJmtm7O5QTDfzsnvkM74zcwleFYPWwj
	 d+a+nwqMRnzkgOS94UwWxRHgdQlWOz+nW1iVoQnTQ8EkhYZd7TgxyiCeYwbf3TblHB
	 QFMG0r3FVVL9fCth8ePpLkf6rlx6Xvtdwdw+e25ZzzR2nS4yK1pa/pI2TYM0J6nESf
	 3iUOiA2VvPVPIUfKjFUA5WxztPy0xKM+8FJyCZo91TuM8hqSH8oBecLYJ10mMC5zyX
	 IKQAmgwBGxS8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92986C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391219359.28208.4329255664663865569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a013ef00e072d7adb57a480685f172c27f543b6e37cf89cc6a6904d06cb95f8
Date: Wed, 30 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753912193
