Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5007533CEBD
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792374034; cv=none; b=DRrF7UcUbs+FbvHp2p30TRYSrh1mwDu0zlMP1lAHp7EgAD6KbDXDxXr25CfKAKdm3rGCj5czQtBo8pt49OqezjIe4e+hFK6GMtywohiSFMMXfVRlkMnYfJgzaZKTN/PdUxG91bCbHAz0JK7+onZjNgJihunAPx2gUYyIcQlOmhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792374034; c=relaxed/simple;
	bh=sPh8gxi+72Pr0YbEE4+FXUyuR4an4QyxKxygi+UGnFk=;
	h=To:Subject:From:Message-Id:Date; b=TtS9yP2OD8VaddXgZMiERur3ABxDtC3i2cxIZTrr6NqvgMUAhd3/mnKP9SkQlvhghpbW93RrHa+OlMY8j5PW1/Qe6N6gSis1N//PxAjfNXlW57hfIv5hVOK4ZeFWF2hdkikYotw2tlXS/FmZffp4nokXYkd9MICGqaR6qhSZtbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAXUpBfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAXUpBfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D060AC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792374033;
	bh=sPh8gxi+72Pr0YbEE4+FXUyuR4an4QyxKxygi+UGnFk=;
	h=To:Subject:From:Date:From;
	b=LAXUpBfm7D+Ezj0i3jjGY91kll+GeWvwe36XoSmrAWz/9Iel2NGjlMwT2+2aG3DcN
	 hgHRUBZAuR47JFuoI8Pn6d1M9NRmrzfA4hkvga9nvJQBY2i7qkHTW/ScmFZ37J0131
	 jmkfNAugaCNZoXloz4F/DlsBJPWZe4dWBbktgEEbaTcQ19QbcmvdmL1jo7aY5WPgsg
	 T+YJ/bVjqqkzOHb4471g8WxTu/9pzwk9USBwhrpOotwX4QwYAryb1ucdTW9/FXTHg4
	 Lm9MPhWqloit16MNsrtyy/vAY2HM58eTMSqkl78SKRXj59OFDUMdUa3R3u7MYxnddx
	 DhKio99ujBDNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC947CCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179237403368.24369.16056381288169961786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb6dc2c31ee5aa1ae7f1291eedcb9b8f64b23a91e1264e652fa2abf25c8dc67
Date: Mon, 19 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792374033
