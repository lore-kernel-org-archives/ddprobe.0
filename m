Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300B7351C31
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777259254; cv=none; b=C2Ji9gbm//i+ZuOXJrjkqqxeTbRRmalgRugwtdjN1fgC8UcYnUimFwmz7Q1kPYaTu7IWiaEvcWDhY9byV/GBsVZPXppG0s8X15V6eN9MiRCqCLhyLFDb8vHV9oEDYvqO0ZxzaXCrvUGcJIWgrIOpY2AbbjLnmWnjVP/TC8BlC0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777259254; c=relaxed/simple;
	bh=fL3Fgjt9wCZBYhSYQiPbV3dQwGcsERWxa4+5BA+Asws=;
	h=To:Subject:From:Message-Id:Date; b=q6oa+NiIt9h0vvwBQm+mDXapqoIzxbdEftpLBSW3vE8kKSZDpDowYCiFJcGx9pCp7g8hKBX7OEXo4SGHu2rEAoesP5N20FdqPZUnUjsyIDKCuLcKFfcCUSPJV9QLMn8pxZC+agXMti2+mQAvYH4bAL00KRgsfS7Cab6tacBEcOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+BhAvr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+BhAvr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4018C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777259253;
	bh=fL3Fgjt9wCZBYhSYQiPbV3dQwGcsERWxa4+5BA+Asws=;
	h=To:Subject:From:Date:From;
	b=e+BhAvr9LL6bZC3JP7LLkFyVi2ZZQ0dNrG6jjDEXTSNlJo3jK1LkyIjeDC+WTYPd4
	 7f5rqSijdNz0xVcIr24HpDs92bfqVORPgqh/YdAriqbIW5vH468P6dE74z5ACf9ZEv
	 jzC3VZqQ8kuGZviow5TEUo98T8eVONsjuhqZ1LCpaw5OxNDGJipeVRasIWBiQibhON
	 jAhfg4BmSQDDWjY0MX6Ng+WC/ViT6AOBd2MHzq398tJITcY7ZSos3VOyW5pt9dLnjw
	 6IJumbxk5gF/iDAJAQEXg62TmSmn1BOiOfJWJuMOyrEspzeSB/HScdW9hqXbBltL3E
	 Kag+3R5MMGKHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3ECFF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725925368.19460.15018906014690470283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a0c61e0a75d0fc57872ebaea95f1365be4004aea28fb83e7100998aa1a76e93
Date: Mon, 27 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777259253
