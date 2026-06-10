Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CA1198E91
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781057734; cv=none; b=tRGsWlQZxau9OHv6kUyfubAskRHOHybVbeETljJ0HIIjXp1y9BWcXKZO4Ibu32lVSxxQ087iDZXzks466DNc0VXejOotopmqfEJif9r2dJ7tJ49WDrTBHiyd6dzZAXei93SvvAOG7zVof4Gu0WSsZfkk8n9DlHFawOu/9G3Ay+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781057734; c=relaxed/simple;
	bh=bfBggMxWOk9w+Mwjx59SGQyCUDU3YJrue8N4jt55WsE=;
	h=To:Subject:From:Message-Id:Date; b=g705+oR1jFHUKd9Vn6gM7oFK3MU2HTPK7tZ3QJhqsDkdaDHjNhM5LlIqMKhph3s7UkqaCwy2tO1SZqpUPWGpz5zg/UnTDgZ1PTZo95YAx4wbbM3K0IwKDTWJ3LPxZi/f3sIZ72ACE7wb3KoX4bVaHW9ESM94AIZlR7iJRarsno8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAAYoRtb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAAYoRtb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FD4C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781057733;
	bh=bfBggMxWOk9w+Mwjx59SGQyCUDU3YJrue8N4jt55WsE=;
	h=To:Subject:From:Date:From;
	b=ZAAYoRtbbQIsZrdwX9bAcyVHfUFLObn/nmagEj7nQL2dnyL1bfonF5izFfXGkho1y
	 xff2FT7L3L21JFJ5hZ6auURdfKQA9Z8orED1WBGVHpXRmXACywho2eVuV19KyLjYTB
	 X9EfSm+RvUugYz3cQ4VBoXc2QwoQJsMpEn1q5X/4dmx2rU1QciSHAMDL1Je82mNNO1
	 sEQiM+DcbLprK9plI7z/X35YUS1ST3cHyH6BuKQuaCnrfGMb0KxTmZypFndg/OsCbX
	 Dv6E3NqoBCvBxpDOVBJXF5mQrngrIf1BPM3VNxRhJ7JoMffd+qA8xvUDLr3v33C7yF
	 ECaadppy4Jx4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB7ACD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178105773369.9183.10640222945831706545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c19cefeffddaf08f653f19012f5ce14dd28bf6823c357fa57d93fec478cc7958
Date: Wed, 10 Jun 2026 02:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781057733
